import asyncio

from trinsic.services import ProviderService, AccountService
from trinsic.trinsic_util import trinsic_test_config


async def ecosystem_demo():
    account_service = AccountService(server_config=trinsic_test_config())
    account_profile, _ = await account_service.sign_in()
    provider_service = ProviderService(account_profile, trinsic_test_config(), account_service.channel)
    actual_create = await provider_service.create_ecosystem(name="Test Ecosystem", description="My ecosystem", uri="https://example.com")
    assert actual_create is not None
    assert actual_create.id is not None
    assert actual_create.id.startswith("urn:trinsic:ecosystems:")

    actual_list = await provider_service.list_ecosystems()
    assert actual_list is not None
    assert len(actual_list) > 0


if __name__ == "__main__":
    asyncio.run(ecosystem_demo())
