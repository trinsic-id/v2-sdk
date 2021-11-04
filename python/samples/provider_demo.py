import asyncio

from trinsic.proto.services.provider.v1 import ParticipantType
from trinsic.services import ProviderService, get_test_server_config


async def provider_demo():
    provider_service = ProviderService(get_test_server_config())
    invite_response = await provider_service.invite_participant(
        participant=ParticipantType.participant_type_individual,
        description="I dunno",
        email="scott.phillips@trinsic.id")
    assert invite_response
    provider_service.close()


if __name__ == "__main__":
    asyncio.run(provider_demo())
