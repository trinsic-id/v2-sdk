import asyncio

from trinsic.proto.services.account.v1 import AuthorizeWebhookRequest, LoginRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def account_demo():
    config = trinsic_config()

    trinsic = TrinsicService(server_config=config)

    ecosystem = await trinsic.provider.create_ecosystem()

    # loginRequest() {
    login_response = await trinsic.account.login(
        request=LoginRequest(email="bob@example.com", ecosystem_id="<ecosystem id or name>")
    )
    # }

    # We expect this to fail because this is a fake auth code
    try:
        # loginConfirm() {
        auth_token = await trinsic.account.login_confirm(
            challenge=login_response.challenge, auth_code="12345"
        )
        # }

        # setAuthTokenSample() {
        trinsic.service_options.auth_token = auth_token
        # }

        assert False  # If we get here, it means login succeeded -- which is an error.
    except:
        pass

    # Log into an anonymous account to do the rest of the test
    await trinsic.account.login_anonymous()

    # authorizeWebhook() {
    request = AuthorizeWebhookRequest()
    request.events.append("*")
    response = await trinsic.account.authorize_webhook(request=request)
    # }

    trinsic.close()


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(account_demo())
