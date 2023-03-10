import asyncio
import trinsic.trinsic_util
# createAccountService() {
from trinsic.proto.services.account.v1 import LoginRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
account_service = trinsic.account
# }


async def account_service_examples():
    # We expect this to fail because this is a fake auth code
    try:
        # accountServiceLogin() {
        login_response = await trinsic.account.login(
            request=LoginRequest(
                email="example@example.com", ecosystem_id="[YOUR-ECOSYSTEM-ID]"
            )
        )
        auth_token = await trinsic.account.login_confirm(
            challenge=login_response.challenge, auth_code="12345"
        )
        # }
        assert False  # If we get here, it means login succeeded -- which is an error.
    except:
        pass

    # Log into an anonymous account to do the rest of the tests
    # accountServiceLoginAnonymous() {
    await trinsic.account.login_anonymous()
    # }

    # accountServiceInfo() {
    info = await account_service.info()
    print(f"Account info: EcosystemId={info.ecosystem_id}, WalletId=${info.wallet_id}")
    # }

    trinsic.close()


if __name__ == "__main__":
    trinsic.trinsic_util.set_eventloop_policy()
    asyncio.run(account_service_examples())
