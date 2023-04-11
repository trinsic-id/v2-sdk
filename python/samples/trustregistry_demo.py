import asyncio
import uuid

from trinsic.proto.services.trustregistry.v1 import (
    RegistrationStatus,
    AddFrameworkRequest,
    UnregisterMemberRequest,
    GetMembershipStatusRequest,
    RegisterMemberRequest,
)
from trinsic.proto.services.universalwallet.v1 import CreateWalletRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def trustregistry_demo():
    # setup
    trinsic_service = TrinsicService(server_config=trinsic_config())
    wallet_response = await trinsic_service.wallet.create_wallet(request=CreateWalletRequest(ecosystem_id="default"))
    trinsic_service.service_options.auth_token = wallet_response.auth_token

    # data
    https_schema_org = "https://schema.org/Card"
    https_example_com = f"https://example.com/{uuid.uuid4()}"
    did_example_test = "did:example:test"
    framework_name = f"Example Framework: {uuid.uuid4()}"

    # registerGovernanceFramework() {
    register_framework_response = await trinsic_service.trust_registry.add_framework(
        request=AddFrameworkRequest(
            governance_framework_uri=https_example_com,
            description="Demo framework",
            name=framework_name,
        )
    )
    # }

    # registerIssuerSample() {
    await trinsic_service.trust_registry.register_member(
        request=RegisterMemberRequest(
            did_uri=did_example_test,
            framework_id=register_framework_response.id,
            schema_uri=https_schema_org,
        )
    )
    # }

    # checkIssuerStatus() {
    check_response = await trinsic_service.trust_registry.get_membership_status(
        request=GetMembershipStatusRequest(
            did_uri=did_example_test,
            framework_id=register_framework_response.id,
            schema_uri=https_schema_org,
        )
    )
    # }
    issuer_status = check_response.status
    assert issuer_status == RegistrationStatus.CURRENT

    # searchTrustRegistry() {
    search_result = await trinsic_service.trust_registry.search()
    # }
    assert search_result is not None
    assert search_result.items_json is not None
    assert len(search_result.items_json) > 0

    # unregisterIssuer() {
    unregister_issuer_response = await trinsic_service.trust_registry.unregister_member(
        request=UnregisterMemberRequest(
            framework_id=register_framework_response.id,
            schema_uri=https_schema_org,
            did_uri=did_example_test,
        )
    )
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(trustregistry_demo())
