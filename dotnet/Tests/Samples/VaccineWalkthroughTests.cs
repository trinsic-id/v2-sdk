using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Threading.Tasks;
using FluentAssertions;
using Newtonsoft.Json;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Xunit;
using Xunit.Abstractions;
using JsonSerializer = System.Text.Json.JsonSerializer;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class VaccineWalkthroughTests
{
    private const string DefaultEndpoint = "staging-internal.trinsic.cloud";
    private const int DefaultPort = 443;
    private const bool DefaultUseTls = true;

    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServiceOptions _options;

    public VaccineWalkthroughTests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;

        _options = new() {
            ServerEndpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? DefaultEndpoint,
            ServerPort = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : DefaultPort,
            ServerUseTls = bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var tls) ? tls : DefaultUseTls
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }

    [Fact(DisplayName = "Vaccine Walkthrough")]
    public async Task TestWalkthrough() {
        // createEcosystem() {
        var providerService = new ProviderService(_options);

        var (ecosystem, _) = await providerService.CreateEcosystemAsync(new());
        var ecosystemId = ecosystem?.Id;
        // }

        ecosystemId.Should().NotBeNullOrEmpty();

        // Set default ecosystem
        providerService.Options.DefaultEcosystem = _options.DefaultEcosystem = ecosystemId;

        // setupActors() {
        var accountService = new AccountService(_options);

        var allison = await accountService.SignInAsync(new() { EcosystemId = ecosystemId });
        var clinic = await accountService.SignInAsync(new() { EcosystemId = ecosystemId });
        var airline = await accountService.SignInAsync(new() { EcosystemId = ecosystemId });
        // }

        allison.Should().NotBeNullOrEmpty();
        clinic.Should().NotBeNullOrEmpty();
        airline.Should().NotBeNullOrEmpty();

        // createTemplate() {
        // Create a TemplateService instance
        var templateService = new TemplateService(_options);

        // Prepare request to create template
        CreateCredentialTemplateRequest templateRequest = new() {
            Name = "VaccinationCertificate",
            AllowAdditionalFields = false
        };

        templateRequest.Fields.Add("firstName", new() { Description = "First name of vaccine recipient" });
        templateRequest.Fields.Add("lastName", new() { Description = "Last name of vaccine recipient" });
        templateRequest.Fields.Add("batchNumber", new() { Description = "Batch number of vaccine" });
        templateRequest.Fields.Add("countryOfVaccination", new() { Description = "Country in which the subject was vaccinated" });

        // Create template
        var template = await templateService.CreateAsync(templateRequest);
        var templateId = template?.Data?.Id;
        // }


        templateId.Should().NotBeNullOrEmpty();


        // issueCredential() {
        var credentialService = new CredentialService(_options);

        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        credentialService.Options.AuthToken = clinic;

        // Prepare credential values
        var credentialValues = new Dictionary<string, string>() {
            { "firstName", "Allison" },
            { "lastName", "Allisonne" },
            { "batchNumber", "123454321" },
            { "countryOfVaccination", "US" }
        };

        // Issue credential
        var issueResponse = await credentialService.IssueFromTemplateAsync(new() {
            TemplateId = templateId,
            ValuesJson = JsonSerializer.Serialize(credentialValues)
        });

        var signedCredential = issueResponse?.DocumentJson;
        // }

        signedCredential.Should().NotBeNullOrEmpty();

        // storeCredential() {
        var walletService = new WalletService(_options);

        // Set active profile to 'allison' so we can manage her cloud wallet
        walletService.Options.AuthToken = allison;

        // Insert credential into Allison's wallet
        var insertItemResponse = await walletService.InsertItemAsync(new() {
            ItemJson = signedCredential
        });

        var itemId = insertItemResponse?.ItemId;
        // }

        itemId.Should().NotBeNullOrEmpty();


        // shareCredential() {
        // Set active profile to 'allison' so we can create a proof using her key
        credentialService.Options.AuthToken = allison;

        // Build a proof for the signed credential
        var proofResponse = await credentialService.CreateProofAsync(new() {
            ItemId = itemId
        });

        var proofJSON = proofResponse?.ProofDocumentJson;
        // }

        proofJSON.Should().NotBeNullOrEmpty();

        // verifyCredential() {
        // Verify that Allison has provided a valid proof
        var verifyResponse = await credentialService.VerifyProofAsync(new() {
            ProofDocumentJson = proofJSON
        });

        bool credentialValid = verifyResponse?.IsValid ?? false;
        // }

        credentialValid.Should().BeTrue();

        _testOutputHelper.WriteLine($"Proof: {proofJSON}");
    }
}
