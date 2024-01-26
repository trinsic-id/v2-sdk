---
hide:
    - navigation
---

# Issue directly and send

!!! note "Source code for this example"

    [https://github.com/trinsic-id/sdk/tree/main/examples/cross-eco-issuance](https://github.com/trinsic-id/sdk/tree/main/examples/cross-eco-issuance)

### Overview

In this example, we'll go through the process of cross ecosystem issuance of verifiable credentials.
We'll be creating a wallet and a credential offer in ecosystem A and creating a wallet and accepting the offer in ecosystem B.

This example is done using typescript. We will use the NPM package of the [Trinsic SDK](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

### Install and initialize the SDK

Add the SDK to your project

```
npm i @trinsic/trinsic
```

Import the required services

```
import {AuthenticateInitRequest, CreateWalletRequest, SignatureType, TrinsicService} from "@trinsic/trinsic";
```

### Create a wallet and a credential offer in ecosystem A

In order to create a credential offer, we need to create the issuer wallet first. After creating Alice's wallet in
ecosystem A, we authenticate as it and create the credential offer (you must have the `templateId` from which you want to issue a VC against).

```ts
// Create the issuer wallet in ecosystem A
let trinsicAlice = new TrinsicService();

const createWalletAliceRequest = {
    ecosystemId: "urn:trinsic:ecosystems:ecosystem-a"
}

let createWalletAliceResponse = await trinsicAlice.wallet().createWallet(createWalletAliceRequest);

console.log("Issuer Wallet: " + createWalletAliceResponse.wallet?.walletId);
console.log("Issuer's Ecosystem: " + createWalletAliceResponse.wallet?.ecosystemId);

// Authenticate as the issuer in ecosystem A
trinsicAlice.setAuthToken(createWalletAliceResponse.authToken!);

// Create the credential offer
const createCredentialOfferRequest = {
    templateId: "https://schema.trinsic.cloud/ecosystem-a/example-credential",
    valuesJson: JSON.stringify({
        "name": "John Doe"
    }),
}

let createCredentialOfferResponse = await trinsicAlice.credential().createCredentialOffer(createCredentialOfferRequest);

console.log("Credential Offer: " + createCredentialOfferResponse.documentJson);
```

### Create a wallet and accept the credential offer in ecosystem B

Now we create the holder wallet (Bob's) in ecosystem B, authenticate as it and accept the credential offer. After that, we print
all items in Bob's wallet to see the VC that was issued by a wallet from ecosystem A and is now stored in a wallet from ecosystem B.

```ts
// Create the holder wallet in ecosystem B
let trinsicBob = new TrinsicService();

const createWalletBobRequest = {
    ecosystemId: "urn:trinsic:ecosystems:ecosystem-b"
}

let createWalletBobResponse = await trinsicBob.wallet().createWallet(createWalletBobRequest);

console.log("\nHolder Wallet: " + createWalletBobResponse.wallet?.walletId);
console.log("Holder's Ecosystem: " + createWalletBobResponse.wallet?.ecosystemId);

// Authenticate as the holder in ecosystem B
trinsicBob.setAuthToken(createWalletBobResponse.authToken!);

// Accept the credential offer
let acceptCredentialOfferRequest = {
    documentJson: createCredentialOfferResponse.documentJson,
}

const acceptCredentialResponse = await trinsicBob.credential().acceptCredential(acceptCredentialOfferRequest);

// Credential issued in ecosystem A stored inside a wallet from ecosystem B
const searchWalletBobResponse = await trinsicBob.wallet().searchWallet();

console.log("VC in holder's wallet: " + searchWalletBobResponse.items);
```

Enjoy! 👋
