# Vaccination Use Case for Node.js

--8<----
snippets/intro-infrastructure.md
snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you only need node and npm installed on your machine and a code editor of your choice.

## Create new project

Let's create a new console app that we will use to add our sample code

```bash
mkdir VaccinationSample && cd VaccinationSample && npm init
```

You can select all the defaults for the node project.

Add the required dependencies

```bash
npm i @trinsic/trinsic
```

## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. In your `index.js` file add the following line replacing the placeholder with your URL:

```js
const { WalletService } = require('@trinsic/trinsic')

const walletService = new WalletService("<ECOSYSTEM SERVICE URL>");
```

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](../reference/services/wallet-service/#create-wallet) feature.

```js
let allison = await walletService.createWallet();
let clinic = await walletService.createWallet();
let airline = await walletService.createWallet();
```

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

```js
const fs = require('fs');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

// Serialize profile by exporting the binary protobuf form
fs.writeFileSync("allison.bin", allison.serializeBinary());

// Create profile from existing data
let profile = fs.readFileSync("allison.bin");
let allison = WalletProfile.deserializeBinary(profile);
```

!!! note "Loading Profiles"
    In order to load a profile from a saved file you'll need to install google-protobuf with `npm i google-protobuf` in order to use the Struct class and convert the DID Document from JavaScript to the protobuf form.

Read more about [security profiles](../reference/index.md#authorization) and authentication.

## Certificate issuance

Upon receiving her vaccine, Allison also receives a digital certificate from the clinic. This certificate is digitally signed by the clinic, acting as an issuer.
The certificate is in a JSON form, and for this example, we will use the following JSON. Add this file to your project named `vaccination-certificate-unsigned.jsonld`.

=== "vaccination-certificate-unsigned.jsonld"
```json
----8<---- "devops/testdata/vaccination-certificate-unsigned.jsonld"
```

Let's set the active profile to the clinic, and call the issuance endpoint

```js
// Set active profile to 'clinic' so we can issue credential signed
// with the clinic's signing keys
walletService.setProfile(clinic);

// Read the JSON credential data
let credentialJson = fs.readFileSync("./vaccination-certificate-unsigned.jsonld");

// Sign the credential using BBS+ signature scheme
let credential = await walletService.issueCredential(JSON.parse(credentialJson));
```

At this point, the clinic can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](../reference/services/wallet-service/#insert-record) function.

```js
// Set active profile to 'allison' so we can manage her cloud wallet
walletService.setProfile(allison);

// Insert the signed credential
let itemId = await walletService.insertItem(credential);
```

## Proof of vaccination

Before boarding an airplane, Allison must show a proof of vaccination. The request for this proof also comes in a form of JSON, in this case a JSON-LD frame.
This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

Let's save this request in a file named `vaccination-certificate-frame.jsonld`

=== "vaccination-certificate-frame.jsonld"
```json
----8<---- "devops/testdata/vaccination-certificate-frame.jsonld"
```

This request asks Allison to provide proof of valid vaccination certificate, including the `issuer`, `batchNumber`and `countryOfVaccination` fields.

Allison can use the [Create Proof](../reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

```js
// We'll read the request frame from a file and communicate this with Allison
let proofRequestJson = fs.readFileSync("./vaccination-certificate-frame.jsonld");

// Set the active profile to 'allison'
walletService.setProfile(allison);

// Build a proof for the given request and the `itemId` we previously received
// which points to the stored credential
let credentialProof = await walletService.createProof(itemId, JSON.parse(proofRequestJson));
```

## Verification

Allison shares the proof of credential she created with the airline. The airline can now use [Verify Proof](../reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

```js
// Set active profile to 'airline'
walletService.setProfile(airline);

// Check for valid signature
let valid = await walletService.verifyProof(credentialProof);
```

## Complete sample code

This sample is available in our [GitHub]() repo.

