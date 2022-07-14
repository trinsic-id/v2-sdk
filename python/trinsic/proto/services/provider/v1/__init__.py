# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/provider/v1/provider.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import Dict, List

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib


class ParticipantType(betterproto.Enum):
    """Type of participant being invited to ecosystem"""

    # Participant is an individual
    participant_type_individual = 0
    # Participant is an organization
    participant_type_organization = 1


class InvitationStatusResponseStatus(betterproto.Enum):
    Error = 0
    InvitationSent = 1
    Completed = 2
    Expired = 3


@dataclass(eq=False, repr=False)
class InviteRequest(betterproto.Message):
    """Request to invite a participant to an ecosystem"""

    # Type of participant being invited (individual/organization)
    participant: "ParticipantType" = betterproto.enum_field(1)
    # Description of invitation
    description: str = betterproto.string_field(2)
    # Account details of invitee
    details: "__account_v1__.AccountDetails" = betterproto.message_field(3)


@dataclass(eq=False, repr=False)
class InviteRequestDidCommInvitation(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class InviteResponse(betterproto.Message):
    """Response to `InviteRequest`"""

    # ID of created invitation
    invitation_id: str = betterproto.string_field(10)
    # Invitation code -- must be passed back in `LoginRequest`
    invitation_code: str = betterproto.string_field(11)


@dataclass(eq=False, repr=False)
class InvitationStatusRequest(betterproto.Message):
    """Request details for the status of an invitation"""

    # ID of invitation, received from `InviteResponse`
    invitation_id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class InvitationStatusResponse(betterproto.Message):
    """Response to `InvitationStatusRequest`"""

    # Status of invitation
    status: "InvitationStatusResponseStatus" = betterproto.enum_field(1)
    # Human-readable string with details about invitation status
    status_details: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class Ecosystem(betterproto.Message):
    """Details of an ecosystem"""

    # URN of the ecosystem
    id: str = betterproto.string_field(1)
    # Globally unique name for the ecosystem
    name: str = betterproto.string_field(2)
    # Ecosystem description
    description: str = betterproto.string_field(3)
    # External URL associated with the organization or ecosystem entity
    uri: str = betterproto.string_field(4)
    # Configured webhooks, if any
    webhooks: List["WebhookConfig"] = betterproto.message_field(5)


@dataclass(eq=False, repr=False)
class WebhookConfig(betterproto.Message):
    """Webhook configured on an ecosystem"""

    # UUID of the webhook
    id: str = betterproto.string_field(1)
    # HTTPS URL to POST webhook calls to
    destination_url: str = betterproto.string_field(2)
    # Events the webhook is subscribed to
    events: List[str] = betterproto.string_field(4)
    # Last known status of webhook (whether or not Trinsic can successfully reach
    # destination)
    status: str = betterproto.string_field(5)


@dataclass(eq=False, repr=False)
class Grant(betterproto.Message):
    """A grant authorizing `actions` on a `resourceId`"""

    # the urn of the resource
    resource_id: str = betterproto.string_field(1)
    # list of actions that are allowed
    actions: List[str] = betterproto.string_field(2)
    # any child grants
    child_grants: List["Grant"] = betterproto.message_field(3)


@dataclass(eq=False, repr=False)
class CreateEcosystemRequest(betterproto.Message):
    """Request to create an ecosystem"""

    # Globally unique name for the Ecosystem. This name will be part of the
    # ecosystem-specific URLs and namespaces. Allowed characters are lowercase
    # letters, numbers, underscore and hyphen. If not passed, ecosystem name will
    # be auto-generated.
    name: str = betterproto.string_field(1)
    # Ecosystem description
    description: str = betterproto.string_field(2)
    # External URL associated with your organization or ecosystem entity
    uri: str = betterproto.string_field(3)
    # The account details of the owner of the ecosystem
    details: "__account_v1__.AccountDetails" = betterproto.message_field(4)


@dataclass(eq=False, repr=False)
class CreateEcosystemResponse(betterproto.Message):
    """Response to `CreateEcosystemRequest`"""

    # Details of the created ecosystem
    ecosystem: "Ecosystem" = betterproto.message_field(1)
    # Account profile for auth of the owner of the ecosystem
    profile: "__account_v1__.AccountProfile" = betterproto.message_field(2)
    # Indicates if confirmation of account is required.
    confirmation_method: "__account_v1__.ConfirmationMethod" = betterproto.enum_field(3)


@dataclass(eq=False, repr=False)
class UpdateEcosystemRequest(betterproto.Message):
    """Request to update an ecosystem's metadata"""

    # New description of the ecosystem
    description: str = betterproto.string_field(1)
    # New external URL associated with the organization or ecosystem entity
    uri: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class UpdateEcosystemResponse(betterproto.Message):
    """Response to `UpdateEcosystemRequest`"""

    # Current ecosystem metadata, post-update
    ecosystem: "Ecosystem" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class AddWebhookRequest(betterproto.Message):
    """Request to add a webhook to an ecosystem"""

    # Destination to post webhook calls to. Must be a reachable HTTPS URL.
    destination_url: str = betterproto.string_field(1)
    # Secret string used for HMAC-SHA256 signing of webhook payloads to verify
    # that a webhook comes from Trinsic
    secret: str = betterproto.string_field(2)
    # Events to subscribe to. Default is "*" (all events)
    events: List[str] = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class AddWebhookResponse(betterproto.Message):
    """Response to `AddWebhookRequest`"""

    # Ecosystem data with new webhook
    ecosystem: "Ecosystem" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class DeleteWebhookRequest(betterproto.Message):
    """Request to delete a webhook from an ecosystem"""

    # ID of webhook to delete
    webhook_id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class DeleteWebhookResponse(betterproto.Message):
    """Response to `DeleteWebhookRequest`"""

    # Ecosystem data after removal of webhook
    ecosystem: "Ecosystem" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class EcosystemInfoRequest(betterproto.Message):
    """Request to fetch information about an ecosystem"""

    pass


@dataclass(eq=False, repr=False)
class EcosystemInfoResponse(betterproto.Message):
    """Response to `InfoRequest`"""

    # Ecosystem corresponding to requested `ecosystem_id`
    ecosystem: "Ecosystem" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class GenerateTokenRequest(betterproto.Message):
    """Request to generate an authentication token for the current account"""

    # Description to identify this token
    description: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GenerateTokenResponse(betterproto.Message):
    """Response to `GenerateTokenRequest`"""

    # Account authentication profile that contains unprotected token
    profile: "__account_v1__.AccountProfile" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class GetOberonKeyRequest(betterproto.Message):
    """
    Request to fetch the Trinsic public key used to verify authentication token
    validity
    """

    pass


@dataclass(eq=False, repr=False)
class GetOberonKeyResponse(betterproto.Message):
    """Response to `GetOberonKeyRequest`"""

    # Oberon Public Key as RAW base64-url encoded string
    key: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GetEventTokenRequest(betterproto.Message):
    """Generates an events token bound to the provided ed25519 public key."""

    # Raw public key to generate event token for
    pk: bytes = betterproto.bytes_field(1)


@dataclass(eq=False, repr=False)
class GetEventTokenResponse(betterproto.Message):
    """
    Response message containing a token (JWT) that can be used to connect
    directly to the message streaming architecture
    """

    # JWT bound to the public key provided in `GetEventTokenRequest`
    token: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GrantAuthorizationRequest(betterproto.Message):
    """Grant permissions to a resource or path in the ecosystem"""

    # Email address of account being granted permission. Mutually exclusive with
    # `walletId`.
    email: str = betterproto.string_field(1, group="account")
    # Wallet ID of account being granted permission. Mutually exclusive with
    # `email`.
    wallet_id: str = betterproto.string_field(2, group="account")
    # Resource string that account is receiving permissions for. Resources are
    # specified as a RESTful path: /{ecoId}/{resource type}/{resource id}.
    # `ecoId` may be omitted.
    resource: str = betterproto.string_field(3)
    # Action to authorize. Default is "*" (all)
    action: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class GrantAuthorizationResponse(betterproto.Message):
    """Response to `GrantAuthorizationRequest`"""

    pass


@dataclass(eq=False, repr=False)
class RevokeAuthorizationRequest(betterproto.Message):
    """Revoke permissions to a resource or path in the ecosystem"""

    # Email address of account having permission revoked. Mutually exclusive with
    # `walletId`.
    email: str = betterproto.string_field(1, group="account")
    # Wallet ID of account having permission revoked. Mutually exclusive with
    # `email`.
    wallet_id: str = betterproto.string_field(2, group="account")
    # Resource string that account is losing permissions for. Resources are
    # specified as a RESTful path: /{ecoId}/{resource type}/{resource id}.
    # `ecoId` may be omitted.
    resource: str = betterproto.string_field(3)
    # Action to revoke. Default is "*" (all)
    action: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class RevokeAuthorizationResponse(betterproto.Message):
    """Response to `RevokeAuthorizationRequest`"""

    pass


@dataclass(eq=False, repr=False)
class GetAuthorizationsRequest(betterproto.Message):
    """
    Fetch list of grants that the current account has access to in its
    ecosystem
    """

    pass


@dataclass(eq=False, repr=False)
class GetAuthorizationsResponse(betterproto.Message):
    """Response to `GetAuthorizationsRequest`"""

    # Grants attached to account
    grants: List["Grant"] = betterproto.message_field(1)


class ProviderStub(betterproto.ServiceStub):
    async def create_ecosystem(
        self, create_ecosystem_request: "CreateEcosystemRequest"
    ) -> "CreateEcosystemResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/CreateEcosystem",
            create_ecosystem_request,
            CreateEcosystemResponse,
        )

    async def update_ecosystem(
        self, update_ecosystem_request: "UpdateEcosystemRequest"
    ) -> "UpdateEcosystemResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/UpdateEcosystem",
            update_ecosystem_request,
            UpdateEcosystemResponse,
        )

    async def grant_authorization(
        self, grant_authorization_request: "GrantAuthorizationRequest"
    ) -> "GrantAuthorizationResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/GrantAuthorization",
            grant_authorization_request,
            GrantAuthorizationResponse,
        )

    async def revoke_authorization(
        self, revoke_authorization_request: "RevokeAuthorizationRequest"
    ) -> "RevokeAuthorizationResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/RevokeAuthorization",
            revoke_authorization_request,
            RevokeAuthorizationResponse,
        )

    async def get_authorizations(
        self, get_authorizations_request: "GetAuthorizationsRequest"
    ) -> "GetAuthorizationsResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/GetAuthorizations",
            get_authorizations_request,
            GetAuthorizationsResponse,
        )

    async def add_webhook(
        self, add_webhook_request: "AddWebhookRequest"
    ) -> "AddWebhookResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/AddWebhook",
            add_webhook_request,
            AddWebhookResponse,
        )

    async def delete_webhook(
        self, delete_webhook_request: "DeleteWebhookRequest"
    ) -> "DeleteWebhookResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/DeleteWebhook",
            delete_webhook_request,
            DeleteWebhookResponse,
        )

    async def ecosystem_info(
        self, ecosystem_info_request: "EcosystemInfoRequest"
    ) -> "EcosystemInfoResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/EcosystemInfo",
            ecosystem_info_request,
            EcosystemInfoResponse,
        )

    async def generate_token(
        self, generate_token_request: "GenerateTokenRequest"
    ) -> "GenerateTokenResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/GenerateToken",
            generate_token_request,
            GenerateTokenResponse,
        )

    async def invite(self, invite_request: "InviteRequest") -> "InviteResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/Invite", invite_request, InviteResponse
        )

    async def invitation_status(
        self, invitation_status_request: "InvitationStatusRequest"
    ) -> "InvitationStatusResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/InvitationStatus",
            invitation_status_request,
            InvitationStatusResponse,
        )

    async def get_oberon_key(
        self, get_oberon_key_request: "GetOberonKeyRequest"
    ) -> "GetOberonKeyResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/GetOberonKey",
            get_oberon_key_request,
            GetOberonKeyResponse,
        )

    async def get_event_token(
        self, get_event_token_request: "GetEventTokenRequest"
    ) -> "GetEventTokenResponse":
        return await self._unary_unary(
            "/services.provider.v1.Provider/GetEventToken",
            get_event_token_request,
            GetEventTokenResponse,
        )


