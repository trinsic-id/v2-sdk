# Walkthrough
## Prerequisites
run these commands in the sample/ folder
### 1. Install an SDK or the cli
If you're using gitpod, the cli should already have been installed. 

If not, use `cargo install --path .` in the `cli` directory.

## Alice receives and proves a digital vaccination card
Alice's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Alice's town as a pilot. 
We'll see how the vaccination clinic can issue a card to Alice using the Trinsic SDK.

```console
trinsic didkey generate --out alice_key
cat alice_key
cp alice_key alice_key_public.  (delete the d value)
trinsic wallet create --description "Alice's Wallet" --name alice
trinsic wallet create --description "Airline's wallet" --name airline
trinsic wallet create --description "Vaccination Clinic" --name clinic
trinsic --profile clinic issuer issue --document passport --out alice_passport
cat alice_passport
trinsic didcomm pack --text alice_passport --out ../Alice/passport_packed clinic_key ../Alice/alice_public
trinsic didcomm unpack ../VaccinationClinic/clinic_public alice_key passport_packed
passport_packed > passport
trinsic --profile alice wallet search 
trinsic --profile alice wallet insert_item --item passport --type vaccine
trinsic --profile alice wallet search 
** find id of the credential **
trinsic --profile alice issuer create_proof --document_id <credential id> --reveal_document passport --out  ../Airline/alice_proof
trinsic --profile airline issuer verify_proof --proof_document alice_proof
```



## Create Wallet
First we'll create the wallets in the ecosystem. These are stored in ~/.trinsic/config.toml
These can have descriptions and a human readable name to easily find them. 
The profile is stored in ~/.trinsic/<alias>.bin
=== "CLI"

    ```bash
    trinsic wallet create --description "Alice's Wallet" --name alice
    trinsic wallet create --description "Airline's wallet" --name airline
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

### Alice
Make a key for alice. 

### Issue
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

### Store in Wallet
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

Note down the response `item_id`

### Create Proof

Replace the `<item_id>` in the command bellow with the output from the `insert_item` above.

=== "CLI"

    ```
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

    ```console
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


### Vaccination Clinic issues Alice a credential
`trinsic --profile clinic issuer issue --document passport --out alice_passport`

Once the passport has been created, didcomm can be used to pack the message and send it to Alice
`trinsic didcomm pack --text alice_passport --out ../Alice/passport_packed clinic_key ../Alice/alice_public`

### Alice adds credential to wallet
Alice can now unpack the message
`trinsic didcomm unpack ../VaccinationClinic/clinic_public alice_key passport_packed`

Alice can insert the credential in her wallet
`trinsic --profile alice wallet insert_item --item passport --type vaccine_passport`

### Alice finds her credential in her wallet
`trinsic --profile alice wallet search`

### Alice creates a proof from her credential
`trinsic --profile alice issuer create_proof --document_id <document id> --reveal_document passport --out proof_document`

The document id can be found by searching the wallet.

Now Alice can send the generated proof over to the verifier using didcomm or any other method

### Airline verifies Alice's vaccination card
Once the verifier receives the proof, they can verify it
`trinsic --profile airline issuer verify_proof --proof_document alice_proof`
