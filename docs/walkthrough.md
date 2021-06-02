# Walkthrough

This walkthrough shows how Trinsic's SDK enables a provider to quickly create an ecosystem and begin doing credential exchange.

## Install the SDK
If you're using our Gitpod Environment, the CLI and all the language specific SDKs have already been installed in your environment.

If you're running this locally, you'll need to first install [rust](https://www.rust-lang.org/tools/install). Once installed run `cargo install --path .` in the `cli` directory.

## Alice receives and proves a digital vaccination card
Alice's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Alice's town as a pilot.
We'll see how the vaccination clinic can issue a card to Alice using the Trinsic SDK.

### Create Wallet
First we'll create the wallets in the ecosystem. These are stored in `~/.trinsic/okapi.toml`
These can have descriptions and a human readable name to easily find them.
The profile is stored in `~/.trinsic/<name>.bin`. This profile includes the authorization token needed to authenticate to the API.

=== "Trinsic CLI"

    ```bash
    trinsic wallet create --description "Alice's Wallet" --name alice && \
    trinsic wallet create --description "Airline's wallet" --name airline && \
    trinsic wallet create --description "Vaccination Clinic" --name clinic
    ```
=== "TypeScript"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```
### Issue a Vaccine Credential
This will sign the credential stored in the cloud wallet and store it back locally.
=== "Trinsic CLI"

    ```bash
    trinsic --profile clinic issuer issue --document ./covid-vocab/vaccination-certificate-unsigned.jsonld --out ./covid-vocab/vaccination-certificate-signed.jsonld
    ```
=== "TypeScript"

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
    trinsic --profile alice wallet insert-item --item ./covid-vocab/vaccination-certificate-signed.jsonld

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

=== "Trinsic CLI"

    ```bash
    trinsic --profile alice issuer create-proof --document-id urn:uuid:bcb9aa00-b471-43dd-86e6-03a0c16029d8 --out ./covid-vocab/vaccination-certificate-partial-proof.jsonld --reveal-document ./covid-vocab/vaccination-certificate-frame.jsonld
    ```

=== "TypeScript"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```


The proof is sent to the verifying party via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.

### Verify Proof

=== "Trinsic CLI"

    ```bash
    trinsic --profile airline issuer verify-proof --proof-document ./covid-vocab/vaccination-certificate-partial-proof.jsonld
    ```

=== "TypeScript"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```

Watch for the output of `true` to know that the credential successfully passed all of the verification processes.