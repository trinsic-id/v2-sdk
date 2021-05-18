# Working with Vaccination Certificates
### Create a Wallet
### Issue

```
trinsic issuer issue --document ./vaccination-certificate-unsigned.jsonld --out ./vaccination-certificate-signed.jsonld
```

The signed document is sent to the user, via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.
The holder stores the document in their wallet.

```
okapi wallet insert_item --item ./vaccination-certificate-signed.jsonld
```

Note down the response `item_id`

### Create Proof

Replace the `<item_id>` in the command bellow with the output from the `insert_item` above.

```
okapi issuer create_proof --document_id <item_id> --out ./vaccination-certificate-partial-proof.jsonld --reveal_document ./vaccination-certificate-frame.jsonld
```

The proof is sent to the verifying party via DIDComm, OIDC, email, etc. For this demo, it will be considered out-of-band.

### Verify Proof

```
trinsic issuer verify_proof --proof_document ./vaccination-certificate-partial-proof.jsonld
```
