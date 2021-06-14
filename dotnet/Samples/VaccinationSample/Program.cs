using System;
using System.IO;
using Google.Protobuf.WellKnownTypes;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Trinsic;
using Trinsic.Services;

Console.WriteLine("Hello World!");

var walletService = new WalletService("http://20.84.172.172:5000");

var configuration = await walletService.Client.GetProviderConfigurationAsync(new GetProviderConfigurationRequest());

Console.WriteLine("Provider Configuration:");
Console.WriteLine(configuration.DidDocument.ToJObject().ToString(Formatting.Indented));

var alice = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var venue = await walletService.CreateWallet();

walletService.SetProfile(alice);

var credentialJson = File.ReadAllText("./vaccination-certificate-unsigned.jsonld");
var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));

Console.WriteLine(credential.ToString(Formatting.Indented));
