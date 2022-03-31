import asyncio
import uuid

from trinsic.account_service import AccountService
from trinsic.proto.services.provider.v1 import CreateEcosystemRequest
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config


async def ecosystem_demo():
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    provider_service = ProviderService(server_config=trinsic_config(account))

    actual_create = await provider_service.create_ecosystem(
        request=CreateEcosystemRequest(
            description="My ecosystem", uri="https://example.com"
        )
    )
    assert actual_create.ecosystem is not None
    assert actual_create.ecosystem.id is not None
    assert actual_create.ecosystem.id.startswith("urn:trinsic:ecosystems:")


if __name__ == "__main__":
    asyncio.run(ecosystem_demo())
