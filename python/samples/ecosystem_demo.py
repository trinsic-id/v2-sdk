import asyncio

from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import (
    CreateEcosystemRequest,
    InviteRequest,
    ParticipantType,
    InvitationStatusRequest,
)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def ecosystem_demo():
    trinsic_service = TrinsicService(server_config=trinsic_config())
    # createEcosystem() {
    actual_create = await trinsic_service.provider.create_ecosystem(
        request=CreateEcosystemRequest(
            description="My ecosystem", uri="https://example.com"
        )
    )
    # }
    assert actual_create.ecosystem is not None
    assert actual_create.ecosystem.id is not None
    assert actual_create.ecosystem.id.startswith("urn:trinsic:ecosystems:")
    print(f"ecosystem id={actual_create.ecosystem.id}")

    # listEcosystems() {
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(ecosystem_demo())
