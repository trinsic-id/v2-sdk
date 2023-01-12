import asyncio
from os.path import abspath, join, dirname

from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueRequest,
    CreateProofRequest,
    VerifyProofRequest,
    SendRequest,
    RevealTemplateAttributes,
)
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

    account = await trinsic_service.account.sign_in()

    config.auth_token = account

    ecosystem = await trinsic_service.provider.create_ecosystem()

    # Sign a credential as the clinic and send it to Allison
    with open(_vaccine_cert_unsigned_path(), "r") as fid:
        credential_json = "\n".join(fid.readlines())

    # issueCredential() {
    issue_response = await trinsic_service.credential.issue(
        request=IssueRequest(document_json=credential_json)
    )
    # }
    credential_json = issue_response.signed_document_json
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
    # The venue has communicated with Allison the details of the credential
    # that they require expressed as a JSON-LD frame.
    with open(_vaccine_cert_frame_path(), "r") as fid2:
        proof_request_json = "\n".join(fid2.readlines())

    # createProof() {
    proof_response = await trinsic_service.credential.create_proof(
        request=CreateProofRequest(
            reveal_document_json=proof_request_json, document_json=credential_json
        )
    )
    selective_proof_response = await trinsic_service.credential.create_proof(
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
