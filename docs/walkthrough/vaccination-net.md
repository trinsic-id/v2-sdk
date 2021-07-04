# Vaccination Use Case for .NET Core

--8<----
walkthrough/snippets/intro-infrastructure.md
walkthrough/snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you only need .NET Core installed. We will use the dotnet CLI and the editor of your choice.

!!! note "Supported runtimes"
    Xamarin targets for iOS and Android are fully supported using the same package dependencies. Support for Blazor in Web Assembly will be available in a future release.

## Create new project

Let's create a new .NET console app that we will use to add our sample code

```bash
dotnet new console -n VaccinationSample && cd VaccinationSample
```

Add the required dependencies

```bash
dotnet add package Trinsic --prerelease
dotnet add package Okapi.Net --prerelease
```

!!! note ""
    The package `Okapi.Net` is already a dependency of `Trinsic` package, but we must add explicitly to bring in static library dependencies.
    This will not be required in future version and only package `Trinsic` can be used.

## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. In your `Program.cs` file add the following line replacing the placeholder with your URL:

```csharp
using Trinsic;

var walletService = new WalletService("<ECOSYSTEM SERVICE URL>");
```

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](/reference/services/wallet-service/#create-wallet) feature.

```csharp
var allison = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var airline = await walletService.CreateWallet();
```

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

```csharp
using Google.Protobuf;
using System.IO;

// Serialize profile by exporting the binary protobuf form
File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

// Create profile from existing data
var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));
```

Read more about [security profiles](../setup/index.md#authorization) and authentication.

## Certificate issuance

Upon receiving her vaccine, Allison also receives a digital certificate from the clinic. This certificate is digitally signed by the clinic, acting as an issuer.
The certificate is in a JSON form, and for this example, we will use the following JSON. Add this file to your project named `vaccination-certificate-unsigned.jsonld`.

=== "vaccination-certificate-unsigned.jsonld"
    ```json
    {
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
    }
    ```

Let's set the active profile to the clinic, and call the issuance endpoint

```csharp
// Set active profile to 'clinic' so we can issue credential signed
// with the clinic's signing keys
walletService.SetProfile(clinic);

// Read the JSON credential data
var credentialJson = File.ReadAllText("./vaccination-certificate-unsigned.jsonld");

// Sign the credential using BBS+ signature scheme
var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));
```

At this point, the clinic can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](/reference/services/wallet-service/#insert-record) function.

```csharp
// Set active profile to 'allison' so we can manage her cloud wallet
walletService.SetProfile(allison);

// Insert the signed credential
var itemId = await walletService.InsertItem(credential);
```

## Proof of vaccination

Before boarding an airplane, Allison must show a proof of vaccination. The request for this proof also comes in a form of JSON, in this case a JSON-LD frame.
This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

Let's save this request in a file named `vaccination-certificate-frame.jsonld`

=== "vaccination-certificate-frame.jsonld"
    ```json
    {
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
    }
    ```

This request asks Allison to provide proof of valid vaccination certificate, including the `issuer`, `batchNumber`and `countryOfVaccination` fields.

Allison can use the [Create Proof](/reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

```csharp
// We'll read the request frame from a file and communicate this with Allison
var proofRequestJson = File.ReadAllText("./vaccination-certificate-frame.jsonld");

// Set the active profile to 'allison'
walletService.SetProfile(allison);

// Build a proof for the given request and the `itemId` we previously received
// which points to the stored credential
var credentialProof = await walletService.CreateProof(itemId, JObject.Parse(proofRequestJson));
```

## Verification

Allison shares the proof of credential she created with the airline. The airline can now use [Verify Proof](/reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

```csharp
// Set active profile to 'airline'
walletService.SetProfile(airline);

// Check for valid signature
var valid = await walletService.VerifyProof(credentialProof);
```

## Complete sample code

This sample is available in our [GitHub]() repo. You can also simply run the code using Replit and inspect the results.

??? example "Run example in Replit"
    <iframe frameborder="0" width="100%" height="650px" src="https://replit.com/@trinsic/VaccinationSample-dotnet?lite=true"></iframe>