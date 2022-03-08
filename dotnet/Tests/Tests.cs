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
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;
using FieldType = Trinsic.Services.VerifiableCredentials.Templates.V1.FieldType;
using JsonSerializer = System.Text.Json.JsonSerializer;
#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class Tests
{
    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServiceOptions _options;

    public Tests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;

        _options = new() {
            ServerEndpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? "localhost",
            ServerPort = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : 5000,
            ServerUseTls = !bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var tls) || tls 
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }

    private const string VaccinationCertificateUnsigned = "TestData/vaccination-certificate-unsigned.jsonld";
    private const string VaccinationCertificateFrame = "TestData/vaccination-certificate-frame.jsonld";

    [Fact(DisplayName = "Demo: wallet and credential sample")]
    public async Task TestWalletService() {
        // createAccountService() {
        var providerService = new ProviderService(_options);
        var accountService = new AccountService(_options);

        var ecosystem = providerService.CreateEcosystem(new() {Name = $"test-sdk-{Guid.NewGuid():N}"});
        var ecosystemId = ecosystem.Ecosystem.Id;
        // }

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        var allison = await accountService.SignInAsync(new SignInRequest {EcosystemId = ecosystemId});
        var clinic = await accountService.SignInAsync(new SignInRequest {EcosystemId = ecosystemId});
        var airline = await accountService.SignInAsync(new SignInRequest {EcosystemId = ecosystemId});
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

        var itemId = await walletService.InsertItemAsync(new() {ItemJson = credential.SignedDocumentJson});
        var walletItems = await walletService.SearchAsync();
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
        _testOutputHelper.WriteLine($"Verification result: {valid}");
        Assert.True(valid);
        // }
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        // setup
        var accountService = new AccountService(_options);
        var account = await accountService.SignInAsync(new());
        var service = new TrustRegistryService(_options.CloneWithAuthToken(account));

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

        issuerStatus.Should().Be(RegistrationStatus.Current);

        // check verifier status
        var verifierStatus = await service.CheckVerifierStatusAsync(new() {
            DidUri = "did:example:test",
            GovernanceFrameworkUri = "https://example.com",
            PresentationTypeUri = "https://schema.org/Card"
        });

        verifierStatus.Should().Be(RegistrationStatus.Current);

        // search registry
        var searchResult = await service.SearchRegistryAsync();

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
        var actualCreate = await service.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
            Name = $"test-sdk-{Guid.NewGuid():N}",
            Uri = "https://example.com"
        });

        actualCreate.Should().NotBeNull();
        actualCreate.Ecosystem.Id.Should().NotBeNull();
        actualCreate.Ecosystem.Id.Should().StartWith("urn:trinsic:ecosystems:");
    }

    [Fact]
    public async Task TestProtectUnprotectProfile() {
        var myAccountService = new AccountService(_options);

        var myProfile = await myAccountService.SignInAsync(new());
        myAccountService.Options.AuthToken = myProfile;
        var output = await myAccountService.GetInfoAsync();
        Assert.NotNull(output);

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
        var accountService = new AccountService(_options);
        var profile = await accountService.SignInAsync(new());
        var providerService = new ProviderService(_options.CloneWithAuthToken(profile));

        var invitationResponse = await providerService.InviteParticipantAsync(new());

        invitationResponse.Should().NotBeNull();
        invitationResponse.InvitationCode.Should().NotBeEmpty();

        await Assert.ThrowsAsync<Exception>(async () => await providerService.InvitationStatusAsync(new InvitationStatusRequest()));
    }

    [Fact(Skip = "Ecosystem support not complete yet")]
    public async Task TestInviteParticipant() {
        var myAccountService = new AccountService(_options);
        var myProfile = await myAccountService.SignInAsync(new());
        var myProviderService = new ProviderService(_options.CloneWithAuthToken(myProfile));
        var invite = new InviteRequest {Description = "Test invitation"};
        var response = await myProviderService.InviteParticipantAsync(invite);
        Assert.NotNull(response);

        var statusResponse = await myProviderService.InvitationStatusAsync(new InvitationStatusRequest {InvitationId = response.InvitationId});
        Assert.NotNull(statusResponse);
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse() {
        var myAccountService = new AccountService(_options);
        var myProfile = await myAccountService.SignInAsync(new());
        var myTrustRegistryService = new TrustRegistryService(_options.CloneWithAuthToken(myProfile));
        await Assert.ThrowsAsync<Exception>(async () => await myTrustRegistryService.RegisterGovernanceFrameworkAsync("", "invalid uri"));
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var accountService = new AccountService(_options);
        var profile = await accountService.SignInAsync(new());
        var options = _options.CloneWithAuthToken(profile);

        var templateService = new TemplateService(options);
        var credentialService = new CredentialsService(options);
        var walletService = new WalletService(options);

        // create example template
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "An Example Credential",
            AllowAdditionalFields = false
        };
        templateRequest.Fields.Add("firstName", new() {Description = "Given name"});
        templateRequest.Fields.Add("lastName", new());
        templateRequest.Fields.Add("age", new() {Type = FieldType.Number, Optional = true});

        var template = await templateService.CreateAsync(templateRequest);

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

        var credentialJson = await credentialService.IssueFromTemplateAsync(new() {
            TemplateId = template.Data.Id,
            ValuesJson = values
        });

        credentialJson.Should().NotBeNull();

        var jsonDocument = JsonDocument.Parse(credentialJson).RootElement.EnumerateObject();

        jsonDocument.Should().Contain(x => x.Name == "id");
        jsonDocument.Should().Contain(x => x.Name == "credentialSubject");

        var itemId = await walletService.InsertItemAsync(new() {ItemJson = credentialJson});

        var frame = new JObject {
            {"@context", "https://www.w3.org/2018/credentials/v1"},
            {"type", new JArray("VerifiableCredential")}
        };

        // Create proof from input document
        {
            var proof = await credentialService.CreateProofAsync(new() {
                DocumentJson = credentialJson,
                RevealDocumentJson = frame.ToString(Formatting.None)
            });

            var valid = await credentialService.VerifyProofAsync(new() {ProofDocumentJson = proof.ProofDocumentJson});

            valid.Should().BeTrue();
        }

        // Create proof from item id
        {
            var proof = await credentialService.CreateProofAsync(new() {
                ItemId = itemId,
                RevealDocumentJson = frame.ToString(Formatting.None)
            });

            var valid = await credentialService.VerifyProofAsync(new() {ProofDocumentJson = proof.ProofDocumentJson});

            valid.Should().BeTrue();
        }
    }
}

public static class Extensions
{
    public static ServiceOptions CloneWithAuthToken(this ServiceOptions options, string authToken) {
        var cloned = options.Clone();
        cloned.AuthToken = authToken;
        return cloned;
    }
}