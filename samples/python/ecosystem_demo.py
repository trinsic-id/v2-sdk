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
    account = await trinsic_service.account.sign_in()
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

    try:
        # inviteParticipant() {
        invite_response = await trinsic_service.provider.invite_participant(
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
        invite_status = await trinsic_service.provider.invitation_status(
            request=InvitationStatusRequest(invitation_id=invite_id)
        )
        # }
    except:
        pass


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(ecosystem_demo())
