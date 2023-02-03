import asyncio
import json
from os.path import abspath, join, dirname

from trinsic.proto.services.universalwallet.v1 import DeleteItemRequest, DeleteWalletRequest, GetItemRequest, InsertItemRequest, SearchRequest
from trinsic.proto.services.verifiablecredentials.v1 import IssueRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


async def wallet_demo():
    config = trinsic_config()
    trinsic = TrinsicService(server_config=config)

    ecosystem = await trinsic.provider.create_ecosystem()
    await trinsic.account.login_anonymous(ecosystem_id=ecosystem.ecosystem.id)

    account_info = await trinsic.account.info()
    wallet_id = account_info.wallet_id

    # Sign a credential as the clinic and send it to Allison
    with open(_vaccine_cert_unsigned_path(), "r") as fid:
        credential_json = "\n".join(fid.readlines())

    issue_response = await trinsic.credential.issue(
        request=IssueRequest(document_json=credential_json)
    )
    credential = issue_response.signed_document_json
    print(f"Credential: {credential}")

    # insertItemWallet() {
    insert_response = await trinsic.wallet.insert_item(
        request=InsertItemRequest(
            item_json=credential, item_type="VerifiableCredential"
        )
    )
    # }

    item_id = insert_response.item_id
    print(f"item id = {item_id}")

    # getItem() {
    item = await trinsic.wallet.get_item(
        request=GetItemRequest(item_id)
    )
    # }

    # searchWalletBasic() {
    wallet_items = await trinsic.wallet.search_wallet()
    # }

    # searchWalletSQL() {
    wallet_items = await trinsic.wallet.search_wallet(
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

    # deleteItem() {
    await trinsic.wallet.delete_item(
        request=DeleteItemRequest(item_id=item_id)
    )
    # }

    # deleteWallet() {
    await trinsic.wallet.delete_wallet(
        request=DeleteWalletRequest(wallet_id=wallet_id)
    )
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(wallet_demo())
