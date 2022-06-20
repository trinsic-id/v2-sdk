import asyncio

from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import ParticipantType, InviteRequest
from trinsic.trinsic_service import TrinsicService

from trinsic.trinsic_util import trinsic_config


async def provider_demo():
    trinsic_service = TrinsicService(server_config=trinsic_config())
    account_profile = await trinsic_service.account.sign_in()
    try:
        invite_response = await trinsic_service.provider.invite(
            request=InviteRequest(
                details=AccountDetails(email="nothing@trinsic.id"),
                participant=ParticipantType.participant_type_individual,
                description="I dunno",
            )
        )
        assert invite_response
    except:
        pass


if __name__ == "__main__":
    asyncio.run(provider_demo())
