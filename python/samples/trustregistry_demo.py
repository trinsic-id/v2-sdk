import asyncio
import uuid

from trinsic.account_service import AccountService
from trinsic.proto.services.trustregistry.v1 import (
    RegistrationStatus,
    AddFrameworkRequest,
    UnregisterMemberRequest,
    GetMembershipStatusRequest,
    RegisterMemberRequest,
)
from trinsic.trinsic_util import trinsic_config
from trinsic.trustregistry_service import TrustRegistryService


async def trustregistry_demo():
    # setup
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    service = TrustRegistryService(server_config=trinsic_config(account))

    # data
    https_schema_org = "https://schema.org/Card"
    https_example_com = f"https://example.com/{uuid.uuid4()}"
    did_example_test = "did:example:test"
    framework_name = f"Example Framework: {uuid.uuid4()}"

    # registerGovernanceFramework() {
    register_framework_response = await service.register_governance_framework(
        request=AddFrameworkRequest(
            governance_framework_uri=https_example_com,
            description="Demo framework",
            name=framework_name,
        )
    )
    # }

    # registerIssuerSample() {
    await service.register_member(
        request=RegisterMemberRequest(
            did_uri=did_example_test,
            framework_id=register_framework_response.id,
            schema_uri=https_schema_org,
        )
    )
    # }

    # checkIssuerStatus() {
    check_response = await service.get_membership_status(
        request=GetMembershipStatusRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            schema_uri=https_schema_org,
        )
    )
    # }
    issuer_status = check_response.status
    assert issuer_status == RegistrationStatus.CURRENT

    # searchTrustRegistry() {
    search_result = await service.search_registry()
    # }
    assert search_result is not None
    assert search_result.items_json is not None
    assert len(search_result.items_json) > 0

    # unregisterIssuer() {
    unregister_issuer_response = await service.unregister_member(
        request=UnregisterMemberRequest(
            framework_id=register_framework_response.id,
            schema_uri=https_schema_org,
            did_uri=did_example_test,
        )
    )
    # }


if __name__ == "__main__":
    asyncio.run(trustregistry_demo())