class ProviderBase(ServiceBase):
    async def create_ecosystem(
        self, create_ecosystem_request: "CreateEcosystemRequest"
    ) -> "CreateEcosystemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def update_ecosystem(
        self, update_ecosystem_request: "UpdateEcosystemRequest"
    ) -> "UpdateEcosystemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def grant_authorization(
        self, grant_authorization_request: "GrantAuthorizationRequest"
    ) -> "GrantAuthorizationResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def revoke_authorization(
        self, revoke_authorization_request: "RevokeAuthorizationRequest"
    ) -> "RevokeAuthorizationResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_authorizations(
        self, get_authorizations_request: "GetAuthorizationsRequest"
    ) -> "GetAuthorizationsResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def add_webhook(
        self, add_webhook_request: "AddWebhookRequest"
    ) -> "AddWebhookResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def delete_webhook(
        self, delete_webhook_request: "DeleteWebhookRequest"
    ) -> "DeleteWebhookResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def ecosystem_info(
        self, ecosystem_info_request: "EcosystemInfoRequest"
    ) -> "EcosystemInfoResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def generate_token(
        self, generate_token_request: "GenerateTokenRequest"
    ) -> "GenerateTokenResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def invite(self, invite_request: "InviteRequest") -> "InviteResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def invitation_status(
        self, invitation_status_request: "InvitationStatusRequest"
    ) -> "InvitationStatusResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_oberon_key(
        self, get_oberon_key_request: "GetOberonKeyRequest"
    ) -> "GetOberonKeyResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_event_token(
        self, get_event_token_request: "GetEventTokenRequest"
    ) -> "GetEventTokenResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_create_ecosystem(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.create_ecosystem(request)
        await stream.send_message(response)

    async def __rpc_update_ecosystem(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.update_ecosystem(request)
        await stream.send_message(response)

    async def __rpc_grant_authorization(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.grant_authorization(request)
        await stream.send_message(response)

    async def __rpc_revoke_authorization(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.revoke_authorization(request)
        await stream.send_message(response)

    async def __rpc_get_authorizations(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_authorizations(request)
        await stream.send_message(response)

    async def __rpc_add_webhook(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.add_webhook(request)
        await stream.send_message(response)

    async def __rpc_delete_webhook(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.delete_webhook(request)
        await stream.send_message(response)

    async def __rpc_ecosystem_info(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.ecosystem_info(request)
        await stream.send_message(response)

    async def __rpc_generate_token(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.generate_token(request)
        await stream.send_message(response)

    async def __rpc_invite(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.invite(request)
        await stream.send_message(response)

    async def __rpc_invitation_status(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.invitation_status(request)
        await stream.send_message(response)

    async def __rpc_get_oberon_key(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_oberon_key(request)
        await stream.send_message(response)

    async def __rpc_get_event_token(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_event_token(request)
        await stream.send_message(response)

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.provider.v1.Provider/CreateEcosystem": grpclib.const.Handler(
                self.__rpc_create_ecosystem,
                grpclib.const.Cardinality.UNARY_UNARY,
                CreateEcosystemRequest,
                CreateEcosystemResponse,
            ),
            "/services.provider.v1.Provider/UpdateEcosystem": grpclib.const.Handler(
                self.__rpc_update_ecosystem,
                grpclib.const.Cardinality.UNARY_UNARY,
                UpdateEcosystemRequest,
                UpdateEcosystemResponse,
            ),
            "/services.provider.v1.Provider/GrantAuthorization": grpclib.const.Handler(
                self.__rpc_grant_authorization,
                grpclib.const.Cardinality.UNARY_UNARY,
                GrantAuthorizationRequest,
                GrantAuthorizationResponse,
            ),
            "/services.provider.v1.Provider/RevokeAuthorization": grpclib.const.Handler(
                self.__rpc_revoke_authorization,
                grpclib.const.Cardinality.UNARY_UNARY,
                RevokeAuthorizationRequest,
                RevokeAuthorizationResponse,
            ),
            "/services.provider.v1.Provider/GetAuthorizations": grpclib.const.Handler(
                self.__rpc_get_authorizations,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetAuthorizationsRequest,
                GetAuthorizationsResponse,
            ),
            "/services.provider.v1.Provider/AddWebhook": grpclib.const.Handler(
                self.__rpc_add_webhook,
                grpclib.const.Cardinality.UNARY_UNARY,
                AddWebhookRequest,
                AddWebhookResponse,
            ),
            "/services.provider.v1.Provider/DeleteWebhook": grpclib.const.Handler(
                self.__rpc_delete_webhook,
                grpclib.const.Cardinality.UNARY_UNARY,
                DeleteWebhookRequest,
                DeleteWebhookResponse,
            ),
            "/services.provider.v1.Provider/EcosystemInfo": grpclib.const.Handler(
                self.__rpc_ecosystem_info,
                grpclib.const.Cardinality.UNARY_UNARY,
                EcosystemInfoRequest,
                EcosystemInfoResponse,
            ),
            "/services.provider.v1.Provider/GenerateToken": grpclib.const.Handler(
                self.__rpc_generate_token,
                grpclib.const.Cardinality.UNARY_UNARY,
                GenerateTokenRequest,
                GenerateTokenResponse,
            ),
            "/services.provider.v1.Provider/Invite": grpclib.const.Handler(
                self.__rpc_invite,
                grpclib.const.Cardinality.UNARY_UNARY,
                InviteRequest,
                InviteResponse,
            ),
            "/services.provider.v1.Provider/InvitationStatus": grpclib.const.Handler(
                self.__rpc_invitation_status,
                grpclib.const.Cardinality.UNARY_UNARY,
                InvitationStatusRequest,
                InvitationStatusResponse,
            ),
            "/services.provider.v1.Provider/GetOberonKey": grpclib.const.Handler(
                self.__rpc_get_oberon_key,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetOberonKeyRequest,
                GetOberonKeyResponse,
            ),
            "/services.provider.v1.Provider/GetEventToken": grpclib.const.Handler(
                self.__rpc_get_event_token,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetEventTokenRequest,
                GetEventTokenResponse,
            ),
        }


from ...account import v1 as __account_v1__
