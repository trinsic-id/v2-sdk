import asyncio

from trinsic.proto.services.provider.v1 import ParticipantType
from trinsic.services import ProviderService, get_test_server_config, WalletService


async def provider_demo():
    wallet_service = WalletService(get_test_server_config())
    wallet_profile = await wallet_service.create_wallet()
    provider_service = ProviderService(get_test_server_config())
    provider_service.profile = wallet_profile
    invite_response = await provider_service.invite_participant(
        participant=ParticipantType.participant_type_individual,
        description="I dunno",
        email="scott.phillips@trinsic.id")
    assert invite_response
    provider_service.close()


if __name__ == "__main__":
    asyncio.run(provider_demo())
