import asyncio
import json

from samples.templates_demo import create_template
from trinsic.trinsic_util import set_eventloop_policy
# createVerifiableCredentialService() {
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueRequest,
    CreateProofRequest,
    VerifyProofRequest,
    SendRequest,
    RevealTemplateAttributes, IssueFromTemplateRequest, UpdateStatusRequest,
)

from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
credential_service = trinsic.credential
# }


async def verifiablecredential_service_examples():
    ecosystem = await trinsic.provider.create_ecosystem()

    # VerifiableCredentialServiceIssue() {
    issue_response = await credential_service.issue(
        request=IssueRequest(document_json="""
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
        """)
    )
    credential_json = issue_response.signed_document_json
    # }
    print(f"Credential: {credential_json}")

    # Create a template
    sample_template = (await create_template(trinsic.template)).data

    # VerifiableCredentialServiceIssueFromTemplate() {
    values = json.dumps({"firstName": "Jane", "lastName": "Doe", "age": "42"})
    issue_from_template_response = await credential_service.issue_from_template(
        request=IssueFromTemplateRequest(
            template_id=sample_template.id, values_json=values
        )
    )
    # }
    print(f"From Template Credential: {issue_from_template_response.document_json}")

    try:
        # VerifiableCredentialServiceSend() {
        send_response = await credential_service.send(
            request=SendRequest(
                document_json=credential_json, email="example@trinsic.id"
            )
        )
        # }
    except:
        pass

    # VerifiableCredentialServiceCreateProof() {
    proof_response = await credential_service.create_proof(
        request=CreateProofRequest(
            reveal_document_json="""
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
            """, document_json=credential_json
        )
    )
    selective_proof_response = await credential_service.create_proof(
        request=CreateProofRequest(
            document_json=credential_json,
            reveal_template=RevealTemplateAttributes(
                template_attributes=["firstName", "lastName"]
            ),
        )
    )
    # }

    credential_proof = proof_response.proof_document_json
    print(f"Proof: {credential_proof}")

    # The airline verifies the credential
    # VerifiableCredentialServiceVerifyProof() {
    verify_result = await credential_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )
    selective_verify_result = await credential_service.verify_proof(
        request=VerifyProofRequest(
            proof_document_json=selective_proof_response.proof_document_json
        )
    )
    # }
    print(f"Verification result: {verify_result}")
    assert verify_result.validation_results["SignatureVerification"].is_valid
    assert selective_verify_result.validation_results["SignatureVerification"].is_valid

    # VerifiableCredentialServiceUpdateStatus() {
    # TODO - Fill this out
    # }

    # VerifiableCredentialServiceCheckStatus() {
    # TODO - Fill this out
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(verifiablecredential_service_examples())
