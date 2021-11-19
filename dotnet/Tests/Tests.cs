namespace Tests;

using System;
using System.IO;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Common.V1;
using Xunit;
using Xunit.Abstractions;
using Trinsic;
using FluentAssertions;

public class Tests
{
    private readonly ITestOutputHelper _testOutputHelper;

    public Tests(ITestOutputHelper testOutputHelper)
    {
        _testOutputHelper = testOutputHelper;
    }

    private const string VaccinationCertificateUnsigned = "TestData/vaccination-certificate-unsigned.jsonld";
    private const string VaccinationCertificateFrame = "TestData/vaccination-certificate-frame.jsonld";

    [Fact]
    public async Task TestWalletService()
    {
        ServerConfig serverConfig = new()
        {
            Endpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? "localhost",
            Port = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : 5000,
            UseTls = bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var useTls) && useTls
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {serverConfig.FormatUrl()}");

        var accountService = new AccountService(null, serverConfig);
        var empty = new Trinsic.Services.Account.V1.AccountProfile();

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        var (allison, _) = await accountService.SignInAsync(new());
        var (clinic, _) = await accountService.SignInAsync(new());
        var (airline, _) = await accountService.SignInAsync(new());
        // }

        accountService.Profile = clinic;
        var info = await accountService.GetInfoAsync();
        info.Should().NotBeNull();

        // createService() {
        var walletService = new WalletService(allison, serverConfig);
        // }
        var credentialsService = new CredentialsService(clinic, serverConfig);

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        // issueCredential() {
        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        walletService.Profile = credentialsService.Profile = clinic;

        // Read the JSON credential data
        var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
        // Sign the credential using BBS+ signature scheme
        var credential = await credentialsService.IssueCredential(document: JObject.Parse(credentialJson));
        // }

        _testOutputHelper.WriteLine("Credential:");
        _testOutputHelper.WriteLine(credential.ToString(Formatting.Indented));

        // STORE CREDENTIAL
        // Allison stores the credential in her cloud wallet.
        // storeCredential() {
        // Set active profile to 'allison' so we can manage her cloud wallet
        walletService.Profile = credentialsService.Profile = allison;

        var itemId = await walletService.InsertItem(credential);
        // }

        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        // shareCredential() {
        // We'll read the request frame from a file and communicate this with Allison
        walletService.Profile = credentialsService.Profile = allison;

        var proofRequestJson = File.ReadAllText(VaccinationCertificateFrame);

        // Build a proof for the given request and the `itemId` we previously received
        // which points to the stored credential
        var credentialProof = await credentialsService.CreateProof(itemId, JObject.Parse(proofRequestJson));
        // }
        _testOutputHelper.WriteLine("Proof:");
        _testOutputHelper.WriteLine(credentialProof.ToString(Formatting.Indented));


        // VERIFY CREDENTIAL
        // verifyCredential() {
        // The airline verifies the credential
        walletService.Profile = credentialsService.Profile = airline;

        // Check for valid signature
        var valid = await credentialsService.VerifyProof(credentialProof);
        // }
        _testOutputHelper.WriteLine($"Verification result: {valid}");
        Assert.True(valid);
    }

    // TODO - Create trust registry unit test and then add commands to documentation reference
    [Fact]
    public void TestTrustRegistry()
    {
        //Given

        //When

        //Then
    }
}
