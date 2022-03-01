from typing import List

from grpclib.client import Channel

from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.proto.services.provider.v1 import (
    ProviderStub,
    ParticipantType,
    InviteRequestDidCommInvitation,
    InviteResponse,
    AcceptInviteResponse,
    InvitationStatusResponse,
    CreateEcosystemResponse,
    Ecosystem,
)
from trinsic.service_base import ServiceBase
from trinsic.trinsic_util import trinsic_production_config


class ProviderService(ServiceBase):
    """
    Wrapper for the [Provider Service](/reference/services/provider-service)
    """

    def __init__(
        self,
        *,
        profile: AccountProfile,
        server_config: ServerConfig = None,
        channel: Channel = None
    ):
        """
        Initialize the connection
        Args:
            server_config: The address of the server to connect, or an already-connected `Channel`
        """
        super().__init__(profile, server_config, channel)
        self.client: ProviderStub = self.stub_with_metadata(ProviderStub)

    async def invite_participant(
        self,
        participant: ParticipantType = None,
        description: str = None,
        email: str = None,
        phone: str = None,
        didcomm_invitation: InviteRequestDidCommInvitation = None,
    ) -> InviteResponse:
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
        if not email and not phone:
            raise ValueError("Contact method must be set")

        return await self.client.invite(
            participant=participant,
            description=description,
            phone=phone,
            email=email,
            didcomm_invitation=didcomm_invitation,
        )

    async def accept_invite(
        self, invite_id: str = None, code: str = None
    ) -> AcceptInviteResponse:
        return await self.client.accept_invite(id=invite_id, code=code)

    async def invitation_status(
        self, invitation_id: str = ""
    ) -> InvitationStatusResponse:
        """
        [Check invitation status](/reference/services/provider-service/#check-invitation-status)
        Args:
            invitation_id: invitation id returned from `invite_participant()`
        Returns:
            [InvitationStatusResponse](/reference/proto/#invitationstatusresponsestatus)
        """
        if not invitation_id or not invitation_id.strip():
            raise ValueError("Onboarding reference ID must be set.")

        return await self.client.invitation_status(invitation_id=invitation_id)

    async def create_ecosystem(
        self, name: str = "", description: str = "", uri: str = ""
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
        return await self.client.create_ecosystem(
            name=name, description=description, uri=uri
        )

    async def list_ecosystems(self) -> List[Ecosystem]:
        """
        Lists all ecosystems that are owned by the authorized user
        Returns:
            A `List` of the [Ecosystem](/reference/proto/#ecosystem)s owned by the user
        """
        return (await self.client.list_ecosystems()).ecosystem
