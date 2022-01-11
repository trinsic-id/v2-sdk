# Walkthrough for Java

--8<----
/snippets/intro-infrastructure.md
/snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you'll only need Java (TODO - Specify exact recent version) installed

## Sample Project

Clone this sdk repository: <link>

In this project, we'll be following along the `java/src/test/java/trinsic/VaccineDemo.java`


## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. 

<!--codeinclude-->
```java
[Create Wallet](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:createService
```
<!--/codeinclude-->

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](../reference/services/wallet-service/#create-wallet) feature.

<!--codeinclude-->
```java
[Setup Wallets](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:setupActors
```
<!--/codeinclude-->

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

<!--codeinclude-->
```java
[Save and Load Profile](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:storeAndRecallProfile
```
<!--/codeinclude-->

Read more about [security profiles](../reference/index.md#authorization) and authentication.

## Certificate issuance

Upon receiving her vaccine, Allison also receives a digital certificate from the clinic. This certificate is digitally signed by the clinic, acting as an issuer.
The certificate is in a JSON form, and for this example, we will use the following JSON. Add this file to your project named `vaccination-certificate-unsigned.jsonld`.

=== "vaccination-certificate-unsigned.jsonld"
```json
----8<---- "devops/testdata/vaccination-certificate-unsigned.jsonld"
```

We specify links to the jsonld files:
<!--codeinclude-->
```java
[Data Paths](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:pathData
```
<!--/codeinclude-->

Let's set the active profile to the clinic, and call the issuance endpoint
<!--codeinclude-->
```java
[Issue Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:issueCredential
```
<!--/codeinclude-->

At this point, the clinic can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](../reference/services/wallet-service/#insert-record) function.

<!--codeinclude-->
```java
[Store Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:storeCredential
```
<!--/codeinclude-->

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

<!--codeinclude-->
```java
[Share Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:shareCredential
```
<!--/codeinclude-->

## Verification

Allison shares the proof of credential she created with the airline. The airline can now use [Verify Proof](../reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

<!--codeinclude-->
```java
[Verify Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:verifyCredential
```
<!--/codeinclude-->

## Complete sample code

This sample is available in our [GitHub](https://github.com/trinsic-id/sdk/tree/main/java/src/test/java) repo.

