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
   
=== "Ruby"
    [Click here](/ruby/){target=_blank} for installation instructions for the Ruby   SDK.

---

## Create an Ecosystem

The first step is to create an [ecosystem](/learn/ecosystems/), within which everything else (wallets, templates, and credentials) will live.

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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

The response to this call contains the name and ID of your newly-created ecosystem; copy either of these down.

### Configure SDK for Created Ecosystem

Once we've created our ecosystem, we need to configure our SDK client (or CLI) to use it as the default ecosystem for all service calls in the rest of the walkthrough.

=== "Trinsic CLI"
    ```
    trinsic config --default-ecosystem "{ECOSYSTEM_NAME_OR_ID}"
    ```
    
=== "Typescript"
    ```typescript
    // Either configure defaultEcosystem during instantiation of an SDK service...
    const options = ServiceOptions.fromPartial({
        defaultEcosystem: "{ECOSYSTEM_NAME_OR_ID}"
    });

    const providerService = new ProviderService(options); 

    //...or after instantiation
    providerService.options.defaultEcosystem = "{ECOSYSTEM_NAME_OR_ID}";
    ```

=== "C#"
    ```csharp
    // Either configure DefaultEcosystem during instantiation of an SDK service...
    var providerService = new ProviderService(new()
    {
        DefaultEcosystem = "{ECOSYSTEM_NAME_OR_ID}"
    });

    //...or after instantiation
    providerService.Options.DefaultEcosystem = "{ECOSYSTEM_NAME_OR_ID}";
    ```

=== "Python"
    ```python
    from trinsic.trinsic_util import trinsic_config

    # Either configure default_ecosystem during instantiation of an SDK service...
    config = trinsic_config()
    config.default_ecosystem = "{ECOSYSTEM_NAME_OR_ID}"
    provider_service = ProviderService(server_config=config)

    # ...or after instantiation
    provider_service.service_options.default_ecosystem = "{ECOSYSTEM_NAME_OR_ID}"
    ```

=== "Java"
    ```java
    var options = TrinsicUtilities.getTrinsicServiceOptions();
    options = options
              .toBuilder()
              .setDefaultEcosystem("ECOSYSTEM_ID_OR_NAME")
              .build();
    var accountService = new AccountService(options);
    ```

=== "Go"
    ```go
    ///Either configure DefaultEcosystem during instantiation of an SDK service...
    opts, _ := sdk.NewServiceOptions()
    providerService, _ := sdk.NewProviderService(opts)

    //...or after instantiation
    providerService.options.ServiceOptions.DefaultEcosystem = "{ECOSYSTEM_NAME_OR_ID}"

    ```

!!! info "Further Reading: Ecosystems"

    - Learn more about [Ecosystems](/learn/ecosystems){target=_blank}
    - Browse the [Provider API reference](/reference/services/provider-service/){target=_blank}

## Create Accounts

We need to create Trinsic accounts for the participants in this credential exchange. Accounts and wallets can be considered interchangeably; all accounts have exactly one associated wallet.

Accounts can be created with a single call; they're designed to minimize onboarding friction for your users.

The clinic's account will **issue** the credential, Allison's account will **hold** it, and the airline's account will **verify** its contents.

=== "Trinsic CLI"
    The CLI makes it easy to create wallets. For demo purposes, we'll create all three on the same machine.
    
    When using the CLI, the authentication token of the most recently used account is saved in `~/.trinsic`. In a real-world scenario, you should back this token up securely.

    ```bash
    trinsic account login --name "Allison"
    # Save auth token in `allison.txt` before continuing

    trinsic account login --name "Airline"
    # Save auth token in `airline.txt` before continuing

    trinsic account login --name "Vaccination Clinic"
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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:setupActors
    ```
    <!--/codeinclude-->

!!! info "Production Usage"
    In this example, we've created *anonymous* accounts; the only way to access them is by saving the authentication token generated on account creation.

    In a production scenario, you may want to [create accounts tied to a user's email address](/reference/services/account-service/#sign-in){target=_blank} or phone number. This allows users to securely access their Trinsic cloud wallets at any time.

    Note that accounts are tied to their ecosystem. If you create an account tied to `bob@example.com` in the `example1` ecosystem, it will not be visible in any other ecosystem. The same email address can be used to create accounts in multiple ecosystems.

!!! abstract "Further Reading: Accounts and Wallets"
    - Learn more about [Wallets](../learn/wallets.md){target=_blank}
    - Browse the [Account API reference](/reference/services/account-service/){target=_blank}
    - Read about [authentication tokens and security](/learn/security/){target=_blank}

---

## Define a Template

Before we can issue a credential, we need to create a [Template](/learn/templates/){target=_blank} for it. 

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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:createTemplate
    ```
    <!--/codeinclude-->

!!! info "Templates are Optional"

    Templates are an optional helpful abstraction which removes the need to work directly with complex data formats such as JSON-LD.

    When a template is used to issue a credential, the result is a valid, interoperable JSON-LD Verifiable Credential.

    Trinsic's SDKs support issuing JSON-LD credentials that you create yourself, should you choose not to use templates.

!!! abstract "Further Reading: Templates"

    - Learn more about [Templates](/learn/templates){target=_blank}
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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:issueCredential
    ```
    <!--/codeinclude-->



!!! abstract "Further Reading: Issuance and Credentials"

    - Learn more about [Verifiable Credentials](/learn/credentials/){target=_blank}
    - Browse the [Credential API reference](/reference/services/credential-service/){target=_blank}


---

## Send Credential to Allison

Now that the clinic has a signed credential, it must be securely transmitted to Allison, so she can store it in her wallet.

Because it's just a JSON string, it could be delivered in many ways -- for example, in the response to an HTTPS request which triggered the issuance process.

!!! info "Send via Trinsic"
    In the future, we will offer the ability to send a credential directly to a Trinsic user's wallet.

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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:storeCredential
    ```
    <!--/codeinclude-->


The response to this call contains an Item ID; copy this down.

!!! abstract "Further Reading: Wallets"
    - Learn more about [Wallets](/learn/wallets/){target=_blank}
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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:shareCredential
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

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    [Create Ecosystem](../../ruby/test/vaccine_demo.rb) inside_block:verifyCredential
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

=== "Ruby"
    This sample is available as [`vaccine_demo.rb`](https://github.com/trinsic-id/sdk/blob/main/ruby/test/vaccine_demo.rb) in our SDK repository.

--- 

## Next Steps

Congratulations! If you've completed all the steps of this walkthrough, you've just created a mini ecosystem of issuers, verifiers, and holders all exchanging credentials. Depending on your goals, there are a couple of possible next steps to take. 


- Try out a [sample app](https://github.com/trinsic-id/sdk-examples){target=_blank}
- Browse the [Service Reference](/reference/){target=_blank}
- [Read more](/learn/intro/){target=_blank} about the key concepts and technologies at play