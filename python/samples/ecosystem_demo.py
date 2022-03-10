import asyncio
import uuid

from trinsic.account_service import AccountService
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config


async def ecosystem_demo():
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    provider_service = ProviderService(server_config=trinsic_config(account))

    ecosystem_name = f"test-sdk-{uuid.uuid4()}"
    print(f"Ecosystem name={ecosystem_name}")

    actual_create = await provider_service.create_ecosystem(
        name=ecosystem_name,
        description="My ecosystem",
        uri="https://example.com",
    )
    assert actual_create.ecosystem is not None
    assert actual_create.ecosystem.id is not None
    assert actual_create.ecosystem.id.startswith("urn:trinsic:ecosystems:")


if __name__ == "__main__":
    asyncio.run(ecosystem_demo())
