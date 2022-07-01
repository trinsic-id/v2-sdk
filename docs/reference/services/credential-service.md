# Credential Service

The Credential Service exposes functionality for issuance, proof generation, verification, and revocation of [Verifiable Credentials](/learn/concepts/credentials){target=_blank}.


!!! info "Signature Format" 
    The Credential service currently supports [BBS+ Signatures <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/ldp-bbs2020/){target=_blank}, which enable selective disclosure of credential fields during proof generation.

    Credentials are signed, and proofs are created, using a key pair unique to the signing / holding wallet. This key pair is created and managed by Trinsic upon account creation.

---

## Issue Credential

Issues a credential from a valid JSON-LD document. Issued credentials are not automatically stored in any wallet.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic vc issue --document <JSONLD_FILE> --out <OUTPUT_FILE>
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [Issue Credential](../../../web/test/CredentialService.spec.ts) inside_block:issueCredential
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
        [Issue Credential](../../../python/samples/credential_demo.py) inside_block:issueCredential
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [VerifyProof](../../../go/services/vaccine_test.go) inside_block:issueCredential
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateProof](../../../java/src/test/java/trinsic/CredentialsDemo.java) inside_block:issueCredentialSample
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.Issue") }}

!!! warning
    **`IssueCredential` requires a valid JSON-LD document to be provided**. Do not confuse this operation with [Issue Credential From Template](./credential-service.md#issue-credential-from-template).

    When provided a valid credential, this endpoint creates and appends the `proof` object, using a key pair tied to the issuing Trinsic account.

    You can learn more about how to create these documents, and about VC data models in general, from W3C: [VC Data Model v1.1](https://www.w3.org/TR/vc-data-model/). 

---

## Issue Credential from Template

Issues a credential from a [previously-defined template](/reference/services/template-service#create-template){target=_blank}.

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
        [Issue From Template](../../../web/test/CredentialTemplateShared.ts) inside_block:issueFromTemplate
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
        [Issue From Template](../../../go/services/template_service_test.go) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:issueFromTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.IssueFromTemplate") }}

---

## Check Revocation Status

Checks a credential's revocation status by its `credential_status_id`.

A `credential_status_id` can be found in a credential's `credentialStatus.id` field, if present.

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
        [Check Revocation Status](../../../go/services/template_service_test.go) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [Check Revocation Status](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:checkCredentialStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.CheckStatus") }}

---

## Update Revocation Status

Updates the revocation status of a credential (revoke or unrevoke).

A `credential_status_id` can be found in a credential's `credentialStatus.id` field, if present.

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
        [Update Revocation Status](../../../go/services/template_service_test.go) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [Update Revocation Status](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:updateCredentialStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.UpdateStatus") }}

---

## Create Proof
Creates and signs a [proof](/) for a valid JSON-LD credential, using the BBS+ Signature Suite.

If the credential is stored in a Trinsic cloud wallet, pass its `item_id`; otherwise, pass the raw JSON-LD credential via `document_json`.

If `reveal_document_json` is passed, a proof will be generated for only the fields specified.

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
        [CreateProof](../../../python/samples/credential_demo.py) inside_block:createProof
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
        [CreateProof](../../../java/src/test/java/trinsic/CredentialsDemo.java) inside_block:createProof
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.CreateProof") }}

!!! info "Selective Disclosure"
    BBS+ Signatures support the ability to generate a proof for a subset of a credential's fields, instead of every field.

    This enables increased user privacy: fields which aren't included in `reveal_document_json` will not be present in the generated proof.

    We are working on documentation for the expected structure of `reveal_document_json` and will make it available soon.

---

## Verify Proof

Verifies a proof for validity and authenticity. Only supports BBS+ Signatures at present.

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
        [VerifyProof](../../../java/src/test/java/trinsic/CredentialsDemo.java) inside_block:verifyProof
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.VerifyProof") }}

???+ info "Validation Results"
    The verification process performs a number of validations, each of which may fail independently of the others.

    For example, a credential may be expired or revoked, but otherwise perfectly valid.

    `validation_results` contains an entry for each of the following verification steps:

    | Name                                                     | Description                                                                                                          |
    | -------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
    | `SignatureVerification`{: style="word-break:keep-all"}   | Cryptographic signature validity of proof                                                                            |
    | `CredentialStatus`{: style="word-break:keep-all"}        | *(if supported by credential)* Checks if credential has been revoked*                                                |
    | `SchemaConformance`{: style="word-break:keep-all"}       | Ensures credential conforms with its schema                                                                          |
    | `TrustRegistryMembership`{: style="word-break:keep-all"} | *(if relevant)* Verifies that credential issuer is an authorized member of the credential's governing Trust Registry |

---

## Exchange Credentials

### Send via Email

Sends a credential to a user via email.

The specified email address must be tied to an existing account in the same ecosystem.

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
        [SendRequest](../../../python/samples/credential_demo.py) inside_block:sendCredential
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
        [SendRequest](../../../java/src/test/java/trinsic/CredentialsDemo.java) inside_block:sendCredential
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.v1.VerifiableCredential.Send") }}

!!! info "Alternative Exchange Protocols"
    During this beta period, credentials may only be sent to a wallet via email address or with the [InsertItem](/reference/services/wallet-service#insert-item) call.

    
    There are a number of ongoing industry efforts to standardize exchange protocols, such as:

    - [DIDComm Messaging <small>:material-open-in-new:</small>](https://identity.foundation/didcomm-messaging/spec/){target=_blank}
    - [Wallet And Credential Interactions <small>:material-open-in-new:</small>](https://identity.foundation/wallet-and-credential-interactions/){target=_blank}
    - [OpenID Connect Credential Provider <small>:material-open-in-new:</small>](https://mattrglobal.github.io/oidc-client-bound-assertions-spec/){target=_blank}

    We aim to provide support for these methods as they mature.