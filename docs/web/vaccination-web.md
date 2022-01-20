# Vaccination Use Case for Browsers

--8<----
walkthrough/snippets/intro-infrastructure.md
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
npm i @trinsic/trinsic-web
```

```bash
npm i --save-dev http-server webpack webpack-cli
```

## Configure Webpack

After installing the dependencies you'll need a configuration file for webpack.
Create a file called webpack.config.js at the root of your project and then copy and paste this into that file
```js
const path = require('path');

module.exports = {
  mode: 'development',
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, './src'),
    filename: 'bundle.js',
  }
};
```

## Set up Website

Create a simple html page with a script tag referencing the webpack bundle that will be built after completing the sample code. Note that you will not have the bundle.js file yet because it will be generated from the index.js file you create.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vaccination Sample</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
</head>
<body>
  <h1>Vaccination Sample</h1>
  <div id="wallet"></div>
</body>
<script src="../bundle.js"></script>
</html>
```

Your file structure should look like this

```
VaccinationSample
    src
        index.html
        index.js
    package.json
    webpack.config.js
```

## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. In your `index.js` file add the following line replacing the placeholder with your URL:

```js
import { AccountService, WalletService, CredentialService } from '@trinsic/trinsic-web';

const accountService = new WalletService("<ECOSYSTEM SERVICE URL>");
```

Now set up the Account service

<!--codeinclude-->
```javascript
[Create Account Service](../../web/test/VaccineDemo.test.js) inside_block:createAccountService
```
<!--/codeinclude-->

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](../reference/services/wallet-service/#create-wallet) feature.

<!--codeinclude-->
```javascript
[Create Wallet Profiles](../../web/test/VaccineDemo.test.js) inside_block:setupActors
```
<!--/codeinclude-->

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

```js
const fs = require('fs');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

// Serialize profile by exporting the binary protobuf form
localStorage.setItem("allison.bin", allison.serializeBinary());

// Create profile from existing data
let allison = WalletProfile.deserializeBinary(localStorage.getItem("allison.bin"));
```

!!! note "Loading Profiles"
    In order to load a profile from a saved file you'll need to install google-protobuf with `npm i google-protobuf` in order to use the Struct class and convert the DID Document from JavaScript to the protobuf form.

Read more about [security profiles](../reference/index.md/profiles) and authentication.

## Certificate issuance

Upon receiving her vaccine, Allison also receives a digital certificate from the clinic. This certificate is digitally signed by the clinic, acting as an issuer.
The certificate is in a JSON form, and for this example, we load the JSON structure directly.

=== "vaccination-certificate-unsigned.json"
```json
----8<---- "web/test/data/vaccination-certificate-unsigned.json"
```

Now let's set up the wallet and credential services with the appropriate profiles.

<!--codeinclude-->
```javascript
[Create Services](../../web/test/VaccineDemo.test.js) inside_block:createService
```
<!--/codeinclude-->

Now we are ready to issue a credential.

<!--codeinclude-->
```javascript
[Issue Credential](../../web/test/VaccineDemo.test.js) inside_block:issueCredential
```
<!--/codeinclude-->

At this point, the clinic can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](../reference/services/wallet-service/#insert-record) function.

<!--codeinclude-->
```javascript
[Store Credential](../../web/test/VaccineDemo.test.js) inside_block:storeCredential
```
<!--/codeinclude-->

## Proof of vaccination

Before boarding an airplane, Allison must show a proof of vaccination. The request for this proof also comes in a form of JSON, in this case a JSON-LD frame.
This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

This request asks Allison to provide proof of valid vaccination certificate, including the `issuer`, `batchNumber`and `countryOfVaccination` fields.

Allison can use the [Create Proof](../reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

Let's save this request in a file named `vaccination-certificate-frame.json`

=== "vaccination-certificate-frame.json"
```json
----8<---- "web/test/data/vaccination-certificate-frame.json"
```

This request asks Allison to provide proof of valid vaccination certificate, including the `issuer`, `batchNumber`and `countryOfVaccination` fields.

Allison can use the [Create Proof](../reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

<!--codeinclude-->
```javascript
[Share Credential](../../web/test/VaccineDemo.test.js) inside_block:shareCredential
```
<!--/codeinclude-->

## Verification

Allison shares the proof of credential she created with the airline. The airline can now use [Verify Proof](../reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

<!--codeinclude-->
```javascript
[Verify Credential](../../web/test/VaccineDemo.test.js) inside_block:verifyCredential
```
<!--/codeinclude-->

## Build
To build the bundle.js file run
```bash
webpack build
```

## Run
To serve the website and run the sample run
```bash
npx http-server src
```

## Complete sample code

This sample is available in our [GitHub]() repo.

