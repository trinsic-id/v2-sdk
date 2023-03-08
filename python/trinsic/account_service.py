import base64
import string
from typing import Union, SupportsBytes

from trinsicokapi import oberon, hashing
from trinsicokapi.proto.okapi.hashing.v1 import Blake3HashRequest
from trinsicokapi.proto.okapi.security.v1 import (
    UnBlindOberonTokenRequest,
    BlindOberonTokenRequest,
)

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.account.v1 import *
from trinsic.security_providers import ITokenProvider
from trinsic.service_base import ServiceBase


class AccountService(ServiceBase):
    """Wrapper for the [Account Service](/reference/services/account-service/)"""

    def __init__(
        self,
        server_config: ServiceOptions = None,
        token_provider: ITokenProvider = None,
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config, token_provider)
        self.client = AccountStub(super().channel)

    async def login(self, *, request: LoginRequest) -> LoginResponse:
        """
        Begins the login process for the specified user; returning a challenge which must be passed
        to `login_confirm()` along with an auth code sent to the user's email
        Args:
            request: Login request
        Returns:
            LoginResponse with challenge
        """
        request = request or LoginRequest()
        response = await self.client.login(request, metadata=self.build_metadata())
        if response.profile:
            self.token_provider.save(
                base64.urlsafe_b64encode(bytes(response.profile)).decode("utf8")
            )
        return response

    async def login_confirm(self, *, challenge: bytes, auth_code: str) -> str:
        """
        Finalizes the login process using the challenge received from `login()`,
        and auth code sent to user's email
        Args:
            challenge: The challenge contained in the response to `login()`
            auth_code: The auth code sent to the user's email
        Returns:
            Authentication token for account
        """

        code_hash = hashing.blake3_hash(
            request=Blake3HashRequest(data=auth_code.encode("utf-8"))
        ).digest

        request = LoginConfirmRequest(
            challenge=challenge, confirmation_code_hashed=code_hash
        )
        response = await self.client.login_confirm(
            request, metadata=self.build_metadata()
        )

        auth_token = base64.urlsafe_b64encode(bytes(response.profile)).decode("utf-8")

        if response.profile.protection.enabled:
            auth_token = self.unprotect(profile=auth_token, security_code=auth_code)

        self.token_provider.save(auth_token)
        return auth_token

    async def login_anonymous(self, *, ecosystem_id: string = None) -> string:
        """
        Create an anonymous account in the given ecosystem
        Args:
            ecosystem_id: ID of ecosystem to sign into; defaults to "default" if unspecified
        Returns:
            Authentication token for newly-created account
        """

        ecosystem_id = ecosystem_id or ""

        response = await self.login(request=LoginRequest(ecosystem_id=ecosystem_id))
        auth_token = base64.urlsafe_b64encode(bytes(response.profile)).decode("utf-8")

        self.token_provider.save(auth_token)

        return auth_token

    async def get_info(self) -> AccountInfoResponse:
        """
        Return the details about the currently active account.
        Returns:
            The `InfoResponse`
        """
        return await self.info()

    # BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    # target: /home/runner/work/sdk/sdk/python/trinsic/account_service.py

    async def info(self) -> AccountInfoResponse:
        """Get account information"""
        request = AccountInfoRequest()
        return await self.client.info(request, metadata=self.build_metadata(request))

    async def authorize_webhook(
        self, *, request: AuthorizeWebhookRequest
    ) -> AuthorizeWebhookResponse:
        """Authorize Ecosystem to receive webhook events"""

        return await self.client.authorize_webhook(
            request, metadata=self.build_metadata(request)
        )


# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
