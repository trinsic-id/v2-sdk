using System;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text.Json;
using System.Threading.Tasks;
using FluentAssertions;
using Grpc.Core;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.TrustRegistry.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;
using Xunit;
using Xunit.Abstractions;
using JsonSerializer = System.Text.Json.JsonSerializer;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class Tests
{
    // This breaks the CI pipeline, removing DEBUG option.
    // #if DEBUG
    // private const string DefaultEndpoint = "localhost";
    // private const int DefaultPort = 5000;
    // private const bool DefaultUseTls = false;
    // #else
    private const string DefaultEndpoint = "staging-internal.trinsic.cloud";
    private const int DefaultPort = 443;
    private const bool DefaultUseTls = true;
    // #endif

    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServiceOptions _options;

    public Tests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;
        _options = GetTestServiceOptions();

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }

    public static ServiceOptions GetTestServiceOptions()
    {
        return new() {
            ServerEndpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? DefaultEndpoint,
            ServerPort = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : DefaultPort,
            ServerUseTls = !bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var tls) || tls
        };
    }

    [Fact(DisplayName = "SDK Version has 3 decimal places")]
    public void TestGetVersion() {
        Assert.Equal("1.0.0",(new TrinsicService()).GetSdkVersion());
    }

    private const string VaccinationCertificateUnsigned = "TestData/vaccination-certificate-unsigned.jsonld";
    private const string VaccinationCertificateFrame = "TestData/vaccination-certificate-frame.jsonld";

    [Fact(DisplayName = "Demo: wallet and credential sample")]
    public async Task TestWalletService() {
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());

        var (ecosystem, authToken) = trinsic.Provider.CreateEcosystem(new());
        var ecosystemId = ecosystem.Id;

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        var allison = await trinsic.Account.SignInAsync(new() { EcosystemId = ecosystemId });
        var clinic = await trinsic.Account.SignInAsync(new() { EcosystemId = ecosystemId });
        var airline = await trinsic.Account.SignInAsync(new() { EcosystemId = ecosystemId });

        trinsic.SetAuthToken(clinic);

        var info = await trinsic.Account.GetInfoAsync();
        info.Should().NotBeNull();

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // Read the JSON credential data
        var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);

        // issueCredentialSample() {
        var credential = await trinsic.Credential.IssueAsync(new() { DocumentJson = credentialJson });
        // }

        _testOutputHelper.WriteLine($"Credential:\n{credential.SignedDocumentJson}");

        try
        {
            // sendCredential() {
            var sendResponse = await trinsic.Credential.SendAsync(new() { Email = "example@trinsic.id" });
            // }
        } catch { } // We expect this to fail

        // STORE CREDENTIAL
        trinsic.SetAuthToken(allison);

        var insertItemResponse = await trinsic.Wallet.InsertItemAsync(new() { ItemJson = credential.SignedDocumentJson });
        var itemId = insertItemResponse.ItemId;
        
        // getItem() {
        var getItemResponse = await trinsic.Wallet.GetItemAsync(new GetItemRequest()
        {
            ItemId = itemId
        });
        //}

        getItemResponse.ItemJson.Should().NotBeEmpty();

        // searchWalletBasic() {
        var walletItems = await trinsic.Wallet.SearchWalletAsync(new());
        // }

        _testOutputHelper.WriteLine($"Last wallet item:\n{walletItems.Items.Last()}");

        // searchWalletSQL() { 
        var walletItems2 = await trinsic.Wallet.SearchWalletAsync(new() { Query = "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'" });
        // }

        // SHARE CREDENTIAL
        var proofRequestJson = await File.ReadAllTextAsync(VaccinationCertificateFrame);

        var credentialProof = await trinsic.Credential.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = proofRequestJson
        });

        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ProofDocumentJson);


        // VERIFY CREDENTIAL
        trinsic.SetAuthToken(airline);

        var valid = await trinsic.Credential.VerifyProofAsync(new() {
            ProofDocumentJson = credentialProof.ProofDocumentJson
        });

        _testOutputHelper.WriteLine($"Verification result: {valid.ValidationResults}");
        Assert.True(valid.ValidationResults["SignatureVerification"].IsValid);
        
        // DELETE CREDENTIAL
        trinsic.SetAuthToken(allison);
        // deleteItem() {
        await trinsic.Wallet.DeleteItemAsync(new DeleteItemRequest()
        {
            ItemId = itemId
        });
        //}
    }

    [Fact(DisplayName = "Demo: Wallet deletion")]
    public async Task TestWalletDeletion()
    {
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());
        await trinsic.Account.LoginAnonymousAsync(ecosystem.Id);
        var newWalletInfo = await trinsic.Account.InfoAsync();
        var walletId = newWalletInfo.WalletId;

        // deleteWallet() {
        await trinsic.Wallet.DeleteWalletAsync(new DeleteWalletRequest()
        {
            WalletId = walletId
        });
        //}
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        var governanceUri = $"https://example.com/{Guid.NewGuid():N}";

        // setup
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        // setAuthTokenSample() {
        trinsic.SetAuthToken(authToken);
        // }

        // registerGovernanceFramework() {
        var schemaUri = "https://schema.org/Card";
        var frameworkUri = "https://example.com";
        var registerFrameworkResponse = await trinsic.TrustRegistry.AddFrameworkAsync(new() {
            Name = "Demo framework",
            Description = "My governance framework",
            GovernanceFrameworkUri = frameworkUri
        });
        // }


        // registerIssuerSample() {
        var didUri = "did:example:test";
        var registerMemberResponse = await trinsic.TrustRegistry.RegisterMemberAsync(new() {
            DidUri = didUri,
            FrameworkId = registerFrameworkResponse.Id,
            SchemaUri = schemaUri
        });
        // }

        // checkIssuerStatus() {
        var issuerStatus = await trinsic.TrustRegistry.GetMembershipStatusAsync(new() {
            DidUri = didUri,
            FrameworkId = frameworkUri,
            SchemaUri = schemaUri
        });
        // }

        issuerStatus.Should().NotBeNull();
        issuerStatus.Status.Should().Be(RegistrationStatus.Current);

        // searchTrustRegistry() {
        var searchResult = await trinsic.TrustRegistry.SearchAsync(new());
        // }

        searchResult.Should().NotBeNull();
        searchResult.ItemsJson.Should().NotBeNull().And.NotBeEmpty();

        // unregisterIssuer() {
        var unregisterResponse = await trinsic.TrustRegistry.UnregisterMemberAsync(new() {
            DidUri = didUri,
            FrameworkId = registerFrameworkResponse.Id,
            SchemaUri = schemaUri
        });
        // }
    }

    [Fact(DisplayName = "Demo: ecosystem creation and listing")]
    public async Task EcosystemTests() {
        // setup
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());

        // test create ecosystem
        // createEcosystem() {
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
            Domain = "https://example.com"
        });
        // }

        ecosystem.Should().NotBeNull();
        ecosystem.Id.Should().NotBeNull();
        ecosystem.Id.Should().StartWith("urn:trinsic:ecosystems:");

        trinsic.SetAuthToken(authToken);

        // test update ecosystem
        // wrapped in try/catch as method is not yet implemented in backend.
        try
        {
            // updateEcosystem() {
            var updateResult = await trinsic.Provider.UpdateEcosystemAsync(new() {
                Description = "New ecosystem description",
                Domain = "New ecosystem URI"
            });
            // }


            updateResult.Should().NotBeNull();
            updateResult.Ecosystem.Should().NotBeNull();
            updateResult.Ecosystem.Description.Should().Be("New ecosystem description");
            updateResult.Ecosystem.Domain.Should().Be("New ecosystem URI");
        } catch { }


        // test get ecosystem info
        // ecosystemInfo() {
        var infoResult = await trinsic.Provider.EcosystemInfoAsync(new());
        // }

        infoResult.Should().NotBeNull();
        //infoResult.Ecosystem.Should().Be(updateResult.Ecosystem); //TODO: UNCOMMENT WHEN updateEcosystem() TEST IS UN-CATCHED.

        // inviteParticipant() {
        // }

        // invitationStatus() {
        // }


        // Test upgrading account DID
        var accountInfo = await trinsic.Account.InfoAsync();
        var walletId = accountInfo.WalletId;

        // Wrap in try-catch as this ecosystem will not presently have DID upgrade permissions
        try
        {
            // upgradeDid() {
            var upgradeResponse = await trinsic.Provider.UpgradeDIDAsync(new() {
                WalletId = walletId,
                Method = SupportedDidMethod.Ion,
                IonOptions = new() {
                    Network = IonOptions.Types.IonNetwork.TestNet
                }
            });
            // }
        } catch (RpcException e)
        {
            e.StatusCode.Should().Be(StatusCode.PermissionDenied);
        }
    }

    [Fact(Skip = "Named login example for docs")]
    public async Task TestLogin() {
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());
        var (ecosystem, _) = await trinsic.Provider.CreateEcosystemAsync(new());

        var ecosystemId = ecosystem.Id;

        // loginRequest() {
        var loginResponse = await trinsic.Account.LoginAsync(new() {
            // ecosystem id or name
            EcosystemId = ecosystemId,
            Email = "bob@example.com"
        });
        // }

        loginResponse.Should().NotBeNull();
        loginResponse.ResponseCase.Should().Be(LoginResponse.ResponseOneofCase.Challenge);
        loginResponse.Challenge.Should().NotBeNull();

        {
            var authCode = "1234";

            await Assert.ThrowsAnyAsync<RpcException>(async () => {
                // loginConfirm() {
                var authToken = await trinsic.Account.LoginConfirmAsync(loginResponse.Challenge, authCode);
                // }
            });
        }

        {
            // loginAnonymous() {
            var authToken = await trinsic.Account.LoginAnonymousAsync(ecosystemId!);
            // }

            authToken.Should().NotBeNullOrEmpty();
        }
    }

    [Fact]
    public async Task TestProtectUnprotectProfile() {
        var myEcosystemId = "default";
        // testSignInAndGetInfo() {
        // trinsicServiceConstructor() {
        var trinsic = new TrinsicService(_options);
        // }
        // accountServiceSignIn() {
        var myProfile = await trinsic.Account.LoginAnonymousAsync(myEcosystemId);
        // }
        // accountServiceGetInfo() {
        var info = await trinsic.Account.GetInfoAsync();
        // }
        // }

        Assert.NotNull(info);

        // protectUnprotectProfile() {
        var securityCode = "1234";
        var myProtectedProfile = AccountService.Protect(myProfile!, securityCode);
        var myUnprotectedProfile = AccountService.Unprotect(myProtectedProfile, securityCode);
        // }

        trinsic.SetAuthToken(myProtectedProfile);
        await Assert.ThrowsAsync<Exception>(trinsic.Account.GetInfoAsync);

        trinsic.SetAuthToken(myUnprotectedProfile);
        Assert.NotNull(await trinsic.Account.GetInfoAsync());
        Assert.NotNull(trinsic.Account.GetInfo());
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse() {
        var myEcosystemId = "default";
        var trinsic = new TrinsicService(_options);
        var myProfile = await trinsic.Account.LoginAnonymousAsync(myEcosystemId);
        Assert.NotNull(myProfile);
        
        trinsic.SetAuthToken(myProfile);

        await Assert.ThrowsAsync<RpcException>(async () => await trinsic.TrustRegistry.AddFrameworkAsync(new() {
            Description = "invalid uri",
            GovernanceFrameworkUri = ""
        }));
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        trinsic.SetAuthToken(authToken);

        // create example template
        // createTemplate() {
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "An Example Credential",
            AllowAdditionalFields = false
        };
        templateRequest.Fields.Add("firstName", new() { Description = "Given name" });
        templateRequest.Fields.Add("lastName", new());
        templateRequest.Fields.Add("age", new() { Optional = true }); // TODO - use FieldType.NUMBER once schema validation is fixed.

        var template = await trinsic.Template.CreateAsync(templateRequest);
        // }

        template.Should().NotBeNull();
        template.Data.Should().NotBeNull();
        template.Data.Id.Should().NotBeNull();
        template.Data.SchemaUri.Should().NotBeNull();

        var templateId = template.Data.Id;

        // issue credential from this template
        var values = JsonSerializer.Serialize(new {
            firstName = "Jane",
            lastName = "Doe",
            age = "42"
        });

        // issueFromTemplate() {
        var credentialJson = await trinsic.Credential.IssueFromTemplateAsync(new() {
            TemplateId = templateId,
            ValuesJson = values
        });
        // }

        credentialJson.Should().NotBeNull();

        var jsonDocument = JsonDocument.Parse(credentialJson.DocumentJson).RootElement.EnumerateObject();

        jsonDocument.Should().Contain(x => x.Name == "id");
        jsonDocument.Should().Contain(x => x.Name == "credentialSubject");

        // insertItemWallet() {
        var insertItemResponse = await trinsic.Wallet.InsertItemAsync(new() { ItemJson = credentialJson.DocumentJson });
        // }

        var itemId = insertItemResponse.ItemId;

        var frame = new JObject {
            {"@context", "https://www.w3.org/2018/credentials/v1"},
            {"type", new JArray("VerifiableCredential")}
        };

        // Create proof from input document
        // createProof() {
        var proof = await trinsic.Credential.CreateProofAsync(new() {
            DocumentJson = credentialJson.DocumentJson,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });
        var selectiveProof = await trinsic.Credential.CreateProofAsync(new() {
            DocumentJson = credentialJson.DocumentJson,
            RevealTemplate = new() {
                // The other field, not disclosed, is "age"
                TemplateAttributes = { "firstName","lastName" }
            }
        });
        // }
        // verifyProof() {
        var valid = await trinsic.Credential.VerifyProofAsync(new() { ProofDocumentJson = proof.ProofDocumentJson });
        // }
        valid.IsValid.Should().BeTrue();
        
        var selectiveValid = await trinsic.Credential.VerifyProofAsync(new() { ProofDocumentJson = selectiveProof.ProofDocumentJson });
        selectiveValid.IsValid.Should().BeTrue();

        // Create proof from item id
        var proof2 = await trinsic.Credential.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });

        var valid2 = await trinsic.Credential.VerifyProofAsync(new() { ProofDocumentJson = proof2.ProofDocumentJson });

        valid2.IsValid.Should().BeTrue();

        try
        {
            // checkCredentialStatus() {
            var checkResponse = await trinsic.Credential.CheckStatusAsync(new() { CredentialStatusId = "" });
            // }
        } catch { } // We expect this to fail

        try
        {
            // updateCredentialStatus() {
            await trinsic.Credential.UpdateStatusAsync(new() { CredentialStatusId = "", Revoked = true });
            // }
        } catch { } // We expect this to fail

        // getCredentialTemplate() {
        var getTemplateResponse = await trinsic.Template.GetAsync(new() { Id = template.Data.Id });
        // }
        // searchCredentialTemplate() {
        var searchTemplateResponse = await trinsic.Template.SearchAsync(new() { Query = "SELECT * FROM c" });
        // }
        // deleteCredentialTemplate() {
        var deleteTemplateResponse = await trinsic.Template.DeleteAsync(new() { Id = template.Data.Id });
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