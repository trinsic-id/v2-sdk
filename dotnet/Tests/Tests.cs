using System;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using FluentAssertions;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.TrustRegistry.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Xunit;
using Xunit.Abstractions;
using JsonSerializer = System.Text.Json.JsonSerializer;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class Tests
{
#if DEBUG
    private const string DefaultEndpoint = "localhost";
    private const int DefaultPort = 5000;
    private const bool DefaultUseTls = false;
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
        // createService() {
        var trinsicService = new TrinsicService(_options.Clone());
        // }
        // createAccountService() {
        var (ecosystem, _) = trinsicService.Provider.CreateEcosystem(new());
        var ecosystemId = ecosystem.Id;
        // }

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        var allison = await trinsicService.Account.SignInAsync(new() {EcosystemId = ecosystemId});
        var clinic = await trinsicService.Account.SignInAsync(new() {EcosystemId = ecosystemId});
        var airline = await trinsicService.Account.SignInAsync(new() {EcosystemId = ecosystemId});
        // }

        trinsicService.Options.AuthToken = clinic;
        var info = await trinsicService.Account.GetInfoAsync();
        info.Should().NotBeNull();

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // issueCredential() {
        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        trinsicService.Options.AuthToken = clinic;

        // Read the JSON credential data
        var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
        // Sign the credential using BBS+ signature scheme
        // issueCredentialSample() {
        var credential = await trinsicService.Credential.IssueCredentialAsync(new() {DocumentJson = credentialJson});
        _testOutputHelper.WriteLine($"Credential:\n{credential.SignedDocumentJson}");
        // }
        // }

        // storeAndRecallProfile {
        // Serialize auth token by exporting it to file
        File.WriteAllText("allison.txt", allison);
        // Create auth token from existing data
        allison = File.ReadAllText("allison.txt");
        // }

        try {
            // sendCredential() {
            await trinsicService.Credential.SendAsync(new() {Email = "example@trinsic.id"});
            // }
        } catch { } // We expect this to fail

        // STORE CREDENTIAL
        // Allison stores the credential in her cloud wallet.

        // storeCredential() {
        // Set active profile to 'allison' so we can manage her cloud wallet
        trinsicService.Options.AuthToken = allison;

        var insertItemResponse = await trinsicService.Wallet.InsertItemAsync(new() {ItemJson = credential.SignedDocumentJson});
        var itemId = insertItemResponse.ItemId;
        // }
        // searchWalletBasic() {
        var walletItems = await trinsicService.Wallet.SearchAsync(new());
        // }
        _testOutputHelper.WriteLine($"Last wallet item:\n{walletItems.Items.Last()}");

        // searchWalletSQL() { 
        var walletItems2 = await trinsicService.Wallet.SearchAsync(new() {Query = "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"});
        // }

        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        // shareCredential() {
        // We'll read the request frame from a file and communicate this with Allison
        trinsicService.Options.AuthToken = allison;

        var proofRequestJson = await File.ReadAllTextAsync(VaccinationCertificateFrame);

        // Build a proof for the given request and the `itemId` we previously received
        // which points to the stored credential
        var credentialProof = await trinsicService.Credential.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = proofRequestJson
        });
        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ProofDocumentJson);
        // }


        // VERIFY CREDENTIAL
        // verifyCredential() {
        // The airline verifies the credential
        trinsicService.Options.AuthToken = airline;

        // Check for valid signature
        var valid = await trinsicService.Credential.VerifyProofAsync(new() {
            ProofDocumentJson = credentialProof.ProofDocumentJson
        });
        _testOutputHelper.WriteLine($"Verification result: {valid.IsValid}");
        Assert.True(valid.IsValid);
        // }
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        var governanceUri = $"https://example.com/{Guid.NewGuid():N}";

        // setup
        var trinsicService = new TrinsicService(_options.Clone());
        var (_, authToken) = await trinsicService.Provider.CreateEcosystemAsync(new());
        var service = new TrustRegistryService(_options.CloneWithAuthToken(authToken));

        // registerGovernanceFramework() {
        var schemaUri = "https://schema.org/Card";
        var frameworkUri = "https://example.com";
        var registerFrameworkResponse = await service.AddFrameworkAsync(new() {
            Name = $"Demo framework-{Guid.NewGuid()}",
            GovernanceFrameworkUri = frameworkUri,
            Description = schemaUri
        });
        // }


        // registerIssuerSample() {
        var didUri = "did:example:test";
        var registerMemberResponse = await service.RegisterMemberAsync(new() {
            DidUri = didUri,
            FrameworkId = registerFrameworkResponse.Id,
            SchemaUri = schemaUri
        });
        // }

        // checkIssuerStatus() {
        var issuerStatus = await service.GetMembershipStatusAsync(new() {
            DidUri = didUri,
            GovernanceFrameworkUri = frameworkUri,
            SchemaUri = schemaUri
        });
        // }
        issuerStatus.Should().NotBeNull();
        issuerStatus.Status.Should().Be(RegistrationStatus.Current);

        // searchTrustRegistry() {
        var searchResult = await service.SearchRegistryAsync(new());
        // }

        searchResult.Should().NotBeNull();
        searchResult.ItemsJson.Should().NotBeNull().And.NotBeEmpty();

        // unregisterIssuer() {
        await service.UnregisterMemberAsync(new() {
            DidUri = didUri,
            FrameworkId = registerFrameworkResponse.Id,
            SchemaUri = schemaUri
        });
        // }
    }

    [Fact(DisplayName = "Demo: ecosystem creation and listing")]
    public async Task EcosystemTests() {
        // setup
        var trinsicService = new TrinsicService(_options.Clone());
        var account = await trinsicService.Account.SignInAsync(new());

        // test create ecosystem
        // createEcosystem() {
        var (actualCreate, _) = await trinsicService.Provider.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
            Uri = "https://example.com"
        });
        // }

        actualCreate.Should().NotBeNull();
        actualCreate.Id.Should().NotBeNull();
        actualCreate.Id.Should().StartWith("urn:trinsic:ecosystems:");

        try {
            // inviteParticipant() {
            var inviteResponse = await trinsicService.Provider.InviteParticipantAsync(new() {
                Participant = ParticipantType.Individual,
                Description = "Doc sample",
                Details = new() {
                    Email = "example@trinsic.id"
                }
            });
            // }
        } catch(Exception) { } // This is expected as a doc sample

        var invitationId = "N/A";
        try {
            // invitationStatus() {
            var inviteStatus = await trinsicService.Provider.InvitationStatusAsync(new() {InvitationId = invitationId});
            // }
        } catch(Exception) { } // This is expected as a doc sample
    }

    [Fact]
    public async Task TestProtectUnprotectProfile() {
        // testSignInAndGetInfo() {
        // accountServiceConstructor() {
        var trinsicService = new TrinsicService(_options.Clone());
        // }
        // accountServiceSignIn() {
        var myProfile = await trinsicService.Account.SignInAsync(new());
        // }
        trinsicService.Account.Options.AuthToken = myProfile;
        // accountServiceGetInfo() {
        var output = await trinsicService.Account.GetInfoAsync();
        // }
        Assert.NotNull(output);
        // }

        // protectUnprotectProfile() {
        var securityCode = "1234";
        var myProtectedProfile = AccountService.Protect(myProfile, securityCode);
        var myUnprotectedProfile = AccountService.Unprotect(myProtectedProfile, securityCode);
        // }
        trinsicService.Account.Options.AuthToken = myProtectedProfile;
        await Assert.ThrowsAsync<Exception>(trinsicService.Account.GetInfoAsync);
        trinsicService.Account.Options.AuthToken = myUnprotectedProfile;
        Assert.NotNull(await trinsicService.Account.GetInfoAsync());
        Assert.NotNull(trinsicService.Account.GetInfo());
    }

    [Fact]
    public async Task TestInvitationIdSet() {
        var trinsicService = new TrinsicService(_options.Clone());
        _ = await trinsicService.Provider.CreateEcosystemAsync(new());

        var invitationResponse = await trinsicService.Provider.InviteParticipantAsync(new());

        invitationResponse.Should().NotBeNull();
        invitationResponse.InvitationCode.Should().NotBeEmpty();

        await Assert.ThrowsAsync<Exception>(async () => await trinsicService.Provider.InvitationStatusAsync(new()));
    }

    [Fact(Skip = "Ecosystem support not complete yet")]
    public async Task TestInviteParticipant() {
        var trinsicService = new TrinsicService(_options.Clone());
        var myProfile = await trinsicService.Account.SignInAsync(new());
        var invite = new InviteRequest {Description = "Test invitation"};
        var response = await trinsicService.Provider.InviteParticipantAsync(invite);
        Assert.NotNull(response);

        var statusResponse = await trinsicService.Provider.InvitationStatusAsync(new() {InvitationId = response.InvitationId});
        Assert.NotNull(statusResponse);
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse() {
        var trinsicService = new TrinsicService(_options.Clone());
        var myProfile = await trinsicService.Account.SignInAsync(new());
        await Assert.ThrowsAsync<Exception>(async () => await trinsicService.TrustRegistry.AddFrameworkAsync(new() {
            Description = "invalid uri",
            GovernanceFrameworkUri = ""
        }));
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var trinsicService = new TrinsicService(_options.Clone());
        var (_, authToken) = await trinsicService.Provider.CreateEcosystemAsync(new());

        // create example template
        // createTemplate() {
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "An Example Credential",
            AllowAdditionalFields = false
        };
        templateRequest.Fields.Add("firstName", new() {Description = "Given name"});
        templateRequest.Fields.Add("lastName", new());
        templateRequest.Fields.Add("age", new() {Optional = true}); // TODO - use FieldType.NUMBER once schema validation is fixed.

        var template = await trinsicService.Template.CreateAsync(templateRequest);
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
        var credentialJson = await trinsicService.Credential.IssueFromTemplateAsync(new() {
            TemplateId = template.Data.Id,
            ValuesJson = values
        });
        // }

        credentialJson.Should().NotBeNull();

        var jsonDocument = JsonDocument.Parse(credentialJson.DocumentJson).RootElement.EnumerateObject();

        jsonDocument.Should().Contain(x => x.Name == "id");
        jsonDocument.Should().Contain(x => x.Name == "credentialSubject");

        // insertItemWallet() {
        var insertItemResponse = await trinsicService.Wallet.InsertItemAsync(new() {ItemJson = credentialJson.DocumentJson});
        // }
        var itemId = insertItemResponse.ItemId;

        var frame = new JObject {
            {"@context", "https://www.w3.org/2018/credentials/v1"},
            {"type", new JArray("VerifiableCredential")}
        };

        // Create proof from input document
        // createProof() {
        var proof = await trinsicService.Credential.CreateProofAsync(new() {
            DocumentJson = credentialJson.DocumentJson,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });
        // }
        // verifyProof() {
        var valid = await trinsicService.Credential.VerifyProofAsync(new() {ProofDocumentJson = proof.ProofDocumentJson});
        // }
        valid.IsValid.Should().BeTrue();

        // Create proof from item id
        var proof2 = await trinsicService.Credential.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });

        var valid2 = await trinsicService.Credential.VerifyProofAsync(new() {ProofDocumentJson = proof2.ProofDocumentJson});

        valid2.IsValid.Should().BeTrue();

        try {
            // checkCredentialStatus() {
            var checkResponse = await trinsicService.Credential.CheckStatusAsync(new() {CredentialStatusId = ""});
            // }
        } catch { } // We expect this to fail

        try {
            // updateCredentialStatus() {
            await trinsicService.Credential.UpdateStatusAsync(new() {CredentialStatusId = "", Revoked = true});
            // }
        } catch { } // We expect this to fail

        // getCredentialTemplate() {
        var getTemplateResponse = await trinsicService.Template.GetAsync(new() {Id = template.Data.Id});
        // }
        // searchCredentialTemplate() {
        var searchTemplateResponse = await trinsicService.Template.SearchAsync(new() {Query = "SELECT * FROM c"});
        // }
        // deleteCredentialTemplate() {
        var deleteTemplateResponse = await trinsicService.Template.DeleteAsync(new() {Id = template.Data.Id});
        // }
    }

    [Fact(DisplayName = "Decode base64 url encoded string")]
    public void DecodeBase64UrlString() {
        const string encoded =
            "CiVodHRwczovL3RyaW5zaWMuaWQvc2VjdXJpdHkvdjEvb2Jlcm9uEnIKKnVybjp0cmluc2ljOndhbGxldHM6Vzl1dG9pVmhDZHp2RXJZRGVyOGlrRxIkODBkMTVlYTYtMTIxOS00MGZmLWE4NTQtZGI1NmZhOTlmNjMwIh51cm46dHJpbnNpYzplY29zeXN0ZW1zOmRlZmF1bHQaMJRXhevRbornRpA-HJ86WaTLGmQlOuoXSnDT_W2O3u3bV5rS5nKpgrfGKFEbRtIgjyIA";

        var actual = Base64Url.Decode(encoded);

        actual.Should().NotBeEmpty();
    }
}
