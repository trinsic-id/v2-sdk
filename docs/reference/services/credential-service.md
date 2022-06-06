# Credential Service

The Credentials Service gives you the ability to manage complex workflows related to DIDs (contacts/Connections) and VCs (credential issuance, Revocation, Verification, etc). This is probably the service you will most interact with because VC Issuance and verification are at the core of every SSI use case.

The Credential service supports signing data using [BBS+ Signatures <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/ldp-bbs2020/){target=_blank}. The data is signed with a key unique to the owner's wallet. This key is also used as linked secret, when it comes to proof derivation.

## Issue Credential

Issues a credential from a valid JSON-LD document.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc issue --document <JSONLD_FILE> --out <OUTPUT_FILE>
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [Issue Credential](../../../web/test/VaccineDemo.test.ts) inside_block:issueCredential
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Issue Credential](../../../dotnet/Tests/Tests.cs) inside_block:issueCredentialSample
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Issue Credential](../../../python/samples/vaccine_demo.py) inside_block:issueCredential
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [VerifyProof](../../../go/services/services_test.go) inside_block:issueCredentialSample
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateProof](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:issueCredentialSample
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.Issue") }}

The output of this method will be a signed JSON document using BBS+ Signature Suite 2020. This document is not automatically stored in the wallet when issued.

!!! warning
    **`IssueCredential` requires a valid JSON-LD document to be provided**. Do not confuse this operation with [Issue Credential From Template](./credential-service.md#issue-credential-from-template).

    You can learn more about how to create these documents, and about VC data models in general, from W3C: [VC Data Model v1.1](https://www.w3.org/TR/vc-data-model/). 

## Issue Credential from Template

Issues a credential from a previously defined template through [CreateCredential](./template-service.md#create-credential-template) call.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc issue-from-template [OPTIONS] --template-id <ID>

        # OPTIONS
        # --out <OUTPUT_FILE>     (Optional) Output file to store the issued credential
        # --values-data <JSON>    The JSON values of the credential subject
        # --values-file <FILE>    The file with JSON values of the credential subject
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [Issue From Template](../../../web/test/CredentialTemplates.test.ts) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Issue From Template](../../../dotnet/Tests/Tests.cs) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Issue From Template](../../../python/samples/templates_demo.py) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Issue From Template](../../../go/services/credentialtemplate_service_test.go) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.IssueFromTemplate") }}

The output of this method will be a signed JSON document using BBS+ Signature Suite 2020. This document is not automatically stored in the wallet when issued.

## Check Revocation Status

Get the credential status (revocation) of a previously issued credential. You must supply the credential id to this call.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc get-status --credential-status-id <ID>
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Check Revocation Status](../../../dotnet/Tests/Tests.cs) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Check Revocation Status](../../../python/samples/templates_demo.py) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Check Revocation Status](../../../go/services/credentialtemplate_service_test.go) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [Check Revocation Status](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.CheckStatus") }}

## Update Revocation Status

Update the credential status (revocation) of a previously issued credential. You must supply the credential id to this call.


{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        # Revoke a credential
        trinsic vc update-status --revoked --credential-status-id <ID>

        # Unrevoke a credential
        trinsic vc update-status --unrevoked --credential-status-id <ID>
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Update Revocation Status](../../../dotnet/Tests/Tests.cs) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Update Revocation Status](../../../python/samples/templates_demo.py) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Update Revocation Status](../../../go/services/credentialtemplate_service_test.go) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [Update Revocation Status](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.UpdateStatus") }}

## Create Proof
Wallets allow data to be shared between parties in a secure manner, using a technique called [Zero Knowledge Proofs](/faq/#what-are-zero-knowledge-proofs). Trinsic Ecosystems uses the BBS+ Signature Proof scheme to allow data to be selectively disclosed to the requesting party. This allows users to share only the requested subset of data, instead the entire document.

The endpoint to create a proof requires two inputs:

- document in the wallet that is signed with the correct signature
- JSONLD frame that describes the data to be disclosed

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc create-proof --document-id <STRING> --out <OUTPUT_FILE> --reveal-document <JSONLD_FRAME_FILE>
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateProof](../../../web/test/WalletService.test.ts) inside_block:createProof
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:createProof
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateProof](../../../python/samples/vaccine_demo.py) inside_block:createProof
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateProof](../../../go/services/services_test.go) inside_block:createProof
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateProof](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:createProof
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.CreateProof") }}


## Verify Proof

This endpoint verifies if the submitted data contains a valid proof. The data to be verified must contain a Linked Data Proof with BBS+ signature scheme.


{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        # The JSONLD_FILE refers to the proof document obtained from a CreateProofResponse
        trinsic vc issuer verify-proof --proof-document <JSONLD_FILE>
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [VerifyProof](../../../web/test/WalletService.test.ts) inside_block:verifyProof
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [VerifyProof](../../../dotnet/Tests/Tests.cs) inside_block:verifyProof
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [VerifyProof](../../../python/samples/vaccine_demo.py) inside_block:verifyProof
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [VerifyProof](../../../go/services/services_test.go) inside_block:verifyProof
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [VerifyProof](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:verifyProof
        ```
        <!--/codeinclude-->

    === "Ruby"
        <!--codeinclude-->
        ```ruby
        
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.VerifyProof") }}

## Exchange Credentials

Exchanging data securely is one of the fundamental functions of digital identity systems. There are many specifications with varying maturity that aim to provide interoperable and secure way of exchanging authentic data. We are commited to providing support for these methods.

- [DIDComm Messaging <small>:material-open-in-new:</small>](https://identity.foundation/didcomm-messaging/spec/){target=_blank}
- [Wallet And Credential Interactions <small>:material-open-in-new:</small>](https://identity.foundation/wallet-and-credential-interactions/){target=_blank}
- [OpenID Connect Credential Provider <small>:material-open-in-new:</small>](https://mattrglobal.github.io/oidc-client-bound-assertions-spec/){target=_blank}

> During this beta period, we are only supporting exchanging data between users by using their email addresses. The messages are routed securely to the destination wallet without leaving the secure network of the ecosystem backend. Our goal is to provide basic ability to share data without affecting the user experience. As interoperable exchange methods become available, we will add this functionality in the SDK.

### Sending documents using Email as identifier

To send a document to another user, they must have created a wallet and [associated their email address](#create-wallet-with-provider-invitation) with that wallet.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc send --email <EMAIL_ADDRESS> --item <FILE>
        ```

    === "TypeScript"

        ```typescript
        await credentialService.send(document, "admin@example.com");
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [SendRequest](../../../dotnet/Tests/Tests.cs) inside_block:sendCredential
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [SendRequest](../../../python/samples/vaccine_demo.py) inside_block:sendCredential
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [SendRequest](../../../go/services/services_test.go) inside_block:sendCredential
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [SendRequest](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:sendCredential
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.Send") }}