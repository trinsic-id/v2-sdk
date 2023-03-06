# Walkthrough: Build a Vaccine Card

This walkthrough demonstrates how a vaccination card can be issued, held, and shared using Verifiable Credentials with Trinsic.

## Meet Allison

We'll follow Allison as she obtains a vaccine certificate, stores it in her digital wallet, and presents it to board an airplane.

In most credential exchange scenarios, there are three primary roles: Issuer, Holder, and Verifier.

**Holder**: Stores credentials received from issuers, and presents them to verifiers. *(Said credentials are often, but not always, attesting information about the holder)*

**Issuer**: Signs and issues credentials which attest information about a credential subject.

**Verifier**: Verifies credentials presented by holders.


In this case, Allison will be the *holder*, a vaccination clinic will be the *issuer*, and an airline will be the *verifier*.


## Our SDKs

You can follow along using one of our SDKs, or use the Trinsic CLI, which implements full platform functionality.

=== "Trinsic CLI"

    [Click here](/cli/){target=_blank} for installation instructions for the Trinsic CLI.

    <!-- If you don't want to install locally, we also have a replit environment for you to use. In a new tab, you can open our [demo environment](./demo.md) to use the CLI. This demo environment works best when run side-by-side the following walkthrough using two tabs in your browser. -->



=== "Typescript"
    [Click here](/web/){target=_blank} for installation instructions for the Node/Browser SDK.

=== "C#"
    [Click here](/dotnet/){target=_blank} for installation instructions for the .NET SDK.

=== "Python"
    [Click here](/python/){target=_blank} for installation instructions for the Python SDK.

=== "Java"
    [Click here](/java/){target=_blank} for installation instructions for the Java SDK.

=== "Go"
    [Click here](/go/){target=_blank} for installation instructions for the Go SDK.

---

## Ecosystem Setup

Before we begin, you'll need an [ecosystem](/learn/concepts/ecosystems) -- somewhere for the resources we're about to create (wallets, templates, credentials) to live.

### Use Existing Ecosystem

If you've already [signed up as a customer](https://dashboard.trinsic.id/){target:_blank}, you'll have received an email with an ecosystem ID and authentication token.

Copy this ecosystem ID down, and [skip to the next step](#create-accounts).

### Create New Ecosystem

If you don't already have an ecosystem provisioned for you, you'll need to create one first.

This will be a *sandbox* ecosystem; suitable for prototyping and testing, but not production purposes. To receive a production ecosystem, [sign up](https://dashboard.trinsic.id/){target:_blank}.

=== "Trinsic CLI"
    ```
    trinsic provider create-ecosystem
    ```

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Create Ecosystem](../../web/test/VaccineDemoShared.ts) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [Create Ecosystem](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Create Ecosystem](../../python/samples/vaccine_demo.py) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Create Ecosystem](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Create Ecosystem](../../go/examples/vaccine_test.go) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

The response to this call contains the name and ID of your newly-created ecosystem; copy either of these down.


!!! info "Further Reading: Ecosystems"

    - Learn more about [Ecosystems](/learn/concepts/ecosystems){target=_blank}
    - Browse the [Provider API reference](/reference/services/provider-service/){target=_blank}

---

## Create Accounts

We need to create Trinsic accounts for the participants in this credential exchange. Accounts and wallets can be considered interchangeably; all accounts have exactly one associated wallet.

Accounts can be created with a single call; they're designed to minimize onboarding friction for your users.

The clinic's account will **issue** the credential, Allison's account will **hold** it, and the airline's account will **verify** its contents.

=== "Trinsic CLI"
    The CLI makes it easy to create wallets. For demo purposes, we'll create all three on the same machine.

    When using the CLI, the authentication token of the most recently used account is saved in `~/.trinsic`. In a real-world scenario, you should back this token up securely.

    ```bash
    trinsic account login --ecosystem {ECOSYSTEM_ID}
    # Save auth token in `allison.txt` before continuing

    trinsic account login --ecosystem {ECOSYSTEM_ID}
    # Save auth token in `airline.txt` before continuing

    trinsic account login --ecosystem {ECOSYSTEM_ID}
    # Save auth token in `clinic.txt` before continuing
    ```

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Setup Wallets](../../web/test/VaccineDemoShared.ts) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save the account for future use, simply write the auth token to storage. Take care to store it in a secure location.


