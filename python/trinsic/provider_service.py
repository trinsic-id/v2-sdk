from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.provider.v1 import *
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
        self.client = ProviderStub(super().channel)

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
        authenticate = len(request.name) > 0 or (
            request.details and len(request.details.email) > 0
        )
        metadata = (
            self.build_metadata(request) if authenticate else self.build_metadata()
        )
        return await self.client.create_ecosystem(request, metadata=metadata)

    # BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    # target: /home/runner/work/sdk/sdk/python/trinsic/provider_service.py

    async def update_ecosystem(
        self, *, request: UpdateEcosystemRequest
    ) -> UpdateEcosystemResponse:
        """Update an existing ecosystem"""

        return await self.client.update_ecosystem(
            request, metadata=self.build_metadata(request)
        )

    async def grant_authorization(
        self, *, request: GrantAuthorizationRequest
    ) -> GrantAuthorizationResponse:
        """Grant user authorization to ecosystem resources"""

        return await self.client.grant_authorization(
            request, metadata=self.build_metadata(request)
        )

    async def revoke_authorization(
        self, *, request: RevokeAuthorizationRequest
    ) -> RevokeAuthorizationResponse:
        """Revoke user authorization to ecosystem resources"""

        return await self.client.revoke_authorization(
            request, metadata=self.build_metadata(request)
        )

    async def get_authorizations(
        self, *, request: GetAuthorizationsRequest
    ) -> GetAuthorizationsResponse:
        """Retreive the list of permissions for this particular account/ecosystem"""

        return await self.client.get_authorizations(
            request, metadata=self.build_metadata(request)
        )

    async def add_webhook(self, *, request: AddWebhookRequest) -> AddWebhookResponse:
        """Add a webhook endpoint to the ecosystem"""

        return await self.client.add_webhook(
            request, metadata=self.build_metadata(request)
        )

    async def delete_webhook(
        self, *, request: DeleteWebhookRequest
    ) -> DeleteWebhookResponse:
        """Delete a webhook endpoint from the ecosystem"""

        return await self.client.delete_webhook(
            request, metadata=self.build_metadata(request)
        )

    async def ecosystem_info(
        self, *, request: EcosystemInfoRequest
    ) -> EcosystemInfoResponse:
        """Get ecosystem information"""

        return await self.client.ecosystem_info(
            request, metadata=self.build_metadata(request)
        )

    async def generate_token(
        self, *, request: GenerateTokenRequest
    ) -> GenerateTokenResponse:
        """
        Generates an unprotected authentication token that can be used to
         configure server side applications
        """

        return await self.client.generate_token(
            request, metadata=self.build_metadata(request)
        )

    async def invite(self, *, request: InviteRequest) -> InviteResponse:
        """Invite a user to the ecosystem"""

        return await self.client.invite(request, metadata=self.build_metadata(request))

    async def invitation_status(
        self, *, request: InvitationStatusRequest
    ) -> InvitationStatusResponse:
        """Check the status of an invitation"""

        return await self.client.invitation_status(
            request, metadata=self.build_metadata(request)
        )

    async def get_oberon_key(
        self, *, request: GetOberonKeyRequest
    ) -> GetOberonKeyResponse:
        """Returns the public key being used to create/verify oberon tokens"""

        return await self.client.get_oberon_key(request, metadata=self.build_metadata())

    async def get_event_token(
        self, *, request: GetEventTokenRequest
    ) -> GetEventTokenResponse:
        """Generate a signed token (JWT) that can be used to connect to the message bus"""

        return await self.client.get_event_token(
            request, metadata=self.build_metadata(request)
        )

    async def retrieve_verification_record(
        self, *, request: RetrieveVerificationRecordRequest
    ) -> RetrieveVerificationRecordResponse:
        """Retrieve a random hash TXT that can be used to verify domain ownership"""

        return await self.client.retrieve_verification_record(
            request, metadata=self.build_metadata(request)
        )

    async def refresh_verification_status(
        self, *, request: RefreshVerificationStatusRequest
    ) -> RefreshVerificationStatusResponse:
        """Call to verif"""

        return await self.client.refresh_verification_status(
            request, metadata=self.build_metadata(request)
        )


# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
