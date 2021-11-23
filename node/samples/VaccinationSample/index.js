const { WalletService, AccountService, CredentialService } = require('../../lib');
const fs = require('fs');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

const main = async () => {
  let accountService = new AccountService();

  // SETUP ACTORS
  // Create 3 different profiles for each participant in the scenario
  let allison = await accountService.signIn();
  let clinic = await accountService.signIn();
  let airline = await accountService.signIn();
  
  // Store profile for later use
  // fs.writeFileSync("allison.bin", allison.serializeBinary());
  
  // Create profile from existing data
  // let profile = fs.readFileSync("allison.bin");
  // let allison = WalletProfile.deserializeBinary(profile);

  // ISSUE CREDENTIAL
  // Sign a credential as the clinic and send it to Allison
  var credentialService = new CredentialService(clinic);
  
  let credentialJson = fs.readFileSync("./vaccination-certificate-unsigned.jsonld");
  let credential = await credentialService.issue(JSON.parse(credentialJson));
  
  console.log("Credential:");
  console.log(credential);
  
  // STORE CREDENTIAL
  // Alice stores the credential in her cloud wallet.
  var walletService = new WalletService(allison);

  let itemId = await walletService.insertItem(credential);
  
  // SHARE CREDENTIAL
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  credentialService = new CredentialService(allison);
  
  let proofRequestJson = fs.readFileSync("./vaccination-certificate-frame.jsonld");
  let credentialProof = await credentialService.createProof(itemId, JSON.parse(proofRequestJson));
  
  console.log("Proof:");
  console.log(credentialProof);
  
  
  // VERIFY CREDENTIAL
  // The airline verifies the credential
  credentialService = new CredentialService(airline);
  
  let valid = await credentialService.verifyProof(credentialProof);
  
  console.log("Verification result:", valid);
}

main();