=== "C#"
    <!--codeinclude-->
    ```csharp
    [Setup Wallets](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save an account for future use, simply write the auth token to storage. Take care to store it in a secure location.

=== "Python"
    <!--codeinclude-->
    ```python
    [Setup Wallets](../../python/samples/vaccine_demo.py) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save an account for future use, simply write the auth token to storage. Take care to store it in a secure location.

=== "Java"
    <!--codeinclude-->
    ```java
    [Setup Wallets](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save an account for future use, simply write the auth token to storage. Take care to store it in a secure location.

=== "Go"
    <!--codeinclude-->
    ```go
    [Setup Wallets](../../go/examples/vaccine_test.go) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save an account for future use, simply write the auth token to storage. Take care to store it in a secure location.

!!! info "Production Usage"
    In this example, we've created *anonymous* accounts; the only way to access them is by saving the authentication token generated on account creation.

    In a production scenario, you may want to [create accounts tied to a user's email address](/reference/services/account-service/#sign-in){target=_blank} or phone number. This allows users to securely access their Trinsic cloud wallets at any time.

    Note that accounts are tied to their ecosystem. If you create an account tied to `bob@example.com` in the `example1` ecosystem, it will not be visible in any other ecosystem. The same email address can be used to create accounts in multiple ecosystems.

!!! abstract "Further Reading: Accounts and Wallets"
    - Learn more about [Wallets](/learn/concepts/wallets/){target=_blank}
    - Browse the [Account API reference](/reference/services/account-service/){target=_blank}
    - Read about [authentication tokens and security](/learn/platform/security/){target=_blank}

---

## Define a Template

Before we can issue a credential, we need to create a [Template](/learn/concepts/templates/){target=_blank} for it.

Templates are simply a list of the fields that a credential can have.

=== "Trinsic CLI"
    First, prepare a JSON file which describes your template:

    === "templateData.json"
    ```json
    {
        "firstName": {
            "type": "string",
            "description": "First name of vaccine recipient"
        },
        "lastName": {
            "type": "string",
            "description": "Last name of vaccine recipient"
        },
        "batchNumber":{
            "type": "string",
            "description": "Batch number of vaccine"
        },
        "countryOfVaccination":{
            "type": "string",
            "description": "Country in which the subject was vaccinated"
        }
    }
    ```

    Then create the template:

    ```bash
    trinsic template create -n "VaccinationCertificate" --fields-file templateData.json
    ```

    The output of this command will include a template ID; copy this down for later use.

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Define Template](../../web/test/VaccineDemoShared.ts) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [Create Template](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Create Template](../../python/samples/vaccine_demo.py) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Create Template](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Create Template](../../go/examples/vaccine_test.go) inside_block:createTemplate
    ```
    <!--/codeinclude-->

!!! info "Templates are Optional"

    Templates are an optional helpful abstraction which removes the need to work directly with complex data formats such as JSON-LD.

    When a template is used to issue a credential, the result is a valid, interoperable JSON-LD Verifiable Credential.

    Trinsic's SDKs support issuing JSON-LD credentials that you create yourself, should you choose not to use templates.

!!! abstract "Further Reading: Templates"

    - Learn more about [Templates](/learn/concepts/templates){target=_blank}
    - Browse the [Template API reference](/reference/services/template-service/){target=_blank}

---

## Issue a Credential
Upon receiving her vaccine, the clinic issues Allison a Verifiable Credential, which proves that she was given the vaccine by the clinic.

A credential is a JSON document that has been cryptographically signed; this signature enables verifiers to trust that the data comes a trusted source, and has not been tampered with.

To issue a vaccine certificate, we'll use the template we created in the last step.

=== "Trinsic CLI"

    First, prepare a file named `values.json` with the following content:
    === "values.json"
    ```json
    {
        "firstName": "Allison",
        "lastName": "Allisonne",
        "batchNumber": "123454321",
        "countryOfVaccination": "US"
    }
    ```

    Then issue the credential:

    ```bash
    trinsic config --auth-token $(cat clinic.txt)
    trinsic vc issue-from-template --template-id {TEMPLATE_ID} --values-file values.json --out credential.json
    ```

    The output of this command will contain a signed JSON document, which has been saved to `credential.json`.

    Note that TEMPLATE_ID refers to the "Schema" URI of the template you created earlier called "VaccinationCertificate".
    More specifically, it's the property 'schema_uri' in the JSON returned by the `trinsic template create...` command.


=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Setup Wallets](../../web/test/VaccineDemoShared.ts) inside_block:issueCredential
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    [C#](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:issueCredential
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Issue Credential](../../python/samples/vaccine_demo.py) inside_block:issueCredential
    ```
    <!--/codeinclude-->


