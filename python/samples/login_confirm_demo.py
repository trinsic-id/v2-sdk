import asyncio

from trinsic.proto.services.account.v1 import LoginRequest
from trinsic.proto.services.universalwallet.v1 import SearchRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config


async def signin(email: str) -> str:
    trinsic_service = TrinsicService()
    login_response = await trinsic_service.account.login(
        request=LoginRequest(email=email, ecosystem_id="default")
    )
    verify_code = input("Code sent to email, enter it here:")
    new_account = await trinsic_service.account.login_confirm(
        challenge=login_response.challenge, auth_code=verify_code
    )
    return new_account


async def check_wallet_contents(profile: str):
    # Check wallet contents
    trinsic_service = TrinsicService(server_config=trinsic_config(auth_token=profile))
    search_results = await trinsic_service.wallet.search(
        request=SearchRequest(query="SELECT * FROM _")
    )
    print(f"Wallet content items={search_results.items}")

    trinsic_service.close()


async def main():
    signin_email = input("Enter email to sign in:")
    account_profile = await signin(signin_email)
    await check_wallet_contents(account_profile)


if __name__ == "__main__":
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    result = loop.run_until_complete(main())
