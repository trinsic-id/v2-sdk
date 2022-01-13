# Walkthrough for Android

--8<----
/snippets/intro-infrastructure.md
/snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you'll only need Java (TODO - Specify exact recent version) installed

## Sample Project

Clone this sdk repository: [trinsic-id/sdk-examples](https://github.com/trinsic-id/sdk-examples)

In this project, we'll be following along the `/android/app/src/main/java/id/trinsic/android/DriversLicenseDemo.kt`


## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. 

```kotlin
val config = TrinsicUtilities.getConfigFromUrl("https://staging-internal.trinsic.cloud:443")
val accountService = AccountService(null, config)

val walletService = WalletService(null, config)
val credentialsService = CredentialsService(null, config)
```

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](../reference/services/wallet-service/#create-wallet) feature.

```kotlin
fun setupActors() {
    // SETUP ACTORS
    allison = accountService.signIn(null).profile
    motorVehicleDepartment = accountService.signIn(null).profile
    policeOfficer = accountService.signIn(null).profile
}
```

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

Read more about [security profiles](../reference/index.md#authorization) and authentication.

## Certificate issuance

Upon receiving her driver's license, Allison also receives a digital certificate from the DMV. This certificate is digitally signed by the DMV, acting as an issuer.
The certificate is in a JSON form, and for this example, we will use the following JSON. This file is found in `android/app/src/main/assets/drivers-license-unsigned.json`.

```json
{
    "@context": [
      "https://www.w3.org/2018/credentials/v1",
      "https://w3id.org/vdl/v1",
      "https://w3id.org/security/bbs/v1"
    ],
    "type": [
      "VerifiableCredential",
      "Iso18013DriversLicenseCredential"
    ],
    "credentialSubject": {
      "id": "did:key:z6MkhdEKMp6Buh8tPB1BV5etVkqx32q5nbVmzWPLpWSHyshm",
      "license": {
        "type": "Iso18013DriversLicense",
        "document_number": "542426814",
        "family_name": "TURNER",
        "given_name": "SUSAN",
        "birth_date": "1998-08-28",
        "issue_date": "2018-01-15T10:00:00Z",
        "expiry_date": "2022-08-27T12:00:00Z",
        "issuing_country": "US",
        "issuing_authority": "UT",
        "un_distinguishing_sign": "USA"
      }
    }
}
```

Let's set the active profile to the DMV, and call the issuance endpoint

```kotlin
fun issueCredential(credentialString: String): HashMap<*, *>? {
    // ISSUE CREDENTIAL
    credentialsService.profile = motorVehicleDepartment
    val credentialJson = Gson().fromJson(
        credentialString,
        java.util.HashMap::class.java
    )
    val credential = credentialsService.issueCredential(credentialJson)
    println("Credential: $credential")

    return credential
}
```

At this point, the DMV can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](../reference/services/wallet-service/#insert-record) function.

```kotlin
fun saveCredential(credential: HashMap<*, *>): String {
    // STORE CREDENTIAL
    walletService.profile = allison
    val itemId = walletService.insertItem(credential)
    println("item id = $itemId")

    return itemId
}
```

## Proof of Driver's License

If Allison is ever stopped by a police officer, she must show her driver's license. The request for this proof also comes in a form of JSON frame.
This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

Let's save this request in a file named `drivers-license-frame.json`

```json
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1",
    "https://w3id.org/vdl/v1",
    "https://w3id.org/security/bbs/v1"
  ],
  "type": [
    "VerifiableCredential",
    "Iso18013DriversLicenseCredential"
  ],
  "credentialSubject": {
    "@explicit": true,
    "license": {
      "type": "Iso18013DriversLicense",
      "@explicit": true,
      "birth_date": {},
      "document_number": {},
      "expiry_date": {},
      "issuing_authority": {}
    }
  }
}
```

This request asks Allison to provide proof of a valid driver's license, including the `issuing_authority`, `birth_date`, `expiry_number`, and `document_number` fields.

Allison can use the [Create Proof](../reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

```kotlin
fun createProof(credentialFrameString: String, itemId: String): HashMap<*,*> {
    // SHARE CREDENTIAL
    credentialsService.profile = allison
    val proofRequestJson = Gson().fromJson(
        credentialFrameString,
        java.util.HashMap::class.java
    )
    val credentialProof = credentialsService.createProof(itemId, proofRequestJson)
    println("Proof: {credential_proof}")
    return credentialProof
}
```

## Verification

Allison shares the proof of credential she created with the police officer. The officer can now use [Verify Proof](../reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

```kotlin
fun verifyProof(credentialProof: HashMap<*,*>): Boolean {
    // VERIFY CREDENTIAL
    credentialsService.profile = policeOfficer
    return credentialsService.verifyProof(credentialProof)
}
```

## Complete sample code

This sample is available in our [GitHub](https://github.com/trinsic-id/sdk-examples/blob/main/android/app/src/main/java/id/trinsic/android/) repo.

