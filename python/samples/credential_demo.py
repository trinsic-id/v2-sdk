import asyncio
import json
from os.path import abspath, join, dirname

from trinsic.proto.services.verifiablecredentials.v1 import (
    CreateProofRequest,
    VerifyProofRequest,
    SendRequest,
    RevealTemplateAttributes, IssueFromTemplateRequest,
)
from trinsic.proto.services.verifiablecredentials.templates.v1 import (CreateCredentialTemplateRequest, TemplateField,
                                                                       FieldType)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


def _vaccine_cert_frame_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-frame.jsonld"))


async def credential_demo():
    config = trinsic_config()
    trinsic_service = TrinsicService(server_config=config)

    ecosystem = await trinsic_service.provider.create_ecosystem()
    create_request = CreateCredentialTemplateRequest(
        name=f"Credential Service Test Python",
        fields={
            "firstName": TemplateField(
                type=FieldType.STRING
            ),
            "lastName": TemplateField(
                type=FieldType.STRING
            ),
        },
    )
    create_response = await trinsic_service.template.create(request=create_request)
    template = create_response.data

    values = json.dumps(
        {
            "firstName": "Allison",
            "lastName": "Allisonne"
        }
    )
    issue_response = await trinsic_service.credential.issue_from_template(
        request=IssueFromTemplateRequest(template_id=template.id, values_json=values)
    )
    credential_json = issue_response.document_json
    print(f"Credential: {credential_json}")

    try:
        # sendCredential() {
        send_response = await trinsic_service.credential.send(
            request=SendRequest(
                document_json=credential_json, email="example@trinsic.id"
            )
        )
        # }
    except:
        pass

    # Allison shares the credential with the venue.

    # createProof() {
    proof_response = await trinsic_service.credential.create_proof(
        request=CreateProofRequest(
            document_json=credential_json
        )
    )
    selective_proof_response = await trinsic_service.credential.create_proof(
        request=CreateProofRequest(
            document_json=credential_json,
            reveal_template=RevealTemplateAttributes(
                template_attributes=["firstName"]
            ),
        )
    )
    # }
    credential_proof = proof_response.proof_document_json
    print(f"Proof: {credential_proof}")

    # The airline verifies the credential
    # verifyProof() {
    verify_result = await trinsic_service.credential.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )
    selective_verify_result = await trinsic_service.credential.verify_proof(
        request=VerifyProofRequest(
            proof_document_json=selective_proof_response.proof_document_json
        )
    )
    # }
    print(f"Verification result: {verify_result}")
    assert verify_result.validation_results["SignatureVerification"].is_valid
    assert selective_verify_result.validation_results["SignatureVerification"].is_valid


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(credential_demo())
