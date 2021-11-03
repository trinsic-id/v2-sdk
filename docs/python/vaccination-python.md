# Walkthrough for Python

--8<----
/snippets/intro-infrastructure.md
/snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you'll only need python 3 installed

## Sample Project

Clone this sdk repository: <link>

In this project, we'll be following along the `test_trinsic_services`


## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. 

```python
server_address = '<SERVER_ADDRESS>'
wallet_service = WalletService(server_address)
```

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](../reference/services/wallet-service/#create-wallet) feature.

```python
allison = await wallet_service.create_wallet()
clinic = await wallet_service.create_wallet()
airline = await wallet_service.create_wallet()
```

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

```python
with open("allison.bin", "wb") as fid:
    fid.write(bytes(allison))
```

Read more about [security profiles](../reference/index.md#authorization) and authentication.

## Certificate issuance

Upon receiving her vaccine, Allison also receives a digital certificate from the clinic. This certificate is digitally signed by the clinic, acting as an issuer.
The certificate is in a JSON form, and for this example, we will use the following JSON. Add this file to your project named `vaccination-certificate-unsigned.jsonld`.

=== "vaccination-certificate-unsigned.jsonld"
    ```json
    {
        "@context": [
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/vaccination/v1",
            "https://w3id.org/security/bbs/v1"
        ],
        "id": "urn:uvci:af5vshde843jf831j128fj",
        "type": [
            "VaccinationCertificate",
            "VerifiableCredential"
        ],
        "description": "COVID-19 Vaccination Certificate",
        "name": "COVID-19 Vaccination Certificate",
        "expirationDate": "2029-12-03T12:19:52Z",
        "issuanceDate": "2019-12-03T12:19:52Z",
        "issuer": "did:key:zUC724vuGvHpnCGFG1qqpXb81SiBLu3KLSqVzenwEZNPoY35i2Bscb8DLaVwHvRFs6F2NkNNXRcPWvqnPDUd9ukdjLkjZd3u9zzL4wDZDUpkPAatLDGLEYVo8kkAzuAKJQMr7N2",
        "credentialSubject": {
            "id": "urn:uuid:c53e70f8-ce9a-4576-8744-e5f85c20a743",
            "type": "VaccinationEvent",
            "batchNumber": "1183738569",
            "countryOfVaccination": "US"
        }
    }
    ```

Let's set the active profile to the clinic, and call the issuance endpoint

```python
def vaccine_cert_unsigned_path(self) -> str:
    return abspath(join(dirname(__file__), "vaccination-certificate-unsigned.jsonld"))

wallet_service.set_profile(clinic)
with open(self.vaccine_cert_unsigned_path, "r") as fid:
    credential_json = json.load(fid)

credential = await wallet_service.issue_credential(credential_json)
```

At this point, the clinic can send the signed credential to Allison using any available methods. These methods can include any message exchange protocol, or a custom transport. In this case, we'll assume that the credential was delivered to Allison in an offline environment.

## Store certificate in personal wallet

Allison can store this credential in her cloud wallet, simply by calling the [Insert Item](../reference/services/wallet-service/#insert-record) function.

```python
wallet_service.set_profile(allison)
item_id = await wallet_service.insert_item(credential)
```

## Proof of vaccination

Before boarding an airplane, Allison must show a proof of vaccination. The request for this proof also comes in a form of JSON, in this case a JSON-LD frame.
This request can be communicated using any exchange protocol. Again, we'll assume this was done offline.

Let's save this request in a file named `vaccination-certificate-frame.jsonld`

=== "vaccination-certificate-frame.jsonld"
    ```json
    {
        "@context": [
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/vaccination/v1",
            "https://w3id.org/security/bbs/v1"
        ],
        "type": [
            "VerifiableCredential",
            "VaccinationCertificate"
        ],
        "@explicit": true,
        "issuer": {},
        "credentialSubject": {
            "@explicit": true,
            "@type": "VaccinationEvent",
            "batchNumber": {},
            "countryOfVaccination": {}
        }
    }
    ```

This request asks Allison to provide proof of valid vaccination certificate, including the `issuer`, `batchNumber`and `countryOfVaccination` fields.

Allison can use the [Create Proof](../reference/services/wallet-service/#create-proof) functions to build a proof that will share only the requested fields.

```python
def vaccine_cert_frame_path(self) -> str:
    return abspath(join(dirname(__file__), "vaccination-certificate-frame.jsonld"))

with open(self.vaccine_cert_frame_path, "r") as fid2:
            proof_request_json = json.load(fid2)

credential_proof = await wallet_service.create_proof(document_id=item_id, reveal_document=proof_request_json)
```

## Verification

Allison shares the proof of credential she created with the airline. The airline can now use [Verify Proof](../reference/services/wallet-service/#verify-proof) functions to check the validity of the proof.

```python
wallet_service.set_profile(airline)
valid = await wallet_service.verify_proof(credential_proof)
```

## Complete sample code

This sample is available in our [GitHub](https://github.com/trinsic-id/sdk/tree/main/python/tests) repo.

