# Walkthrough

Let's walk through
a scenario where we create a wallet and use it to issue, present, and verify a credential. 


## 0. Install Trinsic
Before we start, make sure you have an SDK installed.
=== "CLI"

    --8<-- "reference/installation/install-cli.md"

=== "TypeScript"

    --8<-- "reference/installation/install-node.md"

=== "C#"

    --8<-- "reference/installation/install-net.md"

---

## 1. Create a Wallet

=== "CLI"

    ```bash
    trinsic wallet create --description "Alice's Wallet" --name alice && \
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
=== "CLI"

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


The signed document is sent to the user, via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.
The holder stores the document in their wallet.

---

## 3. Store Credential in Wallet
=== "CLI"

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

=== "CLI"

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

=== "CLI"

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
