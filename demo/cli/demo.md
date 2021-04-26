# Okapi Demo
## Prerequisites
### 1. Install cli
Follow the installation instructions in the CLI's [README](../sdks/cli/README.md#installation)

## Alice receives and proves a digital vaccination card
Alice's town just received the go ahead to vaccinate everyone. We're going to walk through
a scenario where the CDC has created a new digital vaccination card and is using Alice's town as a pilot.

### CDC publishes template for vaccination alongside authorized issuers
_handwavy bit_

CDC independently publishes https://cdc.gov/.well-known/trust-registry that lists the credentials and issuers authorized to issue them

### Vaccination clinic, Alice, and Airline all create wallets
One terminal is provider, creates all wallets
`okapi wallet create --description "Vaccination Clinic"`

3 terms are issuer, holder, verifier respectively. When making a call to the server, be sure to specify which profile is being used: 
`okapi --profile alice wallet search`

### Vaccination Clinic issues Alice a credential
`okapi --profile clinic issuer issue --document passport --out alice_passport`

Once the passport has been created, didcomm can be used to pack the message and send it to Alice
`okapi didcomm pack --text alice_passport --out ../Alice/passport_packed clinic_key ../Alice/alice_public`

### Alice adds credential to wallet
Alice can now unpack the message
`okapi didcomm unpack ../VaccinationClinic/clinic_public alice_key passport_packed`

Alice can insert the credential in her wallet
`okapi --profile alice wallet insert_item --item passport --type vaccine_passport`

### Alice finds her credential in her wallet
`okapi --profile alice wallet search`

### Alice creates a proof from her credential
`okapi --profile alice issuer create_proof --document_id <document id> --reveal_document passport --out proof_document`

The document id can be found by searching the wallet.

Now Alice can send the generated proof over to the verifier using didcomm or any other method

### Airline verifies Alice's vaccination card
Once the verifier receives the proof, they can verify it
`okapi --profile airline issuer verify_proof --proof_document alice_proof`