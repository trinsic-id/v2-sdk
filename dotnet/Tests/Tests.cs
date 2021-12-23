using System.Collections;
using System.Collections.Generic;
using Grpc.Net.Client;

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
        var serverConfig = GetTestServerConfig();
        var accountService = new AccountService(serverConfig);

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
        var walletService = new WalletService(allison, serverConfig);
        var credentialsService = new CredentialsService(clinic, serverConfig);
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

        var proofRequestJson = File.ReadAllText(VaccinationCertificateFrame);

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
        var valid = await credentialsService.VerifyAsync(credentialProof);
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

    [Fact]
    public async Task TestProtectUnprotectProfile()
    {
        var serverConfig = GetTestServerConfig();
        var myAccountService = new AccountService(serverConfig);
        
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
    public async Task TestVerifyProfileSet()
    {
        var serverConfig = GetTestServerConfig();
        var myAccountService = new AccountService(serverConfig);
        
        // Using non-async to ensure coverage behavior
        myAccountService.SignIn();
        await Assert.ThrowsAsync<Exception>(myAccountService.GetInfoAsync);

        Assert.Throws<Exception>(myAccountService.GetInfo);
    }
    
    [Fact]
    public async Task TestInvitationIdSet()
    {
        var serverConfig = GetTestServerConfig();
        var myAccountService = new AccountService(serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myProviderService = new ProviderService(myProfile, serverConfig, myAccountService.Channel);
        await Assert.ThrowsAsync<Exception>(async () => await myProviderService.InviteParticipant(new InviteRequest()));
        await Assert.ThrowsAsync<Exception>(async () => await myProviderService.InvitationStatus(new InvitationStatusRequest()));
    }
    
    [Fact]
    public async Task TestInviteParticipant()
    {
        var serverConfig = GetTestServerConfig();
        var myAccountService = new AccountService(serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myProviderService = new ProviderService(myProfile, serverConfig, myAccountService.Channel);
        var invite = new InviteRequest() { Email = "info@trinsic.id", Description = "Test invitation" };
        var response = await myProviderService.InviteParticipant(invite);
        Assert.NotNull(response);

        var statusResponse = await myProviderService.InvitationStatus(new InvitationStatusRequest()
            { InvitationId = response.InvitationId });
        Assert.NotNull(statusResponse);
    }

    [Fact]
    public async Task TestGovernanceFrameworkUriParse()
    {
        var serverConfig = GetTestServerConfig();
        var myAccountService = new AccountService(serverConfig);
        var myProfile = await myAccountService.SignInAsync();
        var myTrustRegistryService = new TrustRegistryService(myProfile, serverConfig, myAccountService.Channel);
        await Assert.ThrowsAsync<Exception>(async () => await myTrustRegistryService.RegisterGovernanceFrameworkAsync("", "invalid uri"));
    }

    private ServerConfig GetTestServerConfig()
    {
        ServerConfig serverConfig = new()
        {
            Endpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? "localhost",
            Port = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : 5000,
            UseTls = bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var useTls) && useTls
        };

        _testOutputHelper.WriteLine($"Testing endpoint: {serverConfig.FormatUrl()}");
        return serverConfig;
    }
}
