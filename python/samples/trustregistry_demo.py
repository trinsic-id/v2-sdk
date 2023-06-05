import asyncio
import uuid

from trinsic.proto.services.trustregistry.v1 import (
    RegistrationStatus,
    UnregisterMemberRequest,
    GetMemberAuthorizationStatusRequest,
    RegisterMemberRequest,
)
from trinsic.proto.services.universalwallet.v1 import CreateWalletRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def trustregistry_demo():
    # setup
    trinsic_service = TrinsicService(server_config=trinsic_config())
    wallet_response = await trinsic_service.wallet.create_wallet(
        request=CreateWalletRequest(ecosystem_id="default")
    )
    trinsic_service.service_options.auth_token = wallet_response.auth_token

    # data
    https_schema_org = "https://schema.org/Card"
    did_example_test = "did:example:test"

    # registerIssuerSample() {
    await trinsic_service.trust_registry.register_member(
        request=RegisterMemberRequest(
            did_uri=did_example_test,
            schema_uri=https_schema_org,
        )
    )
    # }

    # checkIssuerStatus() {
    check_response = (
        await trinsic_service.trust_registry.get_member_authorization_status(
            request=GetMemberAuthorizationStatusRequest(
                did_uri=did_example_test,
                schema_uri=https_schema_org,
            )
        )
    )
    # }
    issuer_status = check_response.status
    assert issuer_status == RegistrationStatus.CURRENT

    # unregisterIssuer() {
    unregister_issuer_response = await trinsic_service.trust_registry.unregister_member(
        request=UnregisterMemberRequest(
            schema_uri=https_schema_org,
            did_uri=did_example_test,
        )
    )
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(trustregistry_demo())
