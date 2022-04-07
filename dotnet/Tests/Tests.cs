using System.Diagnostics.CodeAnalysis;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.TrustRegistry.V1;
using System;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Common.V1;
using Xunit;
using Xunit.Abstractions;
using Trinsic;
using FluentAssertions;
using Google.Protobuf;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;
using FieldType = Trinsic.Services.VerifiableCredentials.Templates.V1.FieldType;
using JsonSerializer = System.Text.Json.JsonSerializer;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class Tests
{
#if DEBUG
    const string DefaultEndpoint = "localhost";
    const int DefaultPort = 5000;
    const bool DefaultUseTls = false;
#else
    private const string DefaultEndpoint = "staging-internal.trinsic.cloud";
    private const int DefaultPort = 443;
    private const bool DefaultUseTls = true;
#endif

    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServiceOptions _options;

    public Tests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;

        _options = new() {
            ServerEndpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? DefaultEndpoint,
            ServerPort = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : DefaultPort,
            ServerUseTls = bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var tls) ? tls : DefaultUseTls
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }

    private const string VaccinationCertificateUnsigned = "TestData/vaccination-certificate-unsigned.jsonld";
    private const string VaccinationCertificateFrame = "TestData/vaccination-certificate-frame.jsonld";

    [Fact(DisplayName = "Demo: wallet and credential sample")]
    public async Task TestWalletService() {
        // createAccountService() {
        var providerService = new ProviderService(_options.Clone());
        var accountService = new AccountService(_options.Clone());
        var (ecosystem, _) = providerService.CreateEcosystem(new());
        var ecosystemId = ecosystem.Id;
        // }

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        var allison = await accountService.SignInAsync(new() {EcosystemId = ecosystemId});
        var clinic = await accountService.SignInAsync(new() {EcosystemId = ecosystemId});
        var airline = await accountService.SignInAsync(new() {EcosystemId = ecosystemId});
        // }

        accountService.Options.AuthToken = clinic;
        var info = await accountService.GetInfoAsync();
        info.Should().NotBeNull();

        // createService() {
        var walletService = new WalletService(_options.CloneWithAuthToken(allison));
        var credentialsService = new CredentialsService(_options.CloneWithAuthToken(clinic));
        // }

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // issueCredential() {
        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        walletService.Options.AuthToken = credentialsService.Options.AuthToken = clinic;

        // Read the JSON credential data
        var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
        // Sign the credential using BBS+ signature scheme
        // issueCredentialSample() {
        var credential = await credentialsService.IssueCredentialAsync(new() {DocumentJson = credentialJson});
        _testOutputHelper.WriteLine($"Credential:\n{credential.SignedDocumentJson}");
        // }

        // storeAndRecallProfile {
        // Serialize auth token by exporting it to file
        File.WriteAllText("allison.txt", allison);
        // Create auth token from existing data
        allison = File.ReadAllText("allison.txt");
        // }

        // STORE CREDENTIAL
        // Allison stores the credential in her cloud wallet.
        // storeCredential() {
        // Set active profile to 'allison' so we can manage her cloud wallet
        walletService.Options.AuthToken = credentialsService.Options.AuthToken = allison;

        var insertItemResponse = await walletService.InsertItemAsync(new() {ItemJson = credential.SignedDocumentJson});
        var itemId = insertItemResponse.ItemId;
        var walletItems = await walletService.SearchAsync(new());
        _testOutputHelper.WriteLine($"Last wallet item:\n{walletItems.Items.Last()}");
        // }

        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        // shareCredential() {
        // We'll read the request frame from a file and communicate this with Allison
        walletService.Options.AuthToken = credentialsService.Options.AuthToken = allison;

        var proofRequestJson = await File.ReadAllTextAsync(VaccinationCertificateFrame);

        // Build a proof for the given request and the `itemId` we previously received
        // which points to the stored credential
        var credentialProof = await credentialsService.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = proofRequestJson
        });
        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ProofDocumentJson);
        // }


        // VERIFY CREDENTIAL
        // verifyCredential() {
        // The airline verifies the credential
        walletService.Options.AuthToken = credentialsService.Options.AuthToken = airline;

        // Check for valid signature
        var valid = await credentialsService.VerifyProofAsync(new() {
            ProofDocumentJson = credentialProof.ProofDocumentJson
        });
        _testOutputHelper.WriteLine($"Verification result: {valid.IsValid}");
        Assert.True(valid.IsValid);
        // }
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        // setup
        var providerService = new ProviderService(_options.Clone());
        var (_, authToken) = await providerService.CreateEcosystemAsync(new());
        var service = new TrustRegistryService(_options.CloneWithAuthToken(authToken));

        // register issuer
        var register = service.RegisterIssuerAsync(new() {
            DidUri = "did:example:test",
            GovernanceFrameworkUri = "https://example.com",
            CredentialTypeUri = "https://schema.org/Card"
        });
        await register;

        register.Should().NotBeNull();
        register.Status.Should().Be(TaskStatus.RanToCompletion);

        // register verifier
        register = service.RegisterVerifierAsync(new() {
            DidUri = "did:example:test",
            GovernanceFrameworkUri = "https://example.com",
            PresentationTypeUri = "https://schema.org/Card"
        });
        await register;

        register.Should().NotBeNull();
        register.Status.Should().Be(TaskStatus.RanToCompletion);

        // check issuer status
        var issuerStatus = await service.CheckIssuerStatusAsync(new() {
            DidUri = "did:example:test",
            GovernanceFrameworkUri = "https://example.com",
            CredentialTypeUri = "https://schema.org/Card"
        });

        issuerStatus.Should().NotBeNull();
        issuerStatus.Status.Should().Be(RegistrationStatus.Current);

        // check verifier status
        var verifierStatus = await service.CheckVerifierStatusAsync(new() {
            DidUri = "did:example:test",
            GovernanceFrameworkUri = "https://example.com",
            PresentationTypeUri = "https://schema.org/Card"
        });

        verifierStatus.Status.Should().Be(RegistrationStatus.Current);

        // search registry
        var searchResult = await service.SearchRegistryAsync(new());

        searchResult.Should().NotBeNull();
        searchResult.ItemsJson.Should().NotBeNull().And.NotBeEmpty();
    }

    [Fact(DisplayName = "Demo: ecosystem creation and listing")]
    public async Task EcosystemTests() {
        // setup
        var accountService = new AccountService(_options);
        var account = await accountService.SignInAsync(new());
        var service = new ProviderService(_options.CloneWithAuthToken(account));

        // test create ecosystem
        var (actualCreate, _) = await service.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
            Uri = "https://example.com"
        });

        actualCreate.Should().NotBeNull();
        actualCreate.Id.Should().NotBeNull();
        actualCreate.Id.Should().StartWith("urn:trinsic:ecosystems:");
    }

    [Fact]
    public async Task TestProtectUnprotectProfile() {
        // testSignInAndGetInfo() {
        var myAccountService = new AccountService(_options);

        var myProfile = await myAccountService.SignInAsync(new());
        myAccountService.Options.AuthToken = myProfile;
        var output = await myAccountService.GetInfoAsync();
        Assert.NotNull(output);
        // }

        var securityCode = "1234";
        var myProtectedProfile = AccountService.Protect(myProfile, securityCode);

        myAccountService.Options.AuthToken = myProtectedProfile;
        await Assert.ThrowsAsync<Exception>(myAccountService.GetInfoAsync);

        var myUnprotectedProfile = AccountService.Unprotect(myProtectedProfile, securityCode);
        myAccountService.Options.AuthToken = myUnprotectedProfile;
        Assert.NotNull(await myAccountService.GetInfoAsync());
        Assert.NotNull(myAccountService.GetInfo());
    }

    [Fact]
    public async Task TestInvitationIdSet() {
        var providerService = new ProviderService(_options.Clone());
        _ = await providerService.CreateEcosystemAsync(new());

        var invitationResponse = await providerService.InviteParticipantAsync(new());

        invitationResponse.Should().NotBeNull();
        invitationResponse.InvitationCode.Should().NotBeEmpty();

        await Assert.ThrowsAsync<Exception>(async () => await providerService.InvitationStatusAsync(new()));
    }

    [Fact(Skip = "Ecosystem support not complete yet")]
    public async Task TestInviteParticipant() {
        var myAccountService = new AccountService(_options);
        var myProfile = await myAccountService.SignInAsync(new());
        var myProviderService = new ProviderService(_options.CloneWithAuthToken(myProfile));
        var invite = new InviteRequest {Description = "Test invitation"};
        var response = await myProviderService.InviteParticipantAsync(invite);
        Assert.NotNull(response);

        var statusResponse = await myProviderService.InvitationStatusAsync(new() {InvitationId = response.InvitationId});
        Assert.NotNull(statusResponse);
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse() {
        var myAccountService = new AccountService(_options);
        var myProfile = await myAccountService.SignInAsync(new());
        var myTrustRegistryService = new TrustRegistryService(_options.CloneWithAuthToken(myProfile));
        await Assert.ThrowsAsync<Exception>(async () => await myTrustRegistryService.RegisterGovernanceFrameworkAsync(new () {
            GovernanceFramework = new() {
                Description = "invalid uri",
                GovernanceFrameworkUri = ""
            }
        }));
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var providerService = new ProviderService(_options.Clone());
        var (_, authToken) = await providerService.CreateEcosystemAsync(new());
        var options = _options.CloneWithAuthToken(authToken);

        var templateService = new TemplateService(options);
        var credentialService = new CredentialsService(options);
        var walletService = new WalletService(options);

        // create example template
        // createTemplate() {
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "An Example Credential",
            AllowAdditionalFields = false
        };
        templateRequest.Fields.Add("firstName", new() {Description = "Given name"});
        templateRequest.Fields.Add("lastName", new());
        templateRequest.Fields.Add("age", new() {Type = FieldType.Number, Optional = true});

        var template = await templateService.CreateAsync(templateRequest);
        // }

        template.Should().NotBeNull();
        template.Data.Should().NotBeNull();
        template.Data.Id.Should().NotBeNull();
        template.Data.SchemaUri.Should().NotBeNull();

        // issue credential from this template
        var values = JsonSerializer.Serialize(new {
            firstName = "Jane",
            lastName = "Doe",
            age = "42"
        });

        // issueFromTemplate() {
        var credentialJson = await credentialService.IssueFromTemplateAsync(new() {
            TemplateId = template.Data.Id,
            ValuesJson = values
        });
        // }

        credentialJson.Should().NotBeNull();

        var jsonDocument = JsonDocument.Parse(credentialJson.DocumentJson).RootElement.EnumerateObject();

        jsonDocument.Should().Contain(x => x.Name == "id");
        jsonDocument.Should().Contain(x => x.Name == "credentialSubject");

        var insertItemResponse = await walletService.InsertItemAsync(new() {ItemJson = credentialJson.DocumentJson});
        var itemId = insertItemResponse.ItemId;

        var frame = new JObject {
            {"@context", "https://www.w3.org/2018/credentials/v1"},
            {"type", new JArray("VerifiableCredential")}
        };

        // Create proof from input document
        // createProof() {
        var proof = await credentialService.CreateProofAsync(new() {
            DocumentJson = credentialJson.DocumentJson,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });
        // }
        // verifyProof() {
        var valid = await credentialService.VerifyProofAsync(new() {ProofDocumentJson = proof.ProofDocumentJson});
        // }
        valid.IsValid.Should().BeTrue();

        // Create proof from item id
        var proof2 = await credentialService.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });

        var valid2 = await credentialService.VerifyProofAsync(new() {ProofDocumentJson = proof2.ProofDocumentJson});

        valid2.IsValid.Should().BeTrue();
    }

    [Fact(DisplayName = "Decode base64 url encoded string")]
    public void DecodeBase64UrlString() {
        const string encoded = "CiVodHRwczovL3RyaW5zaWMuaWQvc2VjdXJpdHkvdjEvb2Jlcm9uEnIKKnVybjp0cmluc2ljOndhbGxldHM6Vzl1dG9pVmhDZHp2RXJZRGVyOGlrRxIkODBkMTVlYTYtMTIxOS00MGZmLWE4NTQtZGI1NmZhOTlmNjMwIh51cm46dHJpbnNpYzplY29zeXN0ZW1zOmRlZmF1bHQaMJRXhevRbornRpA-HJ86WaTLGmQlOuoXSnDT_W2O3u3bV5rS5nKpgrfGKFEbRtIgjyIA";

        var actual = Base64Url.Decode(encoded);

        actual.Should().NotBeEmpty();
    }
}
