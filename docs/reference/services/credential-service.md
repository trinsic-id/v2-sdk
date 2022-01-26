# Credential Service


## SDK Calls

### Issue Credential
The Credential service supports signing data using [BBS+ Signatures :material-open-in-new:](https://w3c-ccg.github.io/ldp-bbs2020/){target=_blank}. The data is signed with a key unique to the owner's wallet. This key is also used as linked secret, when it comes to proof derivation.

> This endpoint requires that the user provide a valid JSON-LD document.

=== "Trinsic CLI"
    ```bash
    trinsic issuer issue --document <INPUT_JSONLD_FILE> --out <OUTPUT_FILE>
    ```
=== "TypeScript"

    ```typescript
    let unsignedDocument = {
        "@context": "https://w3id.org/security/v2",
        "id": "https://issuer.oidp.uscis.gov/credentials/83627465"
    }

    let signedDocument = await credentialService.issue(unsignedDocument);
    ```

=== "C#"

    ```csharp
    var unsignedDocument = new JObject
    {
        { "@context", "https://w3id.org/security/v2" },
        { "id", "https://issuer.oidp.uscis.gov/credentials/83627465" }
    };

    var signedDocument = await credentialService.IssueCredential(unsignedDocument);
    ```

=== "Python"

    ```python
    import json
    credential_json = json.dumps({
      { "@context", "https://w3id.org/security/v2" },
      { "id", "https://issuer.oidp.uscis.gov/credentials/83627465" }
    })
    credential = await credential_service.issue_credential(credential_json)
    ```

The output of this method will be a signed JSON document using BBS+ Signature Suite 2020. This document is not automatically stored in the wallet when issued. You need to call the [insert record](#insert-record) separately if you'd like to store a copy of this document.

### Issue Credential from Template

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```

### Check Revocation Status

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```

### Update Revocation Status

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```


### Create Proof
Wallets allow data to be shared between parties in a secure manner, using a technique called [Zero Knowledge Proofs](/faq/#what-are-zero-knowledge-proofs). Trinsic Ecosystems uses the BBS+ Signature Proof scheme to allow data to be selectively disclosed to the requesting party. This allows users to share only the requested subset of data, instead the entire document.

The endpoint to create a proof requires two inputs:

- document in the wallet that is signed with the correct signature
- JSONLD frame that describes the data to be disclosed

=== "Trinsic CLI"
    ```bash
    trinsic vc create-proof --document-id <STRING> --out <OUTPUT_FILE> --reveal-document <JSONLD_FRAME_FILE>
    ```
=== "TypeScript"

    ```typescript
    let frame = {
        "@context": "https://www.w3.org/2018/credentials/v1",
        "type": [ "VerifiableCredential" ],
        "@explicit": true,
        "issuer": {}
    }
    let itemId = "<item document id>";

    let signedDocument = await credentialService.createProof(itemId, frame);
    ```

=== "C#"

    ```csharp
    var frame = new JObject
    {
        { "@context", "https://www.w3.org/2018/credentials/v1" },
        { "@explicit", true }
        { "issuer", new JObject() }
    };
    var itemId = "<item document id>";

    var signedDocument = await credentialService.CreateProof(itemId, frame);
    ```

=== "Python"
    
    ```python
    import json
    frame_json = json.dumps({
    "@context": "https://www.w3.org/2018/credentials/v1",
    "type": [ "VerifiableCredential" ],
    "@explicit": true,
    "issuer": {}
    })

    presentation = wallet_services.create_proof(document_id, frame_json)
    ```

### Verify Proof

This endpoint verifies if the submitted data contains a valid proof. The data to be verified must contain a Linked Data Proof with BBS+ signature scheme.

=== "Trinsic CLI"
    ```bash
    trinsic vc issuer verify-proof --proof-document <JSONLD_FILE>
    ```
=== "TypeScript"

    ```typescript
    let isValid = await credentialService.verifyProof(proofDocument);

    console.log("Verify result: " + isValid);
    ```

=== "C#"

    ```csharp
    var isValid = await credentialService.VerifyProof(proofDocument);

    Console.WriteLine($"Verify result: {isValid}");
    ```

=== "Python"
    ```python
    valid = await wallet_service.verify_proof(presentation)
    ```

### Exchange Credentials

Exchanging data securely is one of the fundamental functions of digital identity systems. There are many specifications with varying maturity that aim to provide interoperable and secure way of exchanging authentic data. We are commited to providing support for these methods.

- [DIDComm Messaging :material-open-in-new:](https://identity.foundation/didcomm-messaging/spec/){target=_blank}
- [Wallet And Credential Interactions :material-open-in-new:](https://identity.foundation/wallet-and-credential-interactions/){target=_blank}
- [OpenID Connect Credential Provider :material-open-in-new:](https://mattrglobal.github.io/oidc-client-bound-assertions-spec/){target=_blank}

> During this beta period, we are only supporting exchanging data between users by using their email addresses. The messages are routed securely to the destination wallet without leaving the secure network of the ecosystem backend. Our goal is to provide basic ability to share data without affecting the user experience. As interoperable exchange methods become available, we will add this functionality in the SDK.

#### Sending documents using Email as identifier

To send a document to another user, they must have created a wallet and [associated their email address](#create-wallet-with-provider-invitation) with that wallet.

=== "Trinsic CLI"
    ```bash
    trinsic vc send --email <EMAIL_ADDRESS> --item <FILE>
    ```
=== "TypeScript"

    ```typescript
    await credentialService.send(document, "admin@example.com");
    ```

=== "C#"

    ```csharp
    await credentialService.Send(document, "admin@example.com");
    ```

=== "Python"

    ```python
    await credential_service.send(document, "admin@example.com");
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```
=== "Swift"
    ```swift
    
    ```