import asyncio

from trinsic.account_service import AccountService
from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import (
    CreateEcosystemRequest,
    InviteRequest,
    ParticipantType,
    InvitationStatusRequest,
)
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config


async def ecosystem_demo():
    account_service = AccountService(server_config=trinsic_config())
    account = await account_service.sign_in()
    provider_service = ProviderService(server_config=trinsic_config(account))
    # createEcosystem() {
    actual_create = await provider_service.create_ecosystem(
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

    try:
        # inviteParticipant() {
        invite_response = await provider_service.invite_participant(
            request=InviteRequest(
                participant=ParticipantType.participant_type_individual,
                description="Doc sample",
                details=AccountDetails(email="example@trinsic.id"),
            )
        )
        # }
    except:
        pass

    invite_id = "NA"
    try:
        # invitationStatus() {
        invite_status = await provider_service.invitation_status(
            request=InvitationStatusRequest(invitation_id=invite_id)
        )
        # }
    except:
        pass


if __name__ == "__main__":
    asyncio.run(ecosystem_demo())
