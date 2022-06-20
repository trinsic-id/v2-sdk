"""
Base class and helper methods for the Service wrappers
"""
import base64
import types
from abc import ABC
from typing import Optional, Type, T, Dict

from betterproto import Message, ServiceStub
from grpclib.client import Channel

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.common.v1 import ResponseStatus
from trinsic.security_providers import OberonSecurityProvider, SecurityProvider
from trinsic.trinsic_util import trinsic_config, create_channel

_skip_routes = [
    "/services.account.v1.Account/SignIn",
    "/services.account.v1.Account/Login",
    "/services.account.v1.Account/LoginConfirm",
    "/services.provider.v1.Provider/CreateEcosystem",
]


def _update_metadata(
    route: str,
    service: "ServiceBase",
    metadata: "_MetadataLike",
    request: "_MessageLike",
) -> "_MetadataLike":
    metadata = metadata or {}
    # Remove this key
    authenticate_call = metadata.pop("authenticateCall", False)
    if route in _skip_routes and not authenticate_call:
        return metadata
    new_metadata = service.build_metadata(request)
    metadata.update(new_metadata)
    return metadata


class ServiceBase(ABC):
    """
    Base class for service wrapper classes, provides the metadata functionality in a consistent manner.
    """

    def __init__(self, server_config: ServiceOptions):
        self.service_options: ServiceOptions = server_config or trinsic_config()
        self._channel: Channel = create_channel(self.service_options)
        self._security_provider: SecurityProvider = OberonSecurityProvider()

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.close()

    def __del__(self):
        self.close()

    def close(self):
        """Close the underlying channel"""
        if self._channel is not None:
            try:
                self._channel.close()
            except RuntimeError:
                # If the event loop is closed, NBD.
                pass

    def build_metadata(self, request: Message) -> Dict[str, str]:
        """
        Create call metadata by setting required authentication headers via `AccountProfile`
        :return: authentication headers with base-64 encoded Oberon
        """
        if not self.service_options or not self.service_options.auth_token:
            raise ValueError(
                "Cannot call authenticated endpoint: auth token must be set in service options"
            )

        return {
            "authorization": self._security_provider.get_auth_header(
                AccountProfile().parse(
                    data=base64.urlsafe_b64decode(self.service_options.auth_token)
                ),
                request,
            )
        }

    def stub_with_metadata(self, stub_type: Type[T]) -> T:
        return self.with_call_metadata(stub_type(self.channel))

    def with_call_metadata(self, stub: ServiceStub) -> ServiceStub:
        # Find the _unary_unary() method
        _cls_unary_unary = getattr(stub, "_unary_unary")

        # Wrap it
        async def wrapped_unary(
            this,
            route: str,
            request: "_MessageLike",
            response_type: Type[T],
            *,
            timeout: Optional[float] = None,
            deadline: Optional["Deadline"] = None,
            metadata: Optional["_MetadataLike"] = None,
        ) -> Type[T]:
            metadata = _update_metadata(route, self, metadata, request)
            return await this._unary_unary_1(
                route,
                request,
                response_type,
                timeout=timeout,
                deadline=deadline,
                metadata=metadata,
            )

        stub._unary_unary = types.MethodType(wrapped_unary, stub)
        stub._unary_unary_1 = _cls_unary_unary
        return stub

    @property
    def channel(self):
        """Underlying channel"""
        return self._channel


class ResponseStatusException(Exception):
    """
    Exception raised when an action has a non-success response status.
    """

    def __init__(self, action: str, status: ResponseStatus):
        super().__init__(f"{action}, status={repr(status)}")
        self.status = status

    @staticmethod
    def assert_success(status: ResponseStatus, action: str) -> None:
        if status != ResponseStatus.SUCCESS:
            raise ResponseStatusException(action, status)
