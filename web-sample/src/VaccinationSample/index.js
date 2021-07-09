const { WalletService, WalletProfile } = require('@trinsic/trinsic-web');
const { BinaryWriter } = require('google-protobuf');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

const main = async () => {
  let walletService = new WalletService("http://tomislav-staging.eastus.azurecontainer.io:5000")

  // SETUP ACTORS
  // Create 3 different profiles for each participant in the scenario
  let allison = await walletService.createWallet();
  let clinic = await walletService.createWallet();
  let airline = await walletService.createWallet();
  
  // Store profile for later use
  // localStorage.setItem("allison.bin", allison.serializeBinary());
  
  // Create profile from existing data
  // let allison = WalletProfile.deserializeBinary(localStorage.getItem("allison.bin"));
  
  // ISSUE CREDENTIAL
  // Sign a credential as the clinic and send it to Allison
  walletService.setProfile(clinic);
  
  let credentialJson = {
    "@context": [
        "https://www.w3.org/2018/credentials/v1",
        "https://w3id.org/vaccination/v1",
        "https://w3id.org/security/bbs/v1"
    ],
    "id": "urn:uvci:af5vshde843jf831j128fj",
    "type": [
        "VaccinationCertificate",
        "VerifiableCredential"
    ],
    "description": "COVID-19 Vaccination Certificate",
    "name": "COVID-19 Vaccination Certificate",
    "expirationDate": "2029-12-03T12:19:52Z",
    "issuanceDate": "2019-12-03T12:19:52Z",
    "issuer": "did:key:zUC724vuGvHpnCGFG1qqpXb81SiBLu3KLSqVzenwEZNPoY35i2Bscb8DLaVwHvRFs6F2NkNNXRcPWvqnPDUd9ukdjLkjZd3u9zzL4wDZDUpkPAatLDGLEYVo8kkAzuAKJQMr7N2",
    "credentialSubject": {
        "id": "urn:uuid:c53e70f8-ce9a-4576-8744-e5f85c20a743",
        "type": "VaccinationEvent",
        "batchNumber": "1183738569",
        "countryOfVaccination": "US"
    }
  };
  let credential = await walletService.issueCredential(credentialJson);
  
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
  
  let proofRequestJson = {
    "@context": [
        "https://www.w3.org/2018/credentials/v1",
        "https://w3id.org/vaccination/v1",
        "https://w3id.org/security/bbs/v1"
    ],
    "type": [
        "VerifiableCredential",
        "VaccinationCertificate"
    ],
    "@explicit": true,
    "issuer": {},
    "credentialSubject": {
        "@explicit": true,
        "@type": "VaccinationEvent",
        "batchNumber": {},
        "countryOfVaccination": {}
    }
  };
  let credentialProof = await walletService.createProof(itemId, proofRequestJson);
  
  console.log("Proof:");
  console.log(credentialProof);
  
  
  // VERIFY CREDENTIAL
  // The airline verifies the credential
  walletService.setProfile(airline);
  
  let valid = await walletService.verifyProof(credentialProof);
  
  console.log("Verification result:", valid);

  document.getElementById("wallet").innerHTML = valid
}

main();