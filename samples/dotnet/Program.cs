using System;
using System.IO;
using System.Linq;
using FluentAssertions;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.V1;

const string VaccinationCertificateUnsigned = "vaccination-certificate-unsigned.jsonld";
const string VaccinationCertificateFrame = "vaccination-certificate-frame.jsonld";

// createAccountService() {
var providerService = new ProviderService();
var accountService = new AccountService();
var (ecosystem, _) = providerService.CreateEcosystem(new CreateEcosystemRequest());
var ecosystemId = ecosystem.Id;
// }

// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
// setupActors() {
var allison = await accountService.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
var clinic = await accountService.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
var airline = await accountService.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
// }

accountService.Options.AuthToken = clinic;
var info = await accountService.GetInfoAsync();
info.Should().NotBeNull();

// createService() {
var walletService = new WalletService(accountService.Options.CloneWithAuthToken(allison));
var credentialsService = new CredentialsService(accountService.Options.CloneWithAuthToken(clinic));
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
var credential = await credentialsService.IssueCredentialAsync(new IssueRequest { DocumentJson = credentialJson });
Console.WriteLine($"Credential:\n{credential.SignedDocumentJson}");
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

var itemId = await walletService.InsertItemAsync(new InsertItemRequest { ItemJson = credential.SignedDocumentJson });
var walletItems = await walletService.SearchAsync();
Console.WriteLine($"Last wallet item:\n{walletItems.Items.ToList().Last()}");
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
var credentialProof = await credentialsService.CreateProofAsync(new CreateProofRequest
{
    ItemId = itemId,
    RevealDocumentJson = proofRequestJson
});
Console.WriteLine("Proof:");
Console.WriteLine(credentialProof.ProofDocumentJson);
// }


// VERIFY CREDENTIAL
// verifyCredential() {
// The airline verifies the credential
walletService.Options.AuthToken = credentialsService.Options.AuthToken = airline;

// Check for valid signature
var valid = await credentialsService.VerifyProofAsync(new VerifyProofRequest
{
    ProofDocumentJson = credentialProof.ProofDocumentJson
});
Console.WriteLine($"Verification result: {valid}");
valid.Should().BeTrue();
// }

static class Extensions
{
    public static ServiceOptions CloneWithAuthToken(this ServiceOptions options, string authToken)
    {
        var cloned = options.Clone();
        cloned.AuthToken = authToken;
        return cloned;
    }
}
