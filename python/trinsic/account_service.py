import base64
from typing import Union, SupportsBytes

from trinsicokapi import oberon
from trinsicokapi.proto.okapi.security.v1 import (
    UnBlindOberonTokenRequest,
    BlindOberonTokenRequest,
)

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.account.v1 import (
    AccountProfile,
    AccountStub,
    AccountDetails,
    ConfirmationMethod,
    InfoResponse,
    ListDevicesResponse,
    RevokeDeviceResponse,
)
from trinsic.service_base import ServiceBase


class AccountService(ServiceBase):
    """Wrapper for the [Account Service](/reference/services/account-service/)"""

    def __init__(
        self,
        server_config: ServiceOptions = None,
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config)
        self.client: AccountStub = self.stub_with_metadata(AccountStub)

    async def sign_in(
        self,
        *,
        details: AccountDetails = AccountDetails(email=""),
        ecosystem_id: str = None
    ) -> str:
        """
        Perform a sign-in to obtain an account profile. If the `AccountDetails` are specified, they will be used to associate
        Args:
            ecosystem_id:
            details:
        Returns:
            `AccountProfile` that has been created binary serialized and base64 encoded so that it can be stored
        """
        ecosystem_id = ecosystem_id or self.service_options.default_ecosystem
        response = await self.client.sign_in(details=details, ecosystem_id=ecosystem_id)
        auth_token = base64.urlsafe_b64encode(bytes(response.profile)).decode("utf-8")
        self.service_options.auth_token = auth_token
        return auth_token

    @staticmethod
    def unprotect(
        profile: Union[AccountProfile, str],
        security_code: Union[SupportsBytes, bytes, str],
    ) -> str:
        """
        Unprotect the account profile using a security code. The confirmation method field will specify how this code was communicated with the account owner.
        Args:
            profile:
            security_code:
        Returns:
            The in-place unprotected `AccountProfile`
        """
        if isinstance(profile, str):
            profile = AccountProfile().parse(base64.urlsafe_b64decode(profile))
        request = UnBlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.unblind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = False
        profile.protection.method = ConfirmationMethod.None_
        return base64.urlsafe_b64encode(bytes(profile)).decode("utf-8")

    @staticmethod
    def protect(
        profile: Union[AccountProfile, str],
        security_code: Union[SupportsBytes, bytes, str],
    ) -> str:
        """
        Protect the account profile with a security code. The code can be a PIN, password, keychain secret, etc.
        Args:
            profile:
            security_code:
        Returns:
            A protected `AccountProfile`
        """
        if isinstance(profile, str):
            profile = AccountProfile().parse(base64.urlsafe_b64decode(profile))
        request = BlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.blind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = True
        profile.protection.method = ConfirmationMethod.Other
        return base64.urlsafe_b64encode(bytes(profile)).decode("utf-8")

    async def get_info(self) -> InfoResponse:
        """
        Return the details about the currently active account.
        Returns:
            The `InfoResponse`
        """
        return await self.client.info()

    async def list_devices(self) -> ListDevicesResponse:
        return await self.client.list_devices()

    async def revoke_device(self) -> RevokeDeviceResponse:
        return await self.client.revoke_device()
