const { WalletService, WalletProfile } = require('../../lib');
const fs = require('fs');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

const main = async () => {
  let walletService = new WalletService()//"http://20.84.172.172:5000");

  // SETUP ACTORS
  // Create 3 different profiles for each participant in the scenario
  let allison = await walletService.createWallet();
  let clinic = await walletService.createWallet();
  let airline = await walletService.createWallet();
  
  // Store profile for later use
  // fs.writeFileSync("allison.bin", allison.serializeBinary());
  
  // Create profile from existing data
  // let profile = fs.readFileSync("allison.bin");
  // let allison = WalletProfile.deserializeBinary(profile);

  // ISSUE CREDENTIAL
  // Sign a credential as the clinic and send it to Allison
  walletService.setProfile(clinic);
  
  let credentialJson = fs.readFileSync("./vaccination-certificate-unsigned.jsonld");
  let credential = await walletService.issueCredential(JSON.parse(credentialJson));
  
  console.log("Credential:");
  console.log(credential);
  
  // STORE CREDENTIAL
  // Alice stores the credential in her cloud wallet.
  walletService.setProfile(allison);
  
  let itemId = await walletService.insertItem(credential);
  
  // SHARE CREDENTIAL
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  walletService.setProfile(allison);
  
  let proofRequestJson = fs.readFileSync("./vaccination-certificate-frame.jsonld");
  let credentialProof = await walletService.createProof(itemId, JSON.parse(proofRequestJson));
  
  console.log("Proof:");
  console.log(credentialProof);
  
  
  // VERIFY CREDENTIAL
  // The airline verifies the credential
  walletService.setProfile(airline);
  
  let valid = await walletService.verifyProof(credentialProof);
  
  console.log("Verification result:", valid);
}

main();