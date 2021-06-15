using System;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;
using Trinsic.Services;

var walletService = new WalletService("http://20.84.172.172:5000");

// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
var alice = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var venue = await walletService.CreateWallet();

// ISSUE CREDENTIAL
// Sign a credential as the clinic and send it to Alice
walletService.SetProfile(clinic);

var credentialJson = File.ReadAllText("./vaccination-certificate-unsigned.jsonld");
var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));

Console.WriteLine("Credential:");
Console.WriteLine(credential.ToString(Formatting.Indented));

// STORE CREDENTIAL
// Alice stores the credential in her cloud wallet.
walletService.SetProfile(alice);

var itemId = await walletService.InsertItem(credential);

// SHARE CREDENTIAL
// Alice shares the credential with the venue.
// The venue has communicated with alice the details of the credential
// that they require expressed as a JSON-LD frame.
walletService.SetProfile(alice);

var proofRequestJson = File.ReadAllText("./vaccination-certificate-frame.jsonld");
var credentialProof = await walletService.CreateProof(itemId, JObject.Parse(proofRequestJson));

Console.WriteLine("Proof:");
Console.WriteLine(credentialProof.ToString(Formatting.Indented));


// VERIFY CREDENTIAL
walletService.SetProfile(venue);

var valid = await walletService.VerifyProof(credentialProof);

Console.WriteLine($"Verification result: {valid}");
