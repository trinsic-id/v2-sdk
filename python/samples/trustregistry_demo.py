import asyncio

from trinsic.account_service import AccountService
from trinsic.proto.services.trustregistry.v1 import (
    RegistrationStatus,
    RegisterIssuerRequest,
    RegisterVerifierRequest,
    CheckIssuerStatusRequest,
    CheckVerifierStatusRequest,
)
from trinsic.trustregistry_service import TrustRegistryService
from trinsic.trinsic_util import trinsic_config


async def trustregistry_demo():
    # setup
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    service = TrustRegistryService(server_config=trinsic_config(account))

    # data
    https_schema_org = "https://schema.org/Card"
    https_example_com = "https://example.com"
    did_example_test = "did:example:test"
    # register issuer
    await service.register_issuer(
        request=RegisterIssuerRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            credential_type_uri=https_schema_org,
        )
    )

    # register verifier
    await service.register_verifier(
        request=RegisterVerifierRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            presentation_type_uri=https_schema_org,
        )
    )

    # check issuer status
    check_response = await service.check_issuer_status(
        request=CheckIssuerStatusRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            credential_type_uri=https_schema_org,
        )
    )
    issuer_status = check_response.status
    assert issuer_status == RegistrationStatus.CURRENT

    # check verifier status
    check_response = await service.check_verifier_status(
        request=CheckVerifierStatusRequest(
            did_uri=did_example_test,
            governance_framework_uri=https_example_com,
            presentation_type_uri=https_schema_org,
        )
    )
    verifier_status = check_response.status
    assert verifier_status == RegistrationStatus.CURRENT

    # search registry
    search_result = await service.search_registry()
    assert search_result is not None
    assert search_result.items_json is not None
    assert len(search_result.items_json) > 0


if __name__ == "__main__":
    asyncio.run(trustregistry_demo())
