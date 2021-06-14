using System;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;

Console.WriteLine("Hello World!");

var walletService = new WalletService("http://localhost:5000");

var alice = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var venue = await walletService.CreateWallet();


walletService.SetProfile(alice);

var credentialJson = File.ReadAllText("./vaccination-certificate-unsigned.jsonld");
var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));

Console.WriteLine(credential.ToString(Formatting.Indented));