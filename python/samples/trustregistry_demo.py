import asyncio

from trinsic.account_service import AccountService
from trinsic.proto.services.trustregistry.v1 import RegistrationStatus
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
        issuer_did=did_example_test,
        governance_framework=https_example_com,
        credential_type=https_schema_org,
    )

    # register verifier
    await service.register_verifier(
        verifier_did=did_example_test,
        governance_framework=https_example_com,
        presentation_type=https_schema_org,
    )

    # check issuer status
    issuer_status = await service.check_issuer_status(
        issuer_did=did_example_test,
        governance_framework=https_example_com,
        credential_type=https_schema_org,
    )
    assert issuer_status == RegistrationStatus.CURRENT

    # check verifier status
    verifier_status = await service.check_verifier_status(
        issuer_did=did_example_test,
        governance_framework=https_example_com,
        presentation_type=https_schema_org,
    )
    assert verifier_status == RegistrationStatus.CURRENT

    # search registry
    search_result = await service.search_registry()
    assert search_result is not None
    assert search_result.items_json is not None
    assert len(search_result.items_json) > 0


if __name__ == "__main__":
    asyncio.run(trustregistry_demo())
