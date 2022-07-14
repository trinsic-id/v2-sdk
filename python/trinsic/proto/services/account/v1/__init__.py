# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/account/v1/account.proto
# plugin: python-betterproto
import warnings
from dataclasses import dataclass
from typing import Dict, List

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib


class ConfirmationMethod(betterproto.Enum):
    """Confirmation method type for two-factor workflows"""

    # No confirmation required
    None_ = 0
    # Email confirmation required
    Email = 1
    # SMS confirmation required
    Sms = 2
    # Confirmation from a connected device is required
    ConnectedDevice = 3
    # Third-party method of confirmation is required
    Other = 10


@dataclass(eq=False, repr=False)
class SignInRequest(betterproto.Message):
    """Request for creating or signing into an account"""

    # Account registration details
    details: "AccountDetails" = betterproto.message_field(1)
    # Invitation code associated with this registration
    invitation_code: str = betterproto.string_field(2)
    # ID of Ecosystem to use Ignored if `invitation_code` is passed
    ecosystem_id: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class AccountDetails(betterproto.Message):
    """Account registration details"""

    # Account name
    name: str = betterproto.string_field(1)
    # Email address of account
    email: str = betterproto.string_field(2)
    # SMS number including country code
    sms: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class SignInResponse(betterproto.Message):
    """
    Response for creating new account This object will indicate if a
    confirmation code was sent to one of the users two-factor methods like
    email, SMS, etc.
    """

    # Indicates if confirmation of account is required.
    confirmation_method: "ConfirmationMethod" = betterproto.enum_field(3)
    # Contains authentication data for use with the current device. This object
    # must be stored in a secure place. It can also be protected with a PIN, but
    # this is optional. See the docs at https://docs.trinsic.id for more
    # information on working with authentication data.
    profile: "AccountProfile" = betterproto.message_field(4)


@dataclass(eq=False, repr=False)
class AccountProfile(betterproto.Message):
    """
    Device profile containing sensitive authentication data. This information
    should be stored securely
    """

    # The type of profile, used to differentiate between protocol schemes or
    # versions
    profile_type: str = betterproto.string_field(1)
    # Auth data containg information about the current device access
    auth_data: bytes = betterproto.bytes_field(2)
    # Secure token issued by server used to generate zero-knowledge proofs
    auth_token: bytes = betterproto.bytes_field(3)
    # Token security information about the token. If token protection is enabled,
    # implementations must supply protection secret before using the token for
    # authentication.
    protection: "TokenProtection" = betterproto.message_field(4)


@dataclass(eq=False, repr=False)
class TokenProtection(betterproto.Message):
    """Token protection info"""

    # Indicates if token is protected using a PIN, security code, HSM secret,
    # etc.
    enabled: bool = betterproto.bool_field(1)
    # The method used to protect the token
    method: "ConfirmationMethod" = betterproto.enum_field(2)


@dataclass(eq=False, repr=False)
class AccountInfoRequest(betterproto.Message):
    """Request for information about the account used to make the request"""

    pass


@dataclass(eq=False, repr=False)
class AccountInfoResponse(betterproto.Message):
    """Information about the account used to make the request"""

    # The account details associated with the calling request context
    details: "AccountDetails" = betterproto.message_field(1)
    # Use `ecosystem_id` instead
    ecosystems: List["AccountEcosystem"] = betterproto.message_field(2)
    # The wallet ID associated with this account
    wallet_id: str = betterproto.string_field(3)
    # The device ID associated with this account session
    device_id: str = betterproto.string_field(4)
    # The ecosystem ID within which this account resides
    ecosystem_id: str = betterproto.string_field(5)
    # The public DID associated with this account. This DID is used as the
    # `issuer` when signing verifiable credentials
    public_did: str = betterproto.string_field(6)
    # Webhook events, if any, this wallet has authorized
    authorized_webhooks: List[str] = betterproto.string_field(7)

    def __post_init__(self) -> None:
        super().__post_init__()
        if self.ecosystems:
            warnings.warn(
                "AccountInfoResponse.ecosystems is deprecated", DeprecationWarning
            )


