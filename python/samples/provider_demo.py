import asyncio

from trinsic.account_service import AccountService
from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import ParticipantType, InviteRequest
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config


async def provider_demo():
    account_service = AccountService(server_config=trinsic_config())
    account_profile = await account_service.sign_in()
    provider_service = ProviderService(server_config=trinsic_config(account_profile))
    try:
        invite_response = await provider_service.invite_participant(
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
