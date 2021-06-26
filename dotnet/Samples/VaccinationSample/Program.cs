using System;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;

var walletService = new WalletService("<ECOSYSTEM SERVICE URL>");

// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
var allison = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var airline = await walletService.CreateWallet();

// Store profile for later use
// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

// Create profile from existing data
// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

// ISSUE CREDENTIAL
// Sign a credential as the clinic and send it to Allison
walletService.SetProfile(clinic);

var credentialJson = File.ReadAllText("./vaccination-certificate-unsigned.jsonld");
var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));

Console.WriteLine("Credential:");
Console.WriteLine(credential.ToString(Formatting.Indented));

// STORE CREDENTIAL
// Alice stores the credential in her cloud wallet.
walletService.SetProfile(allison);

var itemId = await walletService.InsertItem(credential);

// SHARE CREDENTIAL
// Allison shares the credential with the venue.
// The venue has communicated with Allison the details of the credential
// that they require expressed as a JSON-LD frame.
walletService.SetProfile(allison);

var proofRequestJson = File.ReadAllText("./vaccination-certificate-frame.jsonld");
var credentialProof = await walletService.CreateProof(itemId, JObject.Parse(proofRequestJson));

Console.WriteLine("Proof:");
Console.WriteLine(credentialProof.ToString(Formatting.Indented));


// VERIFY CREDENTIAL
// The airline verifies the credential
walletService.SetProfile(airline);

var valid = await walletService.VerifyProof(credentialProof);

Console.WriteLine($"Verification result: {valid}");
