import asyncio

from trinsic.proto.services.provider.v1 import ParticipantType
from trinsic.services import ProviderService, AccountService
from trinsic.trinsic_util import trinsic_test_config


async def provider_demo():
    account_service = AccountService(server_config=trinsic_test_config())
    account_profile, _ = await account_service.sign_in()
    provider_service = ProviderService(account_profile, trinsic_test_config())
    invite_response = await provider_service.invite_participant(
        participant=ParticipantType.participant_type_individual,
        description="I dunno",
        email="scott.phillips@trinsic.id")
    assert invite_response


if __name__ == "__main__":
    asyncio.run(provider_demo())
