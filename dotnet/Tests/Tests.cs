using System;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using FluentAssertions;
using Grpc.Core;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Connect.V1;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.TrustRegistry.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Xunit;
using Xunit.Abstractions;
using JsonSerializer = System.Text.Json.JsonSerializer;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
[SuppressMessage("ReSharper", "InconsistentNaming")]
public class Tests
{
    // This breaks the CI pipeline, removing DEBUG option.
    // #if DEBUG
    // private const string DefaultEndpoint = "localhost";
    // private const int DefaultPort = 5000;
    // private const bool DefaultUseTls = false;
    // #else
    public const string DefaultEndpoint = "staging-internal.trinsic.cloud";
    public const int DefaultPort = 443;

    // #endif

    private readonly ITestOutputHelper _testOutputHelper;
    private readonly TrinsicOptions _options;

    public Tests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;
        _options = GetTestServiceOptions();

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }

    public static TrinsicOptions GetTestServiceOptions() {
        return new() {
            ServerEndpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? DefaultEndpoint,
            ServerPort = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port)
                ? port
                : DefaultPort,
            ServerUseTls = !bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var tls) || tls
        };
    }

    [Fact(DisplayName = "SDK Version has 3 decimal places")]
    public void TestGetVersion() {
        Assert.Equal("1.0.0", TrinsicService.GetSdkVersion());
    }

    [Fact(DisplayName = "Demo: wallet and credential sample")]
    public async Task TestWalletService() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, _) = trinsic.Provider.CreateEcosystem(new());
        var ecosystemId = ecosystem.Id;

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        var allison = await trinsic.Wallet.CreateWalletAsync(new() { EcosystemId = ecosystemId });
        var clinic = await trinsic.Wallet.CreateWalletAsync(new() { EcosystemId = ecosystemId });
        var airline = await trinsic.Wallet.CreateWalletAsync(new() { EcosystemId = ecosystemId });

        allison.AuthToken.Should().NotBeNullOrWhiteSpace();
        clinic.AuthToken.Should().NotBeNullOrWhiteSpace();
        airline.AuthToken.Should().NotBeNullOrWhiteSpace();

        trinsic = new TrinsicService(_options.CloneWithAuthToken(clinic.AuthToken));

        var info = await trinsic.Wallet.GetMyInfoAsync();
        info.Should().NotBeNull();
        info.Wallet.Should().NotBeNull();

        var template = await trinsic.Template.CreateAsync(new() {
            Name = $"dotnet-tests-{Guid.NewGuid()}",
            Fields =
            {
                {
                    "field", new() { Type = FieldType.Number }
                }
            }
        });

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // Read the JSON credential data

        // issueCredentialSample() {
        var issueResponse = await trinsic.Credential.IssueFromTemplateAsync(new() {
            TemplateId = template.Data.Id,
            ValuesJson = JsonConvert.SerializeObject(new {
                field = 123
            })
        });
        // }

        _testOutputHelper.WriteLine($"Credential:\n{issueResponse.DocumentJson}");

        try
        {
            // sendCredential() {
            var sendResponse = await trinsic.Credential.SendAsync(new() {
                Email = "<EMAIL>",
                DocumentJson = issueResponse.DocumentJson,
                SendNotification = true,
                });
            // }
        } catch
        {
        } // We expect this to fail

        // STORE CREDENTIAL
        trinsic = new TrinsicService(_options.CloneWithAuthToken(allison.AuthToken));

        var insertItemResponse = await trinsic.Wallet.InsertItemAsync(new() {
            ItemJson = issueResponse.DocumentJson
        });
        var itemId = insertItemResponse.ItemId;

        // getItem() {
        var getItemResponse = await trinsic.Wallet.GetItemAsync(new GetItemRequest {
            ItemId = itemId
        });
        //}

        getItemResponse.ItemJson.Should().NotBeEmpty();

        // searchWalletBasic() {
        var walletItems = await trinsic.Wallet.SearchWalletAsync(new());
        // }

        _testOutputHelper.WriteLine($"Last wallet item:\n{walletItems.Items.Last()}");

        // searchWalletSQL() { 
        _ = await trinsic.Wallet.SearchWalletAsync(new() { Query = "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'" });
        // }

        // SHARE CREDENTIAL
        var credentialProof = await trinsic.Credential.CreateProofAsync(new() {
            ItemId = itemId
        });

        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ProofDocumentJson);

        // VERIFY CREDENTIAL
        trinsic = new TrinsicService(_options.CloneWithAuthToken(airline.AuthToken));

        var valid = await trinsic.Credential.VerifyProofAsync(new() {
            ProofDocumentJson = credentialProof.ProofDocumentJson
        });

        _testOutputHelper.WriteLine($"Verification result: {valid.ValidationResults}");
        Assert.True(valid.ValidationResults["SignatureVerification"].IsValid);

        // DELETE CREDENTIAL
        trinsic = new TrinsicService(_options.CloneWithAuthToken(allison.AuthToken));
        // deleteItem() {
        await trinsic.Wallet.DeleteItemAsync(new DeleteItemRequest {
            ItemId = itemId
        });
        //}
    }

    [Fact(DisplayName = "Demo: Wallet deletion")]
    public async Task TestWalletDeletion() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, _) = await trinsic.Provider.CreateEcosystemAsync(new());
        var createWalletResponse = await trinsic.Wallet.CreateWalletAsync(new() { EcosystemId = ecosystem.Id });

        // set the auth token to the newly created wallet
        trinsic = new TrinsicService(_options.CloneWithAuthToken(createWalletResponse.AuthToken));

        var newWalletInfo = await trinsic.Wallet.GetMyInfoAsync();
        var walletId = newWalletInfo.Wallet.WalletId;

        // deleteWallet() {
        await trinsic.Wallet.DeleteWalletAsync(new DeleteWalletRequest {
            WalletId = walletId
        });
        //}
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        _ = $"https://example.com/{Guid.NewGuid():N}";

        // setup
        var trinsic = new TrinsicService(_options.Clone());
        var (_, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        // setAuthTokenSample() {
        trinsic = new TrinsicService(_options.CloneWithAuthToken(authToken));
        // }

        var schemaUri = "https://schema.org/Card";

        // registerIssuerSample() {
        var didUri = "did:example:test";
        _ = await trinsic.TrustRegistry.RegisterMemberAsync(new() {
            DidUri = didUri,
            SchemaUri = schemaUri
        });
        // }

        // checkIssuerStatus() {
        var issuerStatus = await trinsic.TrustRegistry.GetMemberAuthorizationStatusAsync(new() {
            DidUri = didUri,
            SchemaUri = schemaUri
        });
        // }

        issuerStatus.Should().NotBeNull();
        issuerStatus.Status.Should().Be(RegistrationStatus.Current);

        // getMember() {
        var member = await trinsic.TrustRegistry.GetMemberAsync(new() {
            DidUri = didUri
        });
        // }

        member.Should().NotBeNull();
        member.AuthorizedMember.Did.Should().Be(didUri);

        // listMembers() {
        var members = await trinsic.TrustRegistry.ListAuthorizedMembersAsync(new() {
            SchemaUri = schemaUri
        });
        // }

        members.AuthorizedMembers[0].Should().Be(member.AuthorizedMember);

        // unregisterIssuer() {
        _ = await trinsic.TrustRegistry.UnregisterMemberAsync(new() {
            DidUri = didUri,
            SchemaUri = schemaUri
        });
        // }
    }

    [Fact(DisplayName = "Demo: ecosystem creation and listing")]
    public async Task EcosystemTests() {
        // setup
        var trinsic = new TrinsicService(_options.Clone());

        // test create ecosystem
        // createEcosystem() {
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
        });
        // }

        ecosystem.Should().NotBeNull();
        ecosystem.Id.Should().NotBeNull();
        ecosystem.Id.Should().StartWith("urn:trinsic:ecosystems:");

        trinsic = new TrinsicService(_options.CloneWithAuthToken(authToken));

        // test get ecosystem info
        // ecosystemInfo() {
        // }

        // inviteParticipant() {
        // }

        // invitationStatus() {
        // }

        // Test upgrading account DID
        var accountInfo = await trinsic.Wallet.GetMyInfoAsync();
        var walletId = accountInfo.Wallet.WalletId;

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

    [Fact]
    public async Task ConnectDemo() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        trinsic = new TrinsicService(_options.CloneWithAuthToken(authToken));

        try {
            // createSession() {
            var createResponse = await trinsic.Connect.CreateSessionAsync(new() {
                Verifications = {
                    new RequestedVerification() {
                        Type = VerificationType.GovernmentId
                    }
                }
            });

            var session = createResponse.Session;
            var sessionId = session.Id; // Save this in your database
            var clientToken = session.ClientToken; // Send this to your user's device
            // }


            // getSession() {
            var getResponse = await trinsic.Connect.GetSessionAsync(new() {
                IdvSessionId = sessionId
            });
            // }

            // cancelSession() {
            await trinsic.Connect.CancelSessionAsync(new() {
                IdvSessionId = sessionId
            });
            // }

        } catch {
            // We expect the above calls to fail due to lack of privileges
        }
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        trinsic = new TrinsicService(_options.CloneWithAuthToken(authToken));

        // create example template
        // createTemplate() {
        CreateCredentialTemplateRequest createRequest = new() {
            Name = "An Example Credential",
            Title = "Example Credential",
            Description = "A credential for Trinsic's SDK samples",
            AllowAdditionalFields = false,
            Fields =
            {
                { "firstName", new() { Title = "First Name", Description = "Given name of holder" } },
                { "lastName", new() { Title = "Last Name", Description = "Surname of holder", Optional = true } },
                { "age", new() { Title = "Age", Description = "Age in years of holder", Type = FieldType.Number } }
            },
            FieldOrdering =
            {
                { "firstName", new() { Order = 0, Section = "Name" } },
                { "lastName", new() { Order = 1, Section = "Name" } },
                { "age", new() { Order = 2, Section = "Miscellanous" } }
            },
            AppleWalletOptions = new() {
                PrimaryField = "firstName",
                SecondaryFields = { "lastName" },
                AuxiliaryFields = { "age" }
            }
        };

        var template = await trinsic.Template.CreateAsync(createRequest);
        // }

        template.Should().NotBeNull();
        template.Data.Should().NotBeNull();
        template.Data.Id.Should().NotBeNull();
        template.Data.SchemaUri.Should().NotBeNull();

        var templateId = template.Data.Id;

        // update template
        // updateTemplate() {
        UpdateCredentialTemplateRequest updateRequest = new() {
            Id = templateId,
            Title = "New Title",
            Description = "New Description",
            Fields =
            {
                { "firstName", new() { Title = "New title for firstName" } },
                { "lastName", new() { Description = "New description for lastName" } }
            },
            FieldOrdering =
            {
                { "age", new() { Order = 0, Section = "Misc" } },
                { "firstName", new() { Order = 1, Section = "Full Name" } },
                { "lastName", new() { Order = 2, Section = "Full Name" } },
            },
            AppleWalletOptions = new() {
                PrimaryField = "age",
                SecondaryFields = { "firstName", "lastName" }
            }
        };

        var updatedTemplate = await trinsic.Template.UpdateAsync(updateRequest);
        // }

        updatedTemplate.UpdatedTemplate.Title.Should().Be(updateRequest.Title);

        // issue credential from this template
        var values = JsonSerializer.Serialize(new {
            firstName = "Jane",
            lastName = "Doe",
            age = 42
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
        var insertItemResponse =
            await trinsic.Wallet.InsertItemAsync(new() { ItemJson = credentialJson.DocumentJson });
        // }

        var itemId = insertItemResponse.ItemId;

        var frame = new JObject
        {
            { "@context", "https://www.w3.org/2018/credentials/v1" },
            { "type", new JArray("VerifiableCredential") }
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
                TemplateAttributes = { "firstName", "lastName" }
            }
        });
        // }
        // verifyProof() {
        var valid = await trinsic.Credential.VerifyProofAsync(new() { ProofDocumentJson = proof.ProofDocumentJson });
        // }
        valid.IsValid.Should().BeTrue();

        var selectiveValid =
            await trinsic.Credential.VerifyProofAsync(
                new() { ProofDocumentJson = selectiveProof.ProofDocumentJson });
        selectiveValid.IsValid.Should().BeTrue();

        // Create proof from item id
        var proof2 = await trinsic.Credential.CreateProofAsync(new() {
            ItemId = itemId,
            RevealDocumentJson = frame.ToString(Formatting.None)
        });

        var valid2 =
            await trinsic.Credential.VerifyProofAsync(new() { ProofDocumentJson = proof2.ProofDocumentJson });

        valid2.IsValid.Should().BeTrue();

        try
        {
            // checkCredentialStatus() {
            var checkResponse = await trinsic.Credential.CheckStatusAsync(new() { CredentialStatusId = "" });
            // }
        } catch
        {
        } // We expect this to fail

        try
        {
            // updateCredentialStatus() {
            await trinsic.Credential.UpdateStatusAsync(new() { CredentialStatusId = "", Revoked = true });
            // }
        } catch
        {
        } // We expect this to fail

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

    [Fact(DisplayName = "Demo: Wallet Service samples")]
    public async Task DemoWalletServiceMethods() {
        var trinsic = new TrinsicService(_options.Clone());
        var (ecosystem, authToken) = await trinsic.Provider.CreateEcosystemAsync(new());

        trinsic = new TrinsicService(_options.CloneWithAuthToken(authToken));

        // createWallet() {
        var createWalletRequest = new CreateWalletRequest {
            EcosystemId = ecosystem.id,
            Description = "user123",
            Identity = new CreateWalletRequest.Types.ExternalIdentity {
                Identity = "test@trinsic.id",
                Provider = IdentityProvider.Email
            }
        };

        var createWalletResponse = await trinsic.Wallet.CreateWalletAsync(createWalletRequest);

        // Response:
        //   "authToken": "dGhpcyBpcyBhbiBleGFtcGxlIGF1dGhlbmNpdGlvbiB0b2tlbgo=",
        //   "tokenId": "0b4f42cb-4d44-4629-89dd-47b814229ffe",
        //   "wallet":
        //       "walletId": "urn:trinsic:wallets:z7438uW5X4gZ1rZsiZaBdxX",
        //       "publicDid": "did:key:123456"

        // }


        // addExternalIdentityInit() {
        // the two endpoints below require authenticated user context
        // var options = new TrinsicOptions { AuthToken = "<auth token>" };
        // var trinsic = new TrinsicService(options);

        // Step 1 - initiate identity challenge
        var addExternalIdentityInitRequest = new AddExternalIdentityInitRequest {
            Identity = "test@trinsic.id",
            Provider = IdentityProvider.Email
        };
        var addExternalIdentityInitResponse = await trinsic.Wallet.AddExternalIdentityInitAsync(addExternalIdentityInitRequest);
        // }

        // addExternalIdentityConfirm() {
        // Step 2 - confirm challenge response
        var addExternalIdentityConfirmRequest = new AddExternalIdentityConfirmRequest {
            Challenge = addExternalIdentityInitResponse.Challenge,
            Response = "123456" // OTP code
        };
        var addExternalIdentityConfirmResponse = await trinsic.Wallet.AddExternalIdentityConfirmAsync(addExternalIdentityConfirmRequest);
        // }

        // getWalletFromExternalIdentity() {
        var getWalletFromExternalIdentityRequest = new GetWalletFromExternalIdentityRequest {
            Identity = new WalletExternalIdentity() {
                Id = "test@trinsic.id",
                Provider = IdentityProvider.Email
            }
        };

        var getWalletFromExternalIdentityResponse = await trinsic.Wallet.GetWalletFromExternalIdentityAsync(getWalletFromExternalIdentityRequest);
        // }

        // getWalletInfo() {
        var getWalletInfoResponse = await trinsic.Wallet.GetWalletInfoAsync(
            new GetWalletInfoRequest {
                WalletId = createWalletResponse.Wallet.WalletId
            }
        );
        // }

        // authenticateInit() {
        // Step 1 - initiate authentication challenge
        var authenticateInitRequest = new AuthenticateInitRequest {
            Identity = "test@trinsic.id",
            Provider = IdentityProvider.Email,
            EcosystemId = "test-ecosystem" // short name or full ecosystem ID
        };
        var authenticateInitResponse = await trinsic.Wallet.AuthenticateInitAsync(authenticateInitRequest);
        // }

        // authenticateConfirm() {
        // Step 2 - confirm authentication response
        var authenticateConfirmRequest = new AuthenticateConfirmRequest {
            Challenge = authenticateInitResponse.Challenge,
            Response = "123456" // OTP code
        };
        var authenticateConfirmResponse = await trinsic.Wallet.AuthenticateConfirmAsync(authenticateConfirmRequest);

        // Response:
        //     "authToken": "dGhpcyBpcyBhbiBleGFtcGxlIGF1dGhlbmNpdGlvbiB0b2tlbgo="

        // use the new token to make authenticated calls
        // var options = new TrinsicOptions { AuthToken = AuthenticateConfirmResponse.AuthToken };
        // trinsic = new TrinsicService(options);
        // }

        // removeExternalIdentity() {

        // this endpoint require authenticated user context
        // var options = new TrinsicOptions { AuthToken = "<auth token>" };
        // var trinsic = new TrinsicService(options);

        var removeExternalIdentityRequest = new RemoveExternalIdentityRequest {
            Identity = "test@trinsic.id",
        };
        var removeExternalIdentityResponse = await trinsic.Wallet.RemoveExternalIdentityAsync(removeExternalIdentityRequest);
        // }
    }
}