@dataclass(eq=False, repr=False)
class ListDevicesRequest(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class ListDevicesResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class RevokeDeviceRequest(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class RevokeDeviceResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class AccountEcosystem(betterproto.Message):
    """Deprecated"""

    id: str = betterproto.string_field(1)
    name: str = betterproto.string_field(2)
    description: str = betterproto.string_field(3)
    uri: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class LoginRequest(betterproto.Message):
    """Request to begin login flow"""

    # Email address of account. If unspecified, an anonymous account will be
    # created.
    email: str = betterproto.string_field(1)
    # Invitation code associated with this registration
    invitation_code: str = betterproto.string_field(2)
    # ID of Ecosystem to sign into. Ignored if `invitation_code` is passed.
    ecosystem_id: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class LoginResponse(betterproto.Message):
    """Response to `LoginRequest`"""

    # Random byte sequence unique to this login request. If present, two-factor
    # confirmation of login is required. Must be sent back, unaltered, in
    # `LoginConfirm`.
    challenge: bytes = betterproto.bytes_field(1, group="response")
    # Account profile response. If present, no confirmation of login is required.
    profile: "AccountProfile" = betterproto.message_field(2, group="response")


@dataclass(eq=False, repr=False)
class LoginConfirmRequest(betterproto.Message):
    """Request to finalize login flow"""

    # Challenge received from `Login`
    challenge: bytes = betterproto.bytes_field(1)
    # Two-factor confirmation code sent to account email or phone, hashed using
    # Blake3. Our SDKs will handle this hashing process for you.
    confirmation_code_hashed: bytes = betterproto.bytes_field(2)


@dataclass(eq=False, repr=False)
class LoginConfirmResponse(betterproto.Message):
    """Response to `LoginConfirmRequest`"""

    # Profile response; must be unprotected using unhashed confirmation code. Our
    # SDKs will handle this process for you, and return to you an authentication
    # token string.
    profile: "AccountProfile" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class AuthorizeWebhookRequest(betterproto.Message):
    """
    Request to authorize Ecosystem provider to receive webhooks for events
    which occur on this wallet.
    """

    # Events to authorize access to. Default is "*" (all events)
    events: List[str] = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class AuthorizeWebhookResponse(betterproto.Message):
    """Response to `AuthorizeWebhookRequest`"""

    pass


class AccountStub(betterproto.ServiceStub):
    async def sign_in(self, sign_in_request: "SignInRequest") -> "SignInResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/SignIn", sign_in_request, SignInResponse
        )

    async def login(self, login_request: "LoginRequest") -> "LoginResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/Login", login_request, LoginResponse
        )

    async def login_confirm(
        self, login_confirm_request: "LoginConfirmRequest"
    ) -> "LoginConfirmResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/LoginConfirm",
            login_confirm_request,
            LoginConfirmResponse,
        )

    async def info(
        self, account_info_request: "AccountInfoRequest"
    ) -> "AccountInfoResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/Info",
            account_info_request,
            AccountInfoResponse,
        )

    async def list_devices(
        self, list_devices_request: "ListDevicesRequest"
    ) -> "ListDevicesResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/ListDevices",
            list_devices_request,
            ListDevicesResponse,
        )

    async def revoke_device(
        self, revoke_device_request: "RevokeDeviceRequest"
    ) -> "RevokeDeviceResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/RevokeDevice",
            revoke_device_request,
            RevokeDeviceResponse,
        )

    async def authorize_webhook(
        self, authorize_webhook_request: "AuthorizeWebhookRequest"
    ) -> "AuthorizeWebhookResponse":
        return await self._unary_unary(
            "/services.account.v1.Account/AuthorizeWebhook",
            authorize_webhook_request,
            AuthorizeWebhookResponse,
        )


class AccountBase(ServiceBase):
    async def sign_in(self, sign_in_request: "SignInRequest") -> "SignInResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def login(self, login_request: "LoginRequest") -> "LoginResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def login_confirm(
        self, login_confirm_request: "LoginConfirmRequest"
    ) -> "LoginConfirmResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def info(
        self, account_info_request: "AccountInfoRequest"
    ) -> "AccountInfoResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def list_devices(
        self, list_devices_request: "ListDevicesRequest"
    ) -> "ListDevicesResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def revoke_device(
        self, revoke_device_request: "RevokeDeviceRequest"
    ) -> "RevokeDeviceResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def authorize_webhook(
        self, authorize_webhook_request: "AuthorizeWebhookRequest"
    ) -> "AuthorizeWebhookResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_sign_in(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.sign_in(request)
        await stream.send_message(response)

    async def __rpc_login(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.login(request)
        await stream.send_message(response)

    async def __rpc_login_confirm(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.login_confirm(request)
        await stream.send_message(response)

    async def __rpc_info(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.info(request)
        await stream.send_message(response)

    async def __rpc_list_devices(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.list_devices(request)
        await stream.send_message(response)

    async def __rpc_revoke_device(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.revoke_device(request)
        await stream.send_message(response)

    async def __rpc_authorize_webhook(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.authorize_webhook(request)
        await stream.send_message(response)

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.account.v1.Account/SignIn": grpclib.const.Handler(
                self.__rpc_sign_in,
                grpclib.const.Cardinality.UNARY_UNARY,
                SignInRequest,
                SignInResponse,
            ),
            "/services.account.v1.Account/Login": grpclib.const.Handler(
                self.__rpc_login,
                grpclib.const.Cardinality.UNARY_UNARY,
                LoginRequest,
                LoginResponse,
            ),
            "/services.account.v1.Account/LoginConfirm": grpclib.const.Handler(
                self.__rpc_login_confirm,
                grpclib.const.Cardinality.UNARY_UNARY,
                LoginConfirmRequest,
                LoginConfirmResponse,
            ),
            "/services.account.v1.Account/Info": grpclib.const.Handler(
                self.__rpc_info,
                grpclib.const.Cardinality.UNARY_UNARY,
                AccountInfoRequest,
                AccountInfoResponse,
            ),
            "/services.account.v1.Account/ListDevices": grpclib.const.Handler(
                self.__rpc_list_devices,
                grpclib.const.Cardinality.UNARY_UNARY,
                ListDevicesRequest,
                ListDevicesResponse,
            ),
            "/services.account.v1.Account/RevokeDevice": grpclib.const.Handler(
                self.__rpc_revoke_device,
                grpclib.const.Cardinality.UNARY_UNARY,
                RevokeDeviceRequest,
                RevokeDeviceResponse,
            ),
            "/services.account.v1.Account/AuthorizeWebhook": grpclib.const.Handler(
                self.__rpc_authorize_webhook,
                grpclib.const.Cardinality.UNARY_UNARY,
                AuthorizeWebhookRequest,
                AuthorizeWebhookResponse,
            ),
        }
