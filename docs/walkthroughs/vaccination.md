# Walkthrough

This walkthrough will show how a vaccination card can be issued, held, and proven using verifiable credentials with the Trinsic CLI. Feel free to follow along in a terminal using the CLI. We'll cover each part of Trinsic's platform during the tutorial. 
## Meet Allison

In this walkthrough we'll explore a scenario where Allison gets her vaccination certificate. She then uses this certificate to board an airline that requires proof of vaccination.

<!-- ```mermaid
journey
    section Issuance
      Obtain cert.: 3: Allison, Clinic
      Store in wallet: 3: Allison
    section Verification
      Request cert.: 3: Allison, Airline
      Share: 3: Allison
      Verify: 5: Airline
``` -->

In most credential exchange scenarios there are three primary roles - Issuer, Holder, and Verifier.

**Holder**: Stores issued credentials from an issuer. Most often this is the credential subject. Also generates passes to share with verifiers.

**Issuer**: Responsible for issuing signed credentials that attest information about a credential subject

**Verifier**: Verifies passes presented from holders.


In this case, Allison will be the holder, a vaccination clinic will be an issuer, and an airline will be the verifier. 
```
walkthrough
|- allison - Holder
|- clinic - Issuer
|- airline - Verifier
```

## Our SDKs
This tutorial is meant to share the concepts of verifiable credentials, so feel free to sit back and read through this without running any code. However, you can also follow along using one of our SDKs. 

<!-- We've set up some environments to use on Repl.it. If your language of choice isn't supported on repl.it, you can also run locally by installing the SDK of your choice. -->

=== "Trinsic CLI"
    
    - <a href="/cli/" target="_blank">Installation instructions</a> for the Trinsic CLI.

    Once the CLI is installed, clone our CLI example repository on Github to download the credential data for this walkthrough.
    
    ```
    git clone https://github.com/trinsic-id/cli-example && cd cli-example
    ```

    If you don't want to install locally, we also have a replit environment for you to use. In a new tab, you can open our <!--[demo environment](./demo.md)--> to use the CLI. This demo environment works best when run side-by-side the following walkthrough using two tabs in your browser.

   

=== "Typescript"
    <a href="/web/" target="_blank">Installation instructions</a> for the Node/Browser SDk.

=== "C#"
    Let's create a new .NET console app that we will use to add our sample code

    ```bash
    dotnet new console -n TrinsicSample && cd TrinsicSample
    ```

    Now we'll follow the <a href="/dotnet/" target="_blank">installation instructions</a> for Dotnet.


=== "Python"

    - <a href="/python/" target="_blank">Installation instructions</a> for Python.


=== "Java"
    - <a href="/java/" target="_blank">Installation instructions</a> for Java.

    In this project, we'll be following along the [`java/src/test/java/trinsic/VaccineDemo.java`](https://github.com/trinsic-id/sdk/blob/main/java/src/test/java/trinsic/VaccineDemo.java) in our [SDK repository](https://github.com/trinsic-id/sdk)

=== "Ruby"
    - [Install Instructions](../ruby/index.md) 
    
=== "Go"
    - [Install Instructions](../go/index.md)
   

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
    [Create Ecosystem](../../python/samples/ecosystem_demo.py) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Create Ecosystem](../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Create Ecosystem](../../go/services/services_test.go) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

The response to this call contains the name and ID of your newly-created ecosystem; copy either of these down.

### Configure SDK for Created Ecosystem

Once we've created our ecosystem, we need to configure our SDK client (or CLI) to use it as the default ecosystem for all service calls in the rest of the walkthrough.

=== "Trinsic CLI"
    ```
    trinsic config default-ecosystem "{ECOSYSTEM_NAME_OR_ID}"
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




## Create Accounts

We need to create Trinsic accounts for the participants in this credential exchange. Accounts and wallets can be considered interchangeably; all accounts have exactly one associated wallet.

Accounts can be created with a single call; they're designed to minimize onboarding friction for your users.

The clinic's account will **issue** the credential, Allison's account will **hold** it, and the airline's account will **verify** its contents.

=== "Trinsic CLI"
    The CLI offers an interactive way of creating wallets. For demo purposes, we'll create all three on the same machine.
    
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

    <!-- ```javascript
    [Setup Wallets](../../web/test/VaccineDemoShared.ts) inside_block:storeAndRecallProfile
    ``` -->


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
    [Setup Wallets](../../go/services/services_test.go) inside_block:setupActors
    ```
    <!--/codeinclude-->

    If you would like to save an account for future use, simply write the auth token to storage. Take care to store it in a secure location.


