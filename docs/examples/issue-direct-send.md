---
hide:
    - navigation
---

# Issue directly and send

!!! note "Source code for this example"

    [https://github.com/trinsic-id/sdk/tree/main/examples/issue-direct-send](https://github.com/trinsic-id/sdk/tree/main/examples/issue-direct-send)

### Overview

In this example, we'll go through the process of issuing a credential at our backend and send this credential to the user's wallet by
specifying the user's email address. If the user has not created a wallet in our ecosystem, one will be automatically created for them.
This shows a very basic process of issuance and credential exchange suitable for most scenarios.

This example is done using Node.js. We will use the NPM package of the [Trinsic SDK](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

### Install and initialize the SDK

Add the SDK to your project

```
npm i @trinsic/trinsic
```

Import the required services

```
import { SignatureType, TrinsicService } from "@trinsic/trinsic";

const trinsic = new TrinsicService({
    authToken: "<AUTH_TOKEN>",
});
```

You can obtain auth token from the [Dashboard <small>:material-open-in-new:</small>](https://dashboard.trinsic.id){targer=_blank} by clicking on the View Auth Token in the Home page.

### Issue credential from template

In order to issue a credential, we need to create a template first. Templates contain a set of attributes about the subject of issuance and
are required to ensure that credentials are based on a standardized model. In this example we already have created a template for identity document verification. The schema of this template is located at [https://schema.trinsic.cloud/example/id-document  <small>:material-open-in-new:</small>](https://schema.trinsic.cloud/example/id-document){targer=_blank}. This is our template schema or template ID.

Let's create some data for our template.

```js
const values = {
    // following fields are defined in the schema,
    // but not all are required to be filled in
    firstName: "John",
    lastName: "Dough",
    dateOfBirth: "1990-07-03T10:12:00Z",
    street: "123 Main Street",
    city: "Springfield",
    state: "MD",
    zip: "12345",
    country: "US",
    authorityName: "DMV of Springfield",
    dateOfIssuance: "2019-07-03T10:12:00Z",
    dateOfExpiration: "2032-07-03T10:12:00Z",
    documentType: "DriversLicense",
    documentNumber: "123-456-7890",
    // extra information we'd like to include in the credential
    // that's not part of the credential schema
    additionalData: "Individual was verified in person",
    registeredOnline: true
};
```

And finally, we'll issue the credential and print the response to the console.

```js
const issueResponse = await trinsic.credential().issueFromTemplate({
    // required
    templateId: "https://schema.trinsic.cloud/example/id-document",
    valuesJson: JSON.stringify(values),
    // optional
    signatureType: SignatureType.STANDARD, // or EXPERIMENTAL
    includeGovernance: true,
    expirationDate: "2032-07-03T10:12:00Z",
    saveCopy: false,
});

console.dir(JSON.parse(issueResponse.documentJson), { depth: null, });
```

Let's look at some of the input fields for the `issueFromTemplate()` request.

    - `templateId` is a required field and refers to the template ID that we want to use.
    - `valuesJson` is a required field and must be an object with fields and their values. This object must be passed as JSON stringified value.
    - `signatureType` is optional field that specifies type of signature that will be used to sign the credential. There are currently two types supported: `Standard` will use NIST approved cryptographic curves, specifically the Ed25519 curve with EDDSA signature. The `Experimental` signature type will use BBS Signatures with BLS12381 curve.
    - `includeGovernance` is optional field that specifies if we'd like governance attestation about the issuer to be included with the credential. This will indicate that the issuer is authorized member of the governance framework for the given ecosystem.

    Without governance information:
    ```json
    issuer: 'did:web:example.connect.trinsic.cloud:zThZXjtWu1PsMXHnQfJGam4'
    ```

    With governance information:
    ```json
    issuer: {
        id: 'did:web:example.connect.trinsic.cloud:zThZXjtWu1PsMXHnQfJGam4',
        type: 'AuthoritativeMember',
        governanceFramework: 'urn:trinsic:ecosystems:example',
        trustRegistry: 'urn:egf:example:default'
    }
    ```

    - `expirationDate` is optional and specifies the validity period of the issed credential. If specified, this field must be in ISO 8601 format
    - `saveCopy` is optional and will save a copy of the issued credential in the issuer wallet that will be marked as `IssuedVerifiableCredential`. This copy will not contain any cryptographic data or signatures and it's purpose is to allow the issuers to track the issued credentials and their metadata. This metadata is required if the issuer wants to change the status of the credential and revoke it's validity. This is controlled using the data found in the `credentialStatus` field.

### Send the credential

Finally, we can just send the credential to the user's wallet by specifying its email address. If you want to send an email notification that a credential has been sent to the user's wallet, just set `sendNotification` to true.

```js
await trinsic.credential().send({
    documentJson: issueResponse.documentJson,
    email: "<EMAIL>",
    sendNotification: true,
});

```
Enjoy! 👋
