# Walkthrough
This walkthrough will show how Trinsic's SDK enables a provider to quickly create an ecosystem and begin doing credential exchange.
## Prerequisites
You'll need the Trinsic CLI or SDK in your chosen language to follow along with the commands below.
Choose one of the options below to get stared.
### Get the CLI
If you're using gitpod, the CLI has already been installed in your environment.

If you're running this locally, you'll need to first install [rust](https://www.rust-lang.org/tools/install). Once installed run `cargo install --path .` in the `cli` directory.

## Alice receives and proves a digital vaccination card
Alice's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Alice's town as a pilot. 
We'll see how the vaccination clinic can issue a card to Alice using the Trinsic SDK.

### Create Wallet
First we'll create the wallets in the ecosystem. These are stored in ~/.trinsic/config.toml
These can have descriptions and a human readable name to easily find them. 
The profile is stored in ~/.trinsic/<alias>.bin. This profile includes the authorization token needed to authenticate to the API.

=== "CLI"

    ```bash
    trinsic wallet create --description "Alice's Wallet" --name alice && \
    trinsic wallet create --description "Airline's wallet" --name airline && \
    trinsic wallet create --description "Vaccination Clinic" --name clinic
    ```     
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```
### Issue a Vaccine Credential
This will sign the credential stored in the cloud wallet and store it back locally. 
=== "CLI"

    ```bash
    trinsic issuer issue --document ./covid-vocab/vaccination-certificate-unsigned.jsonld --out ./covid-vocab/vaccination-certificate-signed.jsonld
    ```    
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```


The signed document is sent to the user, via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.
The holder stores the document in their wallet.

### Store Credential in Alice's Wallet
=== "CLI"

    ```bash
    trinsic wallet insert_item --item ./covid-vocab/vaccination-certificate-signed.jsonld
    ```
     
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```

Note down the response `item_id`.

### Create Proof

Replace the `<item_id>` in the command bellow with the output from the `insert_item` above.

=== "CLI"

    ```bash
    trinsic issuer create_proof --document_id <item_id> --out ./covid-vocab/vaccination-certificate-partial-proof.jsonld --reveal_document ./covid-vocab/vaccination-certificate-frame.jsonld
    ```
     
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```


The proof is sent to the verifying party via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.

### Verify Proof

=== "CLI"

    ```bash
    trinsic issuer verify_proof --proof_document ./covid-vocab/vaccination-certificate-partial-proof.jsonld
    ```
     
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```

Watch for the output of `true` to know that the credential successfully passed all of the verification processes.