import asyncio
import json
from os.path import abspath, join, dirname

from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.services import WalletService, AccountService, CredentialsService
from trinsic.trinsic_util import trinsic_test_config


# pathData() {
def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


def _vaccine_cert_frame_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-frame.jsonld"))
# }


async def vaccine_demo():
    # createService() {
    account_service = AccountService(server_config=trinsic_test_config())
    # }

    # setupActors() {
    # Create 3 different profiles for each participant in the scenario
    allison, _ = await account_service.sign_in()
    clinic, _ = await account_service.sign_in()
    airline, _ = await account_service.sign_in()
    # }

    account_service.profile = clinic
    info = await account_service.get_info()

    # createService() {
    wallet_service = WalletService(allison, trinsic_test_config())
    credentials_service = CredentialsService(clinic, trinsic_test_config())
    # }

    # storeAndRecallProfile() {
    # Store profile for later use
    with open("allison.bin", "wb") as fid:
        fid.write(bytes(allison))

    # Create profile from existing data
    allison = AccountProfile()
    with open("allison.bin", "rb") as fid:
        allison.parse(fid.read())
    # }

    # issueCredential() {
    # Sign a credential as the clinic and send it to Allison
    with open(_vaccine_cert_unsigned_path(), "r") as fid:
        credential_json = json.load(fid)

    credential = await credentials_service.issue_credential(credential_json)
    print(f"Credential: {credential}")
    # }

    # storeCredential() {
    # Alice stores the credential in her cloud wallet.
    wallet_service.profile = allison
    item_id = await wallet_service.insert_item(credential)
    print(f"item id = {item_id}")
    # }

    # shareCredential() {
    # Allison shares the credential with the venue.
    # The venue has communicated with Allison the details of the credential
    # that they require expressed as a JSON-LD frame.
    credentials_service.profile = allison
    with open(_vaccine_cert_frame_path(), "r") as fid2:
        proof_request_json = json.load(fid2)

    credential_proof = await credentials_service.create_proof(document_id=item_id, reveal_document=proof_request_json)
    print(f"Proof: {credential_proof}")
    # }

    # verifyCredential() {
    # The airline verifies the credential
    credentials_service.profile = airline
    valid = await credentials_service.verify_proof(credential_proof)

    print(f"Verification result: {valid}")
    assert valid
    # }

    wallet_service.close()


if __name__ == "__main__":
    asyncio.run(vaccine_demo())
