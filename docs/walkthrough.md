# Walkthrough
It can be challenging to understand how verifiable credentials work until you see some examples. This walkthrough will show how a vaccination card might be issued, held, and proven using verifiable credentials with Trinsic. 

## Meet Allison
Allison's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Allison's town as a pilot.

The CDC has independently published <a>https://cdc.gov/.well-known/credentials/covid19-vaccination-card.jsonld</a>. This is the latest vaccination card that should be issued.

We'll walk through a scenario where Allison gets her vaccination card and then generates a pass with it to board an airline, all using her devices.

## Brief Terminology Explainer
If you haven't learned about verifiable credentials already, first read [Verifiable Credential Basic](https://trinsic.id/trinsic-basics-the-verifiable-credentials-model/).

In most credential exchange scenarios there are three primary roles - Issuer, Holder, and Verifier. 

**Issuer**: Responsible for issuing signed credentials that attest information about a credential subject

**Holder**: Stores issued credentials from an issuer. Most often this is the credential subject. Also generates passes to share with verifiers.

**Verifier**: Verifies passes presented from holders. 

<!-- There are also two parties who are not talked that provide the human layer of trust. A governance authority defines the credential and pass templates.

**Governance Authority** - todo 

**Ecosystem Provider** -  -->
## 0. Install Trinsic
Before we start, make sure you have an SDK installed.
We currently support a CLI, TypeScript, and C# SDKs

=== "Trinsic CLI"

    --8<-- "reference/installation/install-cli.md"

=== "TypeScript"

    --8<-- "reference/installation/install-node.md"

=== "C#"

    --8<-- "reference/installation/install-net.md"

---

## 1. Creating the Wallets
We'll start by creating a wallet for each participant in this credential exchange. Wallets can be created by anyone, for anyone. In this scenario, we have three wallets. Allison will be the credential holder, the Airline will be the verifier, and the vaccination clinic will be the issuer.


=== "Trinsic CLI"

    ```bash
    trinsic wallet create --description "Allison's Wallet" --name allison && \
    trinsic wallet create --description "Airline's wallet" --name airline && \
    trinsic wallet create --description "Vaccination Clinic" --name clinic
    ```
=== "TypeScript"

    ```js
    coming soon
    ```

=== "C#"

    ```csharp
    var providerProfile = await walletService.CreateWallet(); 
    providerService.SetProfile(providerProfile);
    ```

--- 


## 2. Issue a Credential
This will sign the credential stored in the cloud wallet and store it back locally. 

[Reference: Issue a Credential](reference/services/wallet-service.md#issue-credential)

=== "Trinsic CLI"

    ```bash
    trinsic --profile clinic issuer issue --document ./covid-vocab/vaccination-certificate-unsigned.jsonld --out ./covid-vocab/vaccination-certificate-signed.jsonld
    ```
=== "TypeScript"

    ```js
    coming soon
    ```

=== "C#"

    ```csharp
    var unsignedDocument = new JObject
    {
        { "@context", "https://w3id.org/security/v3-unstable" },
        { "id", "https://issuer.oidp.uscis.gov/credentials/83627465" }
    };

    var issueResponse = await walletService.IssueCredential(unsignedDocument);
    ```

---

## 3. Store Credential in Wallet

[Reference: Insert Item]()
=== "Trinsic CLI"

    ```bash
    trinsic --profile alice wallet insert-item --item ./covid-vocab/vaccination-certificate-signed.jsonld

    ```

=== "TypeScript"

    ```js
    coming soon
    ```

=== "C#"

    ```csharp
    var itemId = await walletService.InsertItem(issueResponse);
    ```

Note down the response `item_id`.

---

## 4. Create Proof

Replace the `<item_id>` in the command bellow with the output from the `insert_item` above.

=== "Trinsic CLI"

    ```bash
    trinsic --profile alice issuer create-proof --document-id urn:uuid:bcb9aa00-b471-43dd-86e6-03a0c16029d8 --out ./covid-vocab/vaccination-certificate-partial-proof.jsonld --reveal-document ./covid-vocab/vaccination-certificate-frame.jsonld
    ```

=== "TypeScript"

    ```js
    coming soon
    ```

=== "C#"

    ```csharp
    var proof = await walletService.CreateProof(itemId, new JObject { { "@context", "https://w3id.org/security/v3-unstable" } });
    ```


The proof is sent to the verifying party via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.

---

## 5. Verify Proof

=== "Trinsic CLI"

    ```bash
    trinsic --profile airline issuer verify-proof --proof-document ./covid-vocab/vaccination-certificate-partial-proof.jsonld
    ```

=== "TypeScript"

    ```js
    coming soon
    ```

=== "C#"

    ```csharp
    var valid = await walletService.VerifyProof(proof);
    ```

Watch for the output of `true` to know that the credential successfully passed all of the verification processes.
