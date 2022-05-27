import asyncio
import json
from os.path import abspath, join, dirname

from trinsic.account_service import AccountService
from trinsic.credential_service import CredentialService
from trinsic.proto.services.universalwallet.v1 import InsertItemRequest, SearchRequest
from trinsic.proto.services.verifiablecredentials.v1 import IssueRequest
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config
from trinsic.wallet_service import WalletService


def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


async def wallet_demo():
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

    issue_response = await credentials_service.issue_credential(
        request=IssueRequest(document_json=credential_json)
    )
    credential = issue_response.signed_document_json
    print(f"Credential: {credential}")

    # insertItemWallet() {
    insert_response = await wallet_service.insert_item(
        request=InsertItemRequest(
            item_json=credential, item_type="VerifiableCredential"
        )
    )
    # }

    item_id = insert_response.item_id
    print(f"item id = {item_id}")

    # searchWalletBasic() {
    wallet_items = await wallet_service.search()
    # }

    # searchWalletSQL() {
    wallet_items = await wallet_service.search(
        request=SearchRequest(
            query="SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"
        )
    )
    # }

    print(f"Num wallet items: {len(wallet_items.items)}")
    print(f"last wallet item = {wallet_items.items[-1]}")
    item = json.loads(wallet_items.items[-1])

    assert len(wallet_items.items) == 1
    assert item["id"] == item_id

    credentials_service.close()
    wallet_service.close()
    account_service.close()
    provider_service.close()


if __name__ == "__main__":
    asyncio.run(wallet_demo())
