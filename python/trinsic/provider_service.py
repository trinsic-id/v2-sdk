from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.provider.v1 import (
    ProviderStub,
    ParticipantType,
    InviteResponse,
    InvitationStatusResponse,
    CreateEcosystemResponse,
    InviteRequest,
    InvitationStatusRequest,
    CreateEcosystemRequest,
)
from trinsic.service_base import ServiceBase


class ProviderService(ServiceBase):
    """
    Wrapper for the [Provider Service](/reference/services/provider-service)
    """

    def __init__(
        self,
        server_config: ServiceOptions = None,
    ):
        """
        Initialize the connection
        Args:
            server_config: The address of the server to connect, or an already-connected `Channel`
        """
        super().__init__(server_config)
        self.client: ProviderStub = self.stub_with_metadata(ProviderStub)

    async def invite_participant(self, *, request: InviteRequest) -> InviteResponse:
        """
        [Invite a new participant to the provider ecosystem](/reference/services/provider-service/#invite-participants)
        Args:
            participant: [ParticipantType](/reference/proto/#participanttype)
            description:
            email:
            phone:
            didcomm_invitation: [InviteRequestDidCommInvitation](/reference/proto/#inviterequestdidcomminvitation)
        Returns:
            [InviteResponse](/reference/proto/#inviteresponse)
        """

        return await self.client.invite(invite_request=request)

    # async def accept_invite(
    #     self, invite_id: str = None, code: str = None
    # ) -> AcceptInviteResponse:
    #     return await self.client.accept_invite(id=invite_id, code=code)

    async def invitation_status(
        self, *, request: InvitationStatusRequest
    ) -> InvitationStatusResponse:
        """
        [Check invitation status](/reference/services/provider-service/#check-invitation-status)
        Args:
            invitation_id: invitation id returned from `invite_participant()`
        Returns:
            [InvitationStatusResponse](/reference/proto/#invitationstatusresponsestatus)
        """
        if (
            not request
            or not request.invitation_id
            or not request.invitation_id.strip()
        ):
            raise ValueError("Onboarding reference ID must be set.")

        return await self.client.invitation_status(invitation_status_request=request)

    async def create_ecosystem(
        self, *, request: CreateEcosystemRequest = None
    ) -> CreateEcosystemResponse:
        """
        Creates a new ecosystem
        Args:
            name:
            description:
            uri:

        Returns:
            [CreateEcosystemResponse](/reference/proto/#createecosystemresponse)
        """
        request = request or CreateEcosystemRequest()
        return await self.client.create_ecosystem(create_ecosystem_request=request)