=== "Java"
    <!--codeinclude-->
    ```java
    [Issue Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:issueCredential
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Issue Credential](../../go/examples/vaccine_test.go) inside_block:issueCredential
    ```
    <!--/codeinclude-->


!!! abstract "Further Reading: Issuance and Credentials"

    - Learn more about [Verifiable Credentials](/learn/concepts/credentials/){target=_blank}
    - Browse the [Credential API reference](/reference/services/credential-service/){target=_blank}


---

## Send Credential to Allison

Now that the clinic has a signed credential, it must be securely transmitted to Allison, so she can store it in her wallet.

Because it's just a JSON string, it could be delivered in many ways -- for example, in the response to an HTTPS request which triggered the issuance process.

!!! info "Send via Trinsic"
    Trinsic also offers the ability to send a credential directly to a Trinsic user's wallet.

    [Click here](../reference/services/credential-service.md#exchange-credentials) to learn more about this feature.


---

## Store Credential in Wallet

Once Allison receives the credential, it must be stored in her wallet.


=== "Trinsic CLI"

    ```bash
    trinsic config --auth-token $(cat allison.txt)
    trinsic wallet insert-item --item credential.json
    ```

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Store Credential](../../web/test/VaccineDemoShared.ts) inside_block:storeCredential
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [Store Credential](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:storeCredential
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Store Credential](../../python/samples/vaccine_demo.py) inside_block:storeCredential
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Store Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:storeCredential
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Store Credential](../../go/examples/vaccine_test.go) inside_block:storeCredential
    ```
    <!--/codeinclude-->


The response to this call contains an Item ID; copy this down.

!!! abstract "Further Reading: Wallets"
    - Learn more about [Wallets](/learn/concepts/wallets/){target=_blank}
    - Browse the [Wallet API reference](/reference/services/wallet-service/){target=_blank}


---

## Create a Proof of Vaccination
Before boarding, the airline requests proof of vaccination from Allison. Specifically, they want to see proof that she holds a `VaccinationCertificate` credential.

Let's use the [CreateProof](../../reference/services/credential-service/#create-proof) call to build a proof for Allison's held credential.

=== "Trinsic CLI"
    ```bash
    trinsic config --auth-token $(cat allison.txt)
    trinsic vc create-proof --item-id "{ITEM_ID}" --out proof.json
    ```

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Share Credential](../../web/test/VaccineDemoShared.ts) inside_block:shareCredential
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [Share Credential](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:shareCredential
    ```
    <!--/codeinclude-->


=== "Python"
    <!--codeinclude-->
    ```python
    [Share Credential](../../python/samples/vaccine_demo.py) inside_block:shareCredential
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Share Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:shareCredential
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Share Credential](../../go/examples/vaccine_test.go) inside_block:shareCredential
    ```
    <!--/codeinclude-->

Allison sends this proof to the airline for them to verify.

