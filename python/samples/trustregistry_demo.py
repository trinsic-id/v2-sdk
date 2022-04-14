import asyncio

from trinsic.account_service import AccountService
from trinsic.proto.services.trustregistry.v1 import (
    RegistrationStatus,
    RegisterIssuerRequest,
    RegisterVerifierRequest,
    CheckIssuerStatusRequest,
    CheckVerifierStatusRequest,
    UnregisterIssuerRequest,
    UnregisterVerifierRequest,
    AddFrameworkRequest,
    GovernanceFramework,
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
    https_example_com = "https://example.com"
    did_example_test = "did:example:test"

    # registerGovernanceFramework() {
    register_framework_response = await service.register_governance_framework(
        request=AddFrameworkRequest(
            governance_framework=GovernanceFramework(
                governance_framework_uri=https_example_com,
                description="Demo framework",
                trust_registry_uri=https_schema_org,
            )
        )
    )
    # }

    # registerIssuer() {
    await service.register_issuer(
        request=RegisterIssuerRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            credential_type_uri=https_schema_org,
        )
    )
    # }

    # registerVerifier() {
    await service.register_verifier(
        request=RegisterVerifierRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            presentation_type_uri=https_schema_org,
        )
    )
    # }

    # checkIssuerStatus() {
    check_response = await service.check_issuer_status(
        request=CheckIssuerStatusRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            credential_type_uri=https_schema_org,
        )
    )
    # }
    issuer_status = check_response.status
    assert issuer_status == RegistrationStatus.CURRENT

    # checkVerifierStatus() {
    check_response = await service.check_verifier_status(
        request=CheckVerifierStatusRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            presentation_type_uri=https_schema_org,
        )
    )
    # }
    verifier_status = check_response.status
    assert verifier_status == RegistrationStatus.CURRENT

    # searchTrustRegistry() {
    search_result = await service.search_registry()
    # }
    assert search_result is not None
    assert search_result.items_json is not None
    assert len(search_result.items_json) > 0

    # unregisterIssuer() {
    unregister_issuer_response = await service.unregister_issuer(
        request=UnregisterIssuerRequest(
            governance_framework_uri=https_example_com,
            credential_type_uri=https_schema_org,
            did_uri=did_example_test,
        )
    )
    # }
    # unregisterVerifier() {
    unregister_verifier_response = await service.unregister_verifier(
        request=UnregisterVerifierRequest(
            governance_framework_uri=https_example_com,
            presentation_type_uri=https_schema_org,
            did_uri=did_example_test,
        )
    )
    # }


if __name__ == "__main__":
    asyncio.run(trustregistry_demo())
