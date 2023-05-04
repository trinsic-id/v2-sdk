import asyncio

from trinsic.proto.sdk.options.v1 import TrinsicOptions
from trinsic.proto.services.universalwallet.v1 import SearchRequest, AuthenticateInitRequest, IdentityProvider, \
    AuthenticateConfirmRequest, CreateWalletRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

# server_config=TrinsicOptions(server_port=5000, server_use_tls=False, server_endpoint="localhost")
server_config = trinsic_config()

ECOSYSTEM_ID = "yeet"


async def create_anonymous_wallet() -> str:
    trinsic_service = TrinsicService(server_config=server_config)
    new_wallet_response = await trinsic_service.wallet.create_wallet(request=CreateWalletRequest(ecosystem_id=ECOSYSTEM_ID))
    print("New wallet created:", new_wallet_response)


async def signin(email: str) -> str:
    trinsic_service = TrinsicService(server_config=server_config)
    login_response = await trinsic_service.wallet.authenticate_init(
        request=AuthenticateInitRequest(identity=email, provider=IdentityProvider.EMAIL, ecosystem_id=ECOSYSTEM_ID)
    )
    verify_code = input("Code sent to email, enter it here:")
    wallet_auth = await trinsic_service.wallet.authenticate_confirm(
        request=AuthenticateConfirmRequest(challenge=login_response.challenge, response=verify_code)
    )
    return wallet_auth.auth_token


async def check_wallet_contents(profile: str):
    # Check wallet contents
    trinsic_service = TrinsicService(server_config=server_config)
    trinsic_service.set_auth_token(profile)
    search_results = await trinsic_service.wallet.search(
        request=SearchRequest(query="SELECT * FROM _")
    )
    print(f"Wallet content items={search_results.items}")

    trinsic_service.close()


async def main():
    signin_email = input("Enter email to sign in:")
    account_profile = await signin(signin_email)
    await create_anonymous_wallet()
    await check_wallet_contents(account_profile)


if __name__ == "__main__":
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    result = loop.run_until_complete(main())
