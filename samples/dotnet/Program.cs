using System;
using System.IO;
using System.Linq;
using FluentAssertions;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Provider.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.V1;

const string VaccinationCertificateUnsigned = "vaccination-certificate-unsigned.jsonld";
const string VaccinationCertificateFrame = "vaccination-certificate-frame.jsonld";


var trinsic = new TrinsicService();
// createAccountService() {
var (ecosystem, _) = trinsic.Provider.CreateEcosystem(new CreateEcosystemRequest());
var ecosystemId = ecosystem.Id;
// }

// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
// setupActors() {
var allison = await trinsic.Account.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
var clinic = await trinsic.Account.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
var airline = await trinsic.Account.SignInAsync(new SignInRequest { EcosystemId = ecosystemId });
// }

trinsic.Account.Options.AuthToken = clinic;
var info = await trinsic.Account.GetInfoAsync();
info.Should().NotBeNull();

// ISSUE CREDENTIAL
// Sign a credential as the clinic and send it to Allison
// issueCredential() {
// Set active profile to 'clinic' so we can issue credential signed
// with the clinic's signing keys
trinsic.Options.AuthToken = clinic;

// Read the JSON credential data
var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
// Sign the credential using BBS+ signature scheme
var credential = await trinsic.Credential.IssueCredentialAsync(new IssueRequest { DocumentJson = credentialJson });
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
trinsic.Wallet.Options.AuthToken = trinsic.Credential.Options.AuthToken = allison;

var insertResponse = await trinsic.Wallet.InsertItemAsync(new InsertItemRequest { ItemJson = credential.SignedDocumentJson });
var walletItems = await trinsic.Wallet.SearchAsync(new SearchRequest());
Console.WriteLine($"Last wallet item:\n{walletItems.Items.ToList().Last()}");
// }

// SHARE CREDENTIAL
// Allison shares the credential with the venue.
// The venue has communicated with Allison the details of the credential
// that they require expressed as a JSON-LD frame.
// shareCredential() {
// We'll read the request frame from a file and communicate this with Allison
trinsic.Wallet.Options.AuthToken = trinsic.Credential.Options.AuthToken = allison;

var proofRequestJson = await File.ReadAllTextAsync(VaccinationCertificateFrame);

// Build a proof for the given request and the `itemId` we previously received
// which points to the stored credential
var credentialProof = await trinsic.Credential.CreateProofAsync(new CreateProofRequest
{
    ItemId = insertResponse.ItemId,
    RevealDocumentJson = proofRequestJson
});
Console.WriteLine("Proof:");
Console.WriteLine(credentialProof.ProofDocumentJson);
// }


// VERIFY CREDENTIAL
// verifyCredential() {
// The airline verifies the credential
trinsic.Wallet.Options.AuthToken = trinsic.Credential.Options.AuthToken = airline;

// Check for valid signature
var valid = await trinsic.Credential.VerifyProofAsync(new VerifyProofRequest
{
    ProofDocumentJson = credentialProof.ProofDocumentJson
});
Console.WriteLine($"Verification result: {valid}");
valid.IsValid.Should().BeTrue();
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
