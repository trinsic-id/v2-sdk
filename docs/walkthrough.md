# Walkthrough
## Prerequisites
### 1. Install cli
If you're using gitpod, the cli should already have been installed. 

If not, use `cargo install --path .` in the `cli` directory.

## Alice receives and proves a digital vaccination card
Alice's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Alice's town as a pilot.

### CDC publishes template for vaccination alongside authorized issuers
_handwavy bit_

CDC independently publishes https://cdc.gov/.well-known/trust-registry that lists the credentials and issuers authorized to issue them

### Vaccination clinic, Alice, and Airline all create wallets
One terminal is provider, creates all wallets
`trinsic wallet create --description "Vaccination Clinic"`

3 terms are issuer, holder, verifier respectively. When making a call to the server, be sure to specify which profile is being used: 
`trinsic --profile alice wallet search`
### Issue

```
trinsic issuer issue --document ./covid-vocab/vaccination-certificate-unsigned.jsonld --out ./covid-vocab/vaccination-certificate-signed.jsonld
```

The signed document is sent to the user, via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.
The holder stores the document in their wallet.

```
trinsic wallet insert_item --item ./covid-vocab/vaccination-certificate-signed.jsonld
```

Note down the response `item_id`

### Create Proof

Replace the `<item_id>` in the command bellow with the output from the `insert_item` above.

```
trinsic issuer create_proof --document_id <item_id> --out ./covid-vocab/vaccination-certificate-partial-proof.jsonld --reveal_document ./covid-vocab/vaccination-certificate-frame.jsonld
```

The proof is sent to the verifying party via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.

### Verify Proof

```
trinsic issuer verify_proof --proof_document ./covid-vocab/vaccination-certificate-partial-proof.jsonld
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