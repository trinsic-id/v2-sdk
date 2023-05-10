import asyncio
import base64

from trinsic.proto.sdk.options.v1 import TrinsicOptions
from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.universalwallet.v1 import (
    SearchRequest,
    AuthenticateInitRequest,
    IdentityProvider,
    AuthenticateConfirmRequest,
    CreateWalletRequest,
    AddExternalIdentityInitRequest,
    AddExternalIdentityConfirmRequest,
    GetMyInfoRequest,
)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

# server_config=TrinsicOptions(server_port=5000, server_use_tls=False, server_endpoint="localhost")
server_config = trinsic_config()

ECOSYSTEM_ID = "okeydoke"
trinsic_service = TrinsicService(server_config=server_config)


async def create_anonymous_wallet() -> str:
    new_wallet_response = await trinsic_service.wallet.create_wallet(
        request=CreateWalletRequest(ecosystem_id=ECOSYSTEM_ID)
    )
    print("New wallet created:", new_wallet_response)


async def add_external_identity() -> str:
    phone_nr = input("Enter phone number to link:")
    add_id_resp = await trinsic_service.wallet.add_external_identity_init(
        request=AddExternalIdentityInitRequest(
            identity=phone_nr, provider=IdentityProvider.PHONE
        )
    )
    id_code = input("Code sent to phone, enter it here:")
    add_id_conf = await trinsic_service.wallet.add_external_identity_confirm(
        request=AddExternalIdentityConfirmRequest(
            challenge=add_id_resp.challenge, response=id_code
        )
    )
    print(f"Phone:{phone_nr} successfully added")


async def signin(email: str) -> str:
    login_response = await trinsic_service.wallet.authenticate_init(
        request=AuthenticateInitRequest(
            identity=email, provider=IdentityProvider.EMAIL, ecosystem_id=ECOSYSTEM_ID
        )
    )
    verify_code = input("Code sent to email, enter it here:")
    wallet_auth = await trinsic_service.wallet.authenticate_confirm(
        request=AuthenticateConfirmRequest(
            challenge=login_response.challenge, response=verify_code
        )
    )
    acc_profile = AccountProfile.FromString(
        base64.urlsafe_b64decode(wallet_auth.auth_token)
    )
    trinsic_service.set_auth_token(wallet_auth.auth_token)


async def check_wallet_contents():
    info_result = await trinsic_service.wallet.get_my_info(request=GetMyInfoRequest())
    print(f"Wallet Information:{info_result}")

    search_results = await trinsic_service.wallet.search(
        request=SearchRequest(query="SELECT * FROM _")
    )
    print(f"Wallet content items={search_results.items}")

    trinsic_service.close()


async def main():
    signin_email = input("Enter email to sign in:")
    account_profile = await signin(signin_email)
    # await create_anonymous_wallet()
    await add_external_identity()
    await check_wallet_contents()


if __name__ == "__main__":
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    result = loop.run_until_complete(main())
