from typing import Union, SupportsBytes

from grpclib.client import Channel
from trinsicokapi import oberon
from trinsicokapi.proto.okapi.security.v1 import (
    UnBlindOberonTokenRequest,
    BlindOberonTokenRequest,
)

from trinsic.proto.services.account.v1 import (
    AccountProfile,
    AccountStub,
    AccountDetails,
    ConfirmationMethod,
    InfoResponse,
    ListDevicesRequest,
    ListDevicesResponse,
    RevokeDeviceRequest,
    RevokeDeviceResponse,
)
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.service_base import ServiceBase


class AccountService(ServiceBase):
    """Wrapper for the [Account Service](/reference/services/account-service/)"""

    def __init__(
        self,
        *,
        profile: AccountProfile = None,
        server_config: ServerConfig = None,
        channel: Channel = None
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config, channel)
        self.client: AccountStub = self.stub_with_metadata(AccountStub)

    async def sign_in(
        self, details: AccountDetails = AccountDetails(email="")
    ) -> AccountProfile:
        """
        Perform a sign-in to obtain an account profile. If the `AccountDetails` are specified, they will be used to associate
        Args:
            details:
        Returns:
            `AccountProfile` that has been created
        """
        response = await self.client.sign_in(details=details)
        return response.profile

    @staticmethod
    def unprotect(
        profile: AccountProfile, security_code: Union[SupportsBytes, bytes, str]
    ) -> AccountProfile:
        """
        Unprotects the account profile using a security code. The confirmation method field will specify how this code was communicated with the account owner.
        Args:
            profile:
            security_code:
        Returns:
            The in-place unprotected `AccountProfile`
        """
        request = UnBlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.unblind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = False
        profile.protection.method = ConfirmationMethod.None_
        return profile

    @staticmethod
    def protect(
        profile: AccountProfile, security_code: Union[SupportsBytes, bytes, str]
    ) -> AccountProfile:
        """
        Protects the account profile with a security code. The code can be a PIN, password, keychain secret, etc.
        Args:
            profile:
            security_code:
        Returns:
            A protected `AccountProfile`
        """
        request = BlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.blind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = True
        profile.protection.method = ConfirmationMethod.Other
        return profile

    async def get_info(self) -> InfoResponse:
        """
        Return the details about the currently active account.
        Returns:
            The `InfoResponse`
        """
        return await self.client.info()

    async def list_devices(self, request: ListDevicesRequest) -> ListDevicesResponse:
        return await self.client.list_devices()

    async def revoke_device(self, request: RevokeDeviceRequest) -> RevokeDeviceResponse:
        return await self.client.revoke_device()
