import asyncio
import json
from os.path import abspath, join, dirname

from grpclib import GRPCError

from trinsic.proto.services.universalwallet.v1 import (
    DeleteItemRequest,
    DeleteWalletRequest,
    GetItemRequest,
    InsertItemRequest,
    SearchRequest,
    CreateWalletRequest,
    GetWalletInfoRequest,
    GetWalletFromExternalIdentityRequest,
)
from trinsic.proto.services.provider.v1 import IdentityProvider, WalletExternalIdentity
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


def _base_data_path() -> str:
    return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))


def _vaccine_cert_unsigned_path() -> str:
    return abspath(join(_base_data_path(), "vaccination-certificate-unsigned.jsonld"))


async def wallet_demo():
    config = trinsic_config()
    trinsic = TrinsicService(server_config=config)

    ecosystem_create = await trinsic.provider.create_ecosystem()
    create_wallet_response = await trinsic.wallet.create_wallet(
        request=CreateWalletRequest(ecosystem_id=ecosystem_create.ecosystem.id)
    )
    trinsic.set_auth_token(create_wallet_response.auth_token)

    wallet_id = create_wallet_response.wallet.wallet_id

    credential = json.dumps(
        {
            "type": ["VerifiableCredential", "NonExistentSchema"],
        }
    )
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
    item = await trinsic.wallet.get_item(request=GetItemRequest(item_id))
    # }

    trinsic.set_auth_token(ecosystem_create.profile)
    # getWalletInfo() {
    get_wallet_info_response = await trinsic.wallet.get_wallet_info(
        request=GetWalletInfoRequest(wallet_id=create_wallet_response.wallet.wallet_id)
    )
    # }

    try:
        # getWalletFromExternalIdentity() {
        get_wallet_from_external_identity_response = (
            await trinsic.wallet.get_wallet_from_external_identity(
                request=GetWalletFromExternalIdentityRequest(
                    identity=WalletExternalIdentity(
                        id="test@trinsic.id", provider=IdentityProvider.Email
                    )
                )
            )
        )
        # }
    except GRPCError as e:
        # We expect a wallet not found
        pass

    trinsic.set_auth_token(create_wallet_response.auth_token)

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
    await trinsic.wallet.delete_item(request=DeleteItemRequest(item_id=item_id))
    # }

    # deleteWallet() {
    await trinsic.wallet.delete_wallet(request=DeleteWalletRequest(wallet_id=wallet_id))
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(wallet_demo())
