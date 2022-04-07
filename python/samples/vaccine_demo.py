import asyncio
from os.path import abspath, join, dirname

from trinsic.account_service import AccountService
from trinsic.credentials_service import CredentialsService
from trinsic.proto.services.account.v1 import SignInRequest
from trinsic.proto.services.universalwallet.v1 import InsertItemRequest, SearchRequest
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueRequest,
    CreateProofRequest,
    VerifyProofRequest,
)
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config
from trinsic.wallet_service import WalletService


# pathData() {
def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


def _vaccine_cert_frame_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-frame.jsonld"))
# }


async def vaccine_demo():
    # createAccountService() {
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    # }

    # createProviderService() {
    provider_service = ProviderService(server_config=trinsic_config(account))
    ecosystem = await provider_service.create_ecosystem()
    ecosystem_id = ecosystem.ecosystem.id
    # }

    # setupActors() {
    # Create 3 different profiles for each participant in the scenario
    allison = await account_service.sign_in(
        request=SignInRequest(ecosystem_id=ecosystem_id)
    )
    clinic = await account_service.sign_in(
        request=SignInRequest(ecosystem_id=ecosystem_id)
    )
    airline = await account_service.sign_in(
        request=SignInRequest(ecosystem_id=ecosystem_id)
    )
    # }

    account_service.service_options.auth_token = clinic
    info = await account_service.get_info()
    print(f"Account info={info}")

    # createService() {
    wallet_service = WalletService(server_config=trinsic_config(allison))
    credentials_service = CredentialsService(server_config=trinsic_config(clinic))
    # }

    # storeAndRecallProfile() {
    # Store profile for later use
    with open("allison.txt", "wb") as fid:
        fid.write(allison.encode("utf-8"))

    # Create profile from existing data
    with open("allison.txt", "rb") as fid:
        allison = fid.readline()
    # }

    # Sign a credential as the clinic and send it to Allison
    with open(_vaccine_cert_unsigned_path(), "r") as fid:
        credential_json = "\n".join(fid.readlines())

    # issueCredential() {
    issue_response = await credentials_service.issue_credential(
        request=IssueRequest(document_json=credential_json)
    )
    # }
    credential = issue_response.signed_document_json
    print(f"Credential: {credential}")

    # checkCredentialStatus() {
    # status_id = credential['id']
    # credential_status = await credentials_service.check_status(credential_status_id=status_id)
    # print(f"Credential_status: {credential_status}")
    # }

    # storeCredential() {
    # Alice stores the credential in her cloud wallet.
    wallet_service.service_options.auth_token = allison
    # insertItemWallet() {
    insert_response = await wallet_service.insert_item(
        request=InsertItemRequest(item_json=credential)
    )
    # }
    item_id = insert_response.item_id
    print(f"item id = {item_id}")
    # searchWallet() {
    wallet_items = await wallet_service.search()
    # }
    # searchWalletSQL() {
    wallet_items2 = await wallet_service.search(request=SearchRequest(query="SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"))
    # }
    print(f"last wallet item = {wallet_items.items[-1]}")

    # shareCredential() {
    # Allison shares the credential with the venue.
    # The venue has communicated with Allison the details of the credential
    # that they require expressed as a JSON-LD frame.
    credentials_service.service_options.auth_token = allison
    wallet_service.service_options.auth_token = allison
    with open(_vaccine_cert_frame_path(), "r") as fid2:
        proof_request_json = "\n".join(fid2.readlines())

    # createProof() {
    proof_response = await credentials_service.create_proof(
        request=CreateProofRequest(
            reveal_document_json=proof_request_json, item_id=item_id
        )
    )
    # }
    credential_proof = proof_response.proof_document_json
    print(f"Proof: {credential_proof}")
    # }

    # verifyCredential() {
    # The airline verifies the credential
    credentials_service.service_options.auth_token = airline
    wallet_service.service_options.auth_token = airline
    # verifyProof() {
    verify_result = await credentials_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )
    # }
    valid = verify_result.is_valid
    print(f"Verification result: {valid}")
    assert valid is True
    # }

    # revokeCredential() {
    # update_status_response = await credentials_service.update_status(credential_status_id=status_id, revoked=True)
    # print(f"UpdateStatusResponse: {update_status_response}")
    # credential_status = await credentials_service.check_status(credential_status_id=status_id)
    # print(f"Credential_status: {credential_status}")
    # assert credential_status.revoked is True
    # }
    credentials_service.close()
    wallet_service.close()
    account_service.close()
    provider_service.close()


if __name__ == "__main__":
    asyncio.run(vaccine_demo())
