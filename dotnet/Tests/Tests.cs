using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.TrustRegistry.V1;
using System;
using System.IO;
using System.Text.Json;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Common.V1;
using Xunit;
using Xunit.Abstractions;
using Trinsic;
using FluentAssertions;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using JsonSerializer = System.Text.Json.JsonSerializer;

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class Tests
{
    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServerConfig _serverConfig;

    public Tests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;

        _serverConfig = new() {
            Endpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? "staging-internal.trinsic.cloud",
            Port = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : 443,
            UseTls = !bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var useTls) || useTls
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {_serverConfig.FormatUrl()}");
    }

    private const string VaccinationCertificateUnsigned = "TestData/vaccination-certificate-unsigned.jsonld";
    private const string VaccinationCertificateFrame = "TestData/vaccination-certificate-frame.jsonld";

    [Fact]
    public async Task TestWalletService() {
        var accountService = new AccountService(_serverConfig);

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        var allison = await accountService.SignInAsync();
        var clinic = await accountService.SignInAsync();
        var airline = await accountService.SignInAsync();
        // }

        accountService.Profile = clinic;
        var info = await accountService.GetInfoAsync();
        info.Should().NotBeNull();

        // createService() {
        var walletService = new WalletService(allison, _serverConfig);
        var credentialsService = new CredentialsService(clinic, _serverConfig);
        // }

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // issueCredential() {
        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        walletService.Profile = credentialsService.Profile = clinic;

        // Read the JSON credential data
        var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
        // Sign the credential using BBS+ signature scheme
        var credential = await credentialsService.IssueCredentialAsync(document: JObject.Parse(credentialJson));
        _testOutputHelper.WriteLine($"Credential:\n{credential.ToString(Formatting.Indented)}");
        // }

        // STORE CREDENTIAL
        // Allison stores the credential in her cloud wallet.
        // storeCredential() {
        // Set active profile to 'allison' so we can manage her cloud wallet
        walletService.Profile = credentialsService.Profile = allison;

        var itemId = await walletService.InsertItemAsync(credential);
        // }

        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        // shareCredential() {
        // We'll read the request frame from a file and communicate this with Allison
        walletService.Profile = credentialsService.Profile = allison;

        var proofRequestJson = await File.ReadAllTextAsync(VaccinationCertificateFrame);

        // Build a proof for the given request and the `itemId` we previously received
        // which points to the stored credential
        var credentialProof = await credentialsService.CreateProofAsync(itemId, JObject.Parse(proofRequestJson));
        // }
        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ToString(Formatting.Indented));


        // VERIFY CREDENTIAL
        // verifyCredential() {
        // The airline verifies the credential
        walletService.Profile = credentialsService.Profile = airline;

        // Check for valid signature
        var valid = await credentialsService.VerifyProofAsync(credentialProof);
        // }
        _testOutputHelper.WriteLine($"Verification result: {valid}");
        Assert.True(valid);
    }

    [Fact(DisplayName = "Demo: trust registries")]
    public async Task TestTrustRegistry() {
        // setup
        var accountService = new AccountService(_serverConfig);
        var account = await accountService.SignInAsync();
        var service = new TrustRegistryService(account, _serverConfig);

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
        var accountService = new AccountService(_serverConfig);
        var account = await accountService.SignInAsync();
        var service = new ProviderService(account, _serverConfig);

        // test create ecosystem
        var actualCreate = await service.CreateEcosystemAsync(new() {
            Description = "My ecosystem",
            Name = "Test Ecosystem",
            Uri = "https://example.com"
        });

        actualCreate.Should().NotBeNull();
        actualCreate.Id.Should().NotBeNull();
        actualCreate.Id.Should().StartWith("urn:trinsic:ecosystems:");

        // test list ecosystems
        var actualList = await service.ListEcosystemsAsync();

        var ecosystems = actualList as Ecosystem[] ?? actualList.ToArray();
        ecosystems.Should().NotBeNull();
        ecosystems.Should().NotBeEmpty();
    }

    [Fact]
    public async Task TestProtectUnprotectProfile() {
        var myAccountService = new AccountService(_serverConfig);

        var myProfile = await myAccountService.SignInAsync();
        myAccountService.Profile = myProfile;
        var output = await myAccountService.GetInfoAsync();
        Assert.NotNull(output);

        var securityCode = "1234";
        var myProtectedProfile = AccountService.Protect(myProfile, securityCode);

        myAccountService.Profile = myProtectedProfile;
        await Assert.ThrowsAsync<Exception>(myAccountService.GetInfoAsync);

        var myUnprotectedProfile = AccountService.Unprotect(myProtectedProfile, securityCode);
        myAccountService.Profile = myUnprotectedProfile;
        Assert.NotNull(await myAccountService.GetInfoAsync());
        Assert.NotNull(myAccountService.GetInfo());
    }

    [Fact]
    public async Task TestVerifyProfileSet() {
        var myAccountService = new AccountService(_serverConfig);

        // Using non-async to ensure coverage behavior
        myAccountService.SignIn();
        await Assert.ThrowsAsync<Exception>(myAccountService.GetInfoAsync);

        Assert.Throws<Exception>(myAccountService.GetInfo);
    }

    [Fact]
    public async Task TestInvitationIdSet() {
        var myAccountService = new AccountService(_serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myProviderService = new ProviderService(myProfile, myAccountService.Channel);
        await Assert.ThrowsAsync<Exception>(async () => await myProviderService.InviteParticipantAsync(new InviteRequest()));
        await Assert.ThrowsAsync<Exception>(async () => await myProviderService.InvitationStatusAsync(new InvitationStatusRequest()));
    }

    [Fact(Skip = "Ecosystem support not complete yet")]
    public async Task TestInviteParticipant() {
        var myAccountService = new AccountService(_serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myProviderService = new ProviderService(myProfile, myAccountService.Channel);
        var invite = new InviteRequest() {Email = "info@trinsic.id", Description = "Test invitation"};
        var response = await myProviderService.InviteParticipantAsync(invite);
        Assert.NotNull(response);

        var statusResponse = await myProviderService.InvitationStatusAsync(new InvitationStatusRequest()
            {InvitationId = response.InvitationId});
        Assert.NotNull(statusResponse);
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse() {
        var myAccountService = new AccountService(_serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myTrustRegistryService = new TrustRegistryService(myProfile, myAccountService.Channel);
        await Assert.ThrowsAsync<Exception>(async () => await myTrustRegistryService.RegisterGovernanceFrameworkAsync("", "invalid uri"));
    }

    [Fact(DisplayName = "Demo: template management and credential issuance from template")]
    public async Task DemoTemplatesWithIssuance() {
        var accountService = new AccountService(_serverConfig);
        var profile = await accountService.SignInAsync();
        var templateService = new TemplateService(profile, accountService.Channel);
        var credentialService = new CredentialsService(profile, accountService.Channel);
        
        // create example template
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "My Example Credential",
            AllowAdditionalFields = false
        };
        templateRequest.Fields.Add("firstName", new(){ Description = "Given name"});
        templateRequest.Fields.Add("lastName", new());
        templateRequest.Fields.Add("age", new(){ Type = FieldType.Number, Optional = true});
        
        var template = await templateService.CreateAsync(templateRequest);

        template.Should().NotBeNull();
        template.Data.Should().NotBeNull();
        template.Data.Id.Should().NotBeNull();
        template.Data.SchemaUri.Should().NotBeNull();

        // issue credential from this template
        var values = JsonSerializer.Serialize(new {
            firstName = "Jane",
            lastName = "Doe",
            age = 42
        });

        var credentialJson = await credentialService.IssueFromTemplateAsync(new() {
            TemplateId = template.Data.Id,
            ValuesJson = values
        });

        credentialJson.Should().NotBeNull();

        var jsonDocument = JsonDocument.Parse(credentialJson).RootElement.EnumerateObject();

        jsonDocument.Should().Contain(x => x.Name == "id");
        jsonDocument.Should().Contain(x => x.Name == "credentialSubject");
    }
}