!!! info "Partial Proofs"

    In this example, the proof is being created over the entire credential; all of its fields are revealed to the verifier.

    It is possible for the airline to send Allison a *frame* which requests only certain fields of the credential. The airline would not be able to see other fields of the credential, but cryptographic guarantees would still hold over the revealed fields.

    See the [CreateProof](../../reference/services/credential-service/#create-proof) reference for more information.

!!! note "OpenID Connect for Presentation"

    Trinsic offers an [OpenID Connect service](/reference/other/openid/){target=_blank} as an alternative flow for the exchange of a credential between a holder and a verifier.

    In this flow, a holder simply clicks a link (or scans a QR code), logs into their Trinsic cloud wallet, and selects a credential to share.


---

## Verify Proof
Once the airline receives the proof, they can use the [VerifyProof](../reference/services/credential-service.md#verify-proof){target=_blank} call to ensure its authenticity.

=== "Trinsic CLI"
    ```bash
    trinsic config --auth-token $(cat airline.txt)
    trinsic vc verify-proof --proof-document proof.json
    ```

=== "Typescript"
    <!--codeinclude-->
    ```javascript
    [Verify Credential](../../web/test/VaccineDemoShared.ts) inside_block:verifyCredential
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [Verify Credential](../../dotnet/Tests/Samples/VaccineWalkthroughTests.cs) inside_block:verifyCredential
    ```
    <!--/codeinclude-->


=== "Python"
    <!--codeinclude-->
    ```python
    [Verify Credential](../../python/samples/vaccine_demo.py) inside_block:verifyCredential
    ```
    <!--/codeinclude-->


=== "Java"
    <!--codeinclude-->
    ```java
    [Verify Credential](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:verifyCredential
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Verify Credential](../../go/examples/vaccine_test.go) inside_block:verifyCredential
    ```
    <!--/codeinclude-->


!!! info "Interoperability"

    The Verifiable Credentials and Proofs that Trinsic's platform produces are based on open standards.

    Although we use the [VerifyProof](../reference/services/credential-service.md#verify-proof){target=_blank} call in this example, the proof could be verified using any standards-compliant software.

---

## Full Source Code

=== "Typescript"
    This sample is available as [`VaccineDemoShared.ts`](https://github.com/trinsic-id/sdk/tree/main/web/test/VaccineDemoShared.ts) in our SDK repository.

=== "C#"
    This sample is available as [`VaccineWalkthroughTests.cs`](https://github.com/trinsic-id/sdk/blob/main/dotnet/Tests/Samples/VaccineWalkthroughTests.cs) in our SDK repository.

=== "Python"
    This sample is available as [`vaccine_demo.py`](https://github.com/trinsic-id/sdk/blob/main/python/samples/vaccine_demo.py) in our SDK repository.

=== "Java"
    This sample is available as [`VaccineDemo.java`](https://github.com/trinsic-id/sdk/blob/main/java/src/test/java/trinsic/VaccineDemo.java) in our SDK repository.

=== "Go"
    This sample is available as [`vaccine_test.go`](https://github.com/trinsic-id/sdk/blob/main/go/examples/vaccine_test.go) in our SDK repository.

---

## Governance Setup

Before we begin, you'll need an [trust registry](/learn/concepts/trust-registries) -- somewhere for the governance to be defined (which issuer is allowed to issue a vaccine credential).


### Create New Governance

You can create a governance framework through the [Trinsic dashboard](https://dashboard.trinsic.id/ecosystem/governance){target:_blank} by clicking on the 'Governance' tab in the nav bar.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry add-framework --name "Vaccine Governance" --uri "https://vaccines.trinsic.id"
        ```

        The response should look like:
        ```js
        {
            "governing_authority":"did:key:xxxxxxxxxxx........",
            "id": "xxxxxx.....", // <framework_id>
            "trust_registry": "urn:egf:..." 
        }
        ```

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.AddFramework") }}

The response to this call contains the name and ID of your newly-created ecosystem; copy either of these down.

\

---

### Register Issuer

First lets grab our account info. You can use an email address, walletId or PublicDID as identifiers for a wallet. We will use publicDID.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic account info
        ```

        The response should look like:
        ```js
        {
          ...
          "ecosystem_id": "urn:trinsic:ecosystems:<ecosystem-name>",
          "public_did": "did:key:xxxxxxxx......", // <public_did>
          "wallet_id": "urn:trinsic:wallets:xxxxxx....>"
        }
        ```

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.RegisterMember") }}

---

Registers an authorized issuer for a specific credential type (identified by its `schema_uri`), using the public_did, framework_id and template_uri from above:

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry register-member \
            --framework-id <framework_id> \
            --schema <template_uri> \
            --did <public_did>
        ```

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.RegisterMember") }}

---


### Check Issuer Status

Check the status of an issuer for a specific credential type using the public_did, framework_uri and template_uri from above:

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry get-membership-status \
            --framework-id <framework_id> \
            --schema <template_uri> \
            --did <public_did>
        ```

        The response should look like:
        ```bash
        ok
        ```


{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.GetMembershipStatus") }}


---


### Issue a Credential with Governance framework

We need to prepare a credential with a governance framework specified. This will consist of:

1. Issuing the credential with framework-id specified
2. Inserting the credential into your wallet
3. Deriving a proof of the credential

=== "Trinsic CLI"

    First, prepare a file named `values.json` with the following content:
    === "values.json"
    ```json
    {
        "firstName": "Allison",
        "lastName": "Allisonne",
        "batchNumber": "123454321",
        "countryOfVaccination": "US"
    }
    ```

    Then issue the credential:

    ```bash
    trinsic vc issue-from-template --framework-id <framework_id> --template-id <template_id> --values-file values.json --out credential.json
    ```

    ```bash
    trinsic wallet insert-item --item credential.json
    ```

    The response should look like:
    ```bash
    ok
    item id → "urn:uuid:..." // <item_id>
    ```

    ```bash
    trinsic vc create-proof --item-id <item_id> --out proof.json
    ```

---

### Verify a proof with governance status

Now we can verify the proof from the previous step, and get the governance status.

=== "Trinsic CLI"

    ```bash
    trinsic vc verify-proof --proof-document proof.json
    ```

    The response should look like:
    ```bash
    is valid → "true"
    validation results → {
      "CredentialStatus": {
        "is_valid": true,
        "messages": []
      },
      "IssuerIsSigner": {
        "is_valid": true,
        "messages": []
      },
      "SchemaConformance": {
        "is_valid": true,
        "messages": []
      },
      "SignatureVerification": {
        "is_valid": true,
        "messages": []
      },
      "TrustRegistryMembership": {
        "is_valid": true,
        "messages": []
      }
    }
    ```

---


### Revoke Issuer
Revoke the status of an issuer for a specific credential type using the public_did, framework_uri and template_uri from above:

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry unregister-member \
            --framework-id <framework_id> \
            --schema <template_uri> \
            --did <public_did>
        ```

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.UnregisterMember") }}


### Verify a proof with governance status after revocation of issuer

Now we can verify the proof from the previous step, and get the governance status.

=== "Trinsic CLI"

    ```bash
    trinsic vc verify-proof --proof-document proof.json
    ```

    The response should look like:
    ```bash
    is valid → "false"
    validation results → {
      "CredentialStatus": {
        "is_valid": true,
        "messages": []
      },
      "IssuerIsSigner": {
        "is_valid": true,
        "messages": []
      },
      "SchemaConformance": {
        "is_valid": true,
        "messages": []
      },
      "SignatureVerification": {
        "is_valid": true,
        "messages": []
      },
      "TrustRegistryMembership": {
        "is_valid": false,
        "messages": [
          "issuer is not authorized in the specified registry"
        ]
      }
    }
    ```

---


---

!!! info "Further Reading: Trust Registries"

    - Learn more about [Governance](/learn/concepts/trust-registries){target=_blank}
    - Browse the [Provider API reference](reference/services/trust-registry-service/){target=_blank}





## Next Steps

Congratulations! If you've completed all the steps of this walkthrough, you've just created a mini ecosystem of issuers, verifiers, and holders all exchanging credentials. Depending on your goals, there are a couple of possible next steps to take.


- Try out a [sample app](https://github.com/trinsic-id/sdk-examples){target=_blank}
- Browse the [Service Reference](/reference/){target=_blank}
- [Learn more](/learn){target=_blank} about the key concepts and technologies at play
