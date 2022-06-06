import asyncio
from os.path import abspath, join, dirname

from trinsic.account_service import AccountService
from trinsic.credential_service import CredentialService
from trinsic.proto.services.account.v1 import SignInRequest
from trinsic.proto.services.universalwallet.v1 import InsertItemRequest, SearchRequest
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueRequest,
    CreateProofRequest,
    VerifyProofRequest,
    SendRequest,
)
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config
from trinsic.wallet_service import WalletService


def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


def _vaccine_cert_frame_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-frame.jsonld"))


async def credential_demo():
    config = trinsic_config()

    account_service = AccountService(server_config=config)
    account = await account_service.sign_in()

    config.auth_token = account

    provider_service = ProviderService(server_config=config)
    ecosystem = await provider_service.create_ecosystem()
    ecosystem_id = ecosystem.ecosystem.id

    # Set service default ecosystem
    provider_service.service_options.default_ecosystem = (
        account_service.service_options.default_ecosystem
    ) = ecosystem_id
    config.default_ecosystem = ecosystem_id

    wallet_service = WalletService(server_config=config)
    credentials_service = CredentialService(server_config=config)

    # Sign a credential as the clinic and send it to Allison
    with open(_vaccine_cert_unsigned_path(), "r") as fid:
        credential_json = "\n".join(fid.readlines())

    # issueCredential() {
    issue_response = await credentials_service.issue_credential(
        request=IssueRequest(document_json=credential_json)
    )
    # }
    credential_json = issue_response.signed_document_json
    print(f"Credential: {credential_json}")

    try:
        # sendCredential() {
        send_response = await credentials_service.send(
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
    proof_response = await credentials_service.create_proof(
        request=CreateProofRequest(
            reveal_document_json=proof_request_json, document_json=credential_json
        )
    )
    # }
    credential_proof = proof_response.proof_document_json
    print(f"Proof: {credential_proof}")

    # The airline verifies the credential
    # verifyProof() {
    verify_result = await credentials_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )
    # }
    valid = verify_result.is_valid
    print(f"Verification result: {valid}")
    assert valid is True

    credentials_service.close()
    wallet_service.close()
    account_service.close()
    provider_service.close()


if __name__ == "__main__":
    asyncio.run(credential_demo())
