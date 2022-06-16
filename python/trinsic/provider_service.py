from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.provider.v1 import *
from trinsic.proto.services.provider.v1 import (
    GetOberonKeyResponse,
    GetEventTokenResponse,
    AddWebhookResponse,
    DeleteWebhookResponse,
    EcosystemInfoResponse,
    GenerateTokenResponse,
)
from trinsic.service_base import ServiceBase


class ProviderService(ServiceBase):
    """
    Wrapper for the [Provider Service](/reference/services/provider-service)
    """

    def __init__(
        self,
        *,
        server_config: ServiceOptions = None,
    ):
        """
        Initialize the connection
        Args:
            server_config: The address of the server to connect, or an already-connected `Channel`
        """
        super().__init__(server_config)
        self.client: ProviderStub = self.stub_with_metadata(ProviderStub)

    async def create_ecosystem(
        self, *, request: CreateEcosystemRequest = None
    ) -> CreateEcosystemResponse:
        """
        Creates a new ecosystem
        Args:
            request:

        Returns:
            [CreateEcosystemResponse](/reference/proto/#createecosystemresponse)
        """
        request = request or CreateEcosystemRequest()
        # Authentication metadata interceptor is in `ServiceBase.py`
        metadata = {
            "authenticateCall": len(request.name) > 0
            or (request.details and len(request.details.email) > 0)
        }
        return await self.client.create_ecosystem(request, metadata=metadata)

    async def update_ecosystem(
        self, *, request: UpdateEcosystemRequest
    ) -> UpdateEcosystemResponse:
        return await self.client.update_ecosystem(request)

    async def add_webhook(self, *, request: AddWebhookRequest) -> AddWebhookResponse:
        return await self.client.add_webhook(request)

    async def delete_webhook(
        self, *, request: DeleteWebhookRequest
    ) -> DeleteWebhookResponse:
        return await self.client.delete_webhook(request)

    async def ecosystem_info(
        self, *, request: EcosystemInfoRequest
    ) -> EcosystemInfoResponse:
        return await self.client.ecosystem_info(request)

    async def generate_token(
        self, *, request: GenerateTokenRequest
    ) -> GenerateTokenResponse:
        return await self.client.generate_token(request)

    async def invite(self, *, request: InviteRequest) -> InviteResponse:
        return await self.client.invite(invite_request=request)

    async def invitation_status(
        self, *, request: InvitationStatusRequest
    ) -> InvitationStatusResponse:
        if (
            not request
            or not request.invitation_id
            or not request.invitation_id.strip()
        ):
            raise ValueError("Onboarding reference ID must be set.")

        return await self.client.invitation_status(invitation_status_request=request)

    async def get_oberon_key(
        self, *, request: GetOberonKeyRequest
    ) -> GetOberonKeyResponse:
        return await self.client.get_oberon_key(request)

    async def get_event_token(
        self, *, request: GetEventTokenRequest
    ) -> GetEventTokenResponse:
        return await self.client.get_event_token(request)
