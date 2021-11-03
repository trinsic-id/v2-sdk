import asyncio
import os

from proto.services.provider.v1 import ParticipantType
from trinsic.services import ProviderService


async def provider_demo():
    server_address = os.getenv('TRINSIC_SERVER_ADDRESS')
    provider_service = ProviderService(server_address)
    invite_response = await provider_service.invite_participant(
        participant=ParticipantType.participant_type_individual,
        description="I dunno",
        email="scott.phillips@trinsic.id")
    assert invite_response


if __name__ == "__main__":
    asyncio.run(provider_demo())