!!! note "Further Reading"
    - Manage access to cloud wallets with the [Account Service](../reference/services/account-service.md#login)
    - Learn more about [Wallets](../learn/wallets.md)
    - Read more about [security profiles](../reference/index.md#authorization) and authentication.

---

## Define a Template

Before we can issue a credential, we need to create a [Template](/learn/templates/){target:_blank} for it. 

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
    [Create Template](../../python/samples/templates_demo.py) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [Create Template](../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```go
    [Create Template](../../go/services/credentialtemplate_service_test.go) inside_block:createTemplate
    ```
    <!--/codeinclude-->

!!! info "Templates are Optional"

    Templates are an optional helpful abstraction which removes the need to work directly with complex data formats such as JSON-LD.

    When a template is used to issue a credential, the result is a valid, interoperable JSON-LD Verifiable Credential.

    Trinsic's SDKs support issuing JSON-LD credentials that you create yourself, should you choose not to use templates.


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
    We specify links to the jsonld files:
    <!--codeinclude-->
    ```python
    [Data Paths](../../python/samples/vaccine_demo.py) inside_block:pathData
    ```
    <!--/codeinclude-->

    Let's set the active profile to the clinic, and call the issuance endpoint
    <!--codeinclude-->
    ```python
    [Issue Credential](../../python/samples/vaccine_demo.py) inside_block:issueCredential
    ```
    <!--/codeinclude-->


=== "Java"
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

=== "Go"
    <!--codeinclude-->
    ```go
    [Data Paths](../../go/services/services_test.go) inside_block:pathData
    ```
    <!--/codeinclude-->
    <!--codeinclude-->
    ```go
    [Issue Credential](../../go/services/services_test.go) inside_block:issueCredential
    ```
    <!--/codeinclude-->



!!! info
    Reference: 
    
    - Learn more about how to [issue a credential](../reference/services/wallet-service.md#issue-credential)
    - Learn more about [verifiable credentials](../learn/credentials.md)


---
## Send Credential to Allison

Now that the clinic has a signed credential, it must be securely transmitted to Allison, so she can store it in her wallet.

Because it's just a JSON string, it could be delivered in many ways -- for example, in the response to an HTTPS request which triggered the issuance process.

!!! info "Send via Trinsic"
    In the future, we will offer the ability to send a credential directly to a Trinsic user's wallet.

    [Click here](../reference/services/credential-service.md#exchange-credentials) to learn more about this feature.
    

---

## Store Credential in Wallet
Once Allison receives the credential, she or her wallet application can store it within her wallet. She can use any device that she's authorized to use with her wallet. Storing credentials securely is also important to maintaining Allison's privacy. 


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
    [Store Credential](../../go/services/services_test.go) inside_block:storeCredential
    ```
    <!--/codeinclude-->


Note down the response `item_id` printed to the console for the next step.

!!! info
    Reference: [Insert Record](../reference/services/wallet-service.md#insert-item)


---

## Create a Proof of Vaccination
Before boarding, the airline requests proof of vaccination from Allison. Specifically, they want to see proof that she holds a `VaccinationCertificate` credential.

This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

Let's use the [CreateProof](../../reference/services/credential-service/#create-proof) call to build a proof for Allison's held credential.

=== "Trinsic CLI"
    ```bash
    trinsic config --auth-token $(cat allison.txt)
    trinsic vc create-proof --document-id "{ITEM_ID}" --out proof.json
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
    [Share Credential](../../go/services/services_test.go) inside_block:shareCredential
    ```
    <!--/codeinclude-->

Allison sends this proof to the airline for them to verify.

!!! info "Partial Proofs"

    In this example, the proof is being created over the entire credential; all of its fields are revealed to the verifier.

    It is possible for the airline to send Allison a *frame* which requests only certain fields of the credential. The airline would not be able to see other fields of the credential, but cryptographic guarantees would still hold over the revealed fields.

    See the [CreateProof](../../reference/services/credential-service/#create-proof) reference for more information.
    

---

## Verify Proof
Once the airline receives the proof, they can now verify it to ensure its authenticity. 

=== "Trinsic CLI"
    ```bash
    trinsic config --auth-token $(cat issuer.txt)
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
    [Verify Credential](../../go/services/services_test.go) inside_block:verifyCredential
    ```
    <!--/codeinclude-->

!!! info
    Reference: [Verify Proof](../reference/services/credential-service.md#verify-proof)

---

## Full Source Code

=== "Typescript"
    [web](https://github.com/trinsic-id/sdk/tree/main/web/test/VaccineDemoShared.ts)    

=== "C#"
    This sample is available in our [dotnet](https://github.com/trinsic-id/sdk/blob/main/dotnet/Tests/Samples/VaccineWalkthroughTests.cs) SDK repository. 

    <!-- TODO: include working replit embed -->


=== "Python"
    This sample is available as [`ecosystem_demo.py`](https://github.com/trinsic-id/sdk/blob/main/python/samples/ecosystem_demo.py)

=== "Java"
    This sample is available in the [Java](https://github.com/trinsic-id/sdk/tree/main/java/src/test/java) directory.

## Next Steps:

Congratulations! If you've completed all the steps of this walkthrough, you've just created a mini ecosystem of issuers, verifiers, and holders all exchanging credentials. Depending on your goals, there are a couple of possible next steps to take. 


- Try out a sample app
- Learn more about wallets, credentials, templates, and ecosystems
- Review the SDK Reference


### Sample Applications
We have language specific sample applications that you can run to understand how the Trinsic SDK works in a development environment. 

=== "Typescript"
    This sample is available in our [node directory](https://github.com/trinsic-id/sdk-examples/tree/main/web/basic)  
=== "C#"
    This sample is available in our [dotnet directory](https://github.com/trinsic-id/sdk/blob/main/dotnet/Tests/Tests.cs). 
=== "Python"
    This sample is available in the [python directory](https://github.com/trinsic-id/sdk/tree/main/python/samples/vaccine_demo.py).
=== "Java"
    This sample is available in our Github repo in the [java directory](https://github.com/trinsic-id/sdk/tree/main/java/src/test/java).
