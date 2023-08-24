# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/connect/v1/connect.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import (
    TYPE_CHECKING,
    Dict,
    List,
    Optional,
)

import betterproto
import grpclib
from betterproto.grpc.grpclib_server import ServiceBase


if TYPE_CHECKING:
    from betterproto.grpc.grpclib_client import MetadataLike
    from grpclib.metadata import Deadline


class VerificationType(betterproto.Enum):
    """The type of verification to perform"""

    GOVERNMENT_ID = 0
    """Government-issued ID (driver's license, passport, etc)"""


class IdvSessionState(betterproto.Enum):
    """The states a VerificationSession can be in"""

    IDV_CREATED = 0
    """Session has been created, but not yet shown to user"""

    IDV_INITIATED = 1
    """
    Session has been shown to user (iframe / popup opened), but user has not
    yet logged in.
    """

    IDV_AUTHENTICATING = 2
    """
    User has entered their phone number, but not yet authenticated with the
    code sent via SMS
    """

    IDV_IN_PROGRESS = 3
    """User has been authenticated and is performing identity verification"""

    IDV_SUCCESS = 4
    """Session was completed successfully and IDV data is available to RP"""

    IDV_USER_CANCELED = 5
    """User explicitly canceled session / did not consent"""

    IDV_EXPIRED = 6
    """
    Session was not completed within {X} timeframe from creation and expired
    """

    IDV_RP_CANCELED = 7
    """Relying Party canceled the session via the SDK"""

    IDV_FAILED = 8
    """The user's identity was not deemed legitimate by the IDV"""


class VerificationState(betterproto.Enum):
    """The states an individual Verification can be in"""

    VERIFICATION_PENDING = 0
    """This verification has not yet been performed in the flow"""

    VERIFICATION_PENDING_REUSE = 1
    """
    This verification has been started by the user, and can be reused from a
    previous verification, but the user has not yet decided whether to reuse
    it.
    """

    VERIFICATION_STARTED = 2
    """
    This verification has been started by the user, but not yet completed
    """

    VERIFICATION_SUCCESS = 3
    """This verification has been successfully completed"""

    VERIFICATION_FAILED = 4
    """This verification has failed"""


@dataclass(eq=False, repr=False)
class IdvSession(betterproto.Message):
    """An Identity Verification Session"""

    id: str = betterproto.string_field(1)
    """The ID of the IDVSession."""

    client_token: str = betterproto.string_field(2)
    """
    The Client Token for this IDVSession. This should be passed to your
    frontend to initiate the IDV flow using Trinsic's Web SDK.
    """

    state: "IdvSessionState" = betterproto.enum_field(3)
    """State of the IDVSession"""

    verifications: Dict[str, "Verification"] = betterproto.map_field(
        4, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """The actual Verifications to perform in this IDV flow"""

    result_vp: Optional[str] = betterproto.string_field(
        5, optional=True, group="_result_vp"
    )
    """The resultant signed VP combining the results of all verifications"""

    created: int = betterproto.fixed64_field(6)
    """The unix timestamp, in seconds, that this IDVSession was created"""

    updated: int = betterproto.fixed64_field(7)
    """
    The unix timestamp, in seconds, that this IDVSession's `state` was last
    updated
    """


@dataclass(eq=False, repr=False)
class Verification(betterproto.Message):
    """A Verification that is part of an IDVSession"""

    id: str = betterproto.string_field(1)
    """The ID of the verification"""

    type: "VerificationType" = betterproto.enum_field(2)
    """
    The type of verification (driver's license, passport, proof of address,
    etc)
    """

    state: "VerificationState" = betterproto.enum_field(3)
    """The state of the verification"""

    reused: bool = betterproto.bool_field(4)
    """
    Whether this was a reused (true) or fresh (false) verification. If `state`
    is not `VERIFICATION_SUCCESS`, this field is `false` and does not convey
    useful information.
    """

    begun: int = betterproto.fixed64_field(5)
    """
    The unix timestamp, in seconds, when this verification was begun by the
    user -- or `0` if not yet begun.
    """

    updated: int = betterproto.fixed64_field(6)
    """
    The unix timestamp, in seconds, when this verification last changed state
    -- o
    """


@dataclass(eq=False, repr=False)
class CreateSessionRequest(betterproto.Message):
    """Request to create an Identity Verification Session"""

    verifications: List["RequestedVerification"] = betterproto.message_field(1)
    """Array of verifications to perform"""


@dataclass(eq=False, repr=False)
class RequestedVerification(betterproto.Message):
    """A verification to perform in an IDV flow"""

    type: "VerificationType" = betterproto.enum_field(1)
    """The type of verification to perform"""


@dataclass(eq=False, repr=False)
class CreateSessionResponse2(betterproto.Message):
    """Response to `CreateIDVSessionRequest`"""

    session: "IdvSession" = betterproto.message_field(1)
    """The created IDVSession"""


@dataclass(eq=False, repr=False)
class CancelSessionRequest(betterproto.Message):
    """Request to cancel an Identity Verification Session"""

    idv_session_id: str = betterproto.string_field(1)
    """The ID of the IDVSession to cancel"""


@dataclass(eq=False, repr=False)
class CancelSessionResponse(betterproto.Message):
    """Response to `CancelIDVSessionRequest`"""

    session: "IdvSession" = betterproto.message_field(1)
    """The IDVSession in its current state after cancellation"""


@dataclass(eq=False, repr=False)
class GetSessionRequest(betterproto.Message):
    """Request to get an IDVSession"""

    idv_session_id: str = betterproto.string_field(1)
    """The ID of the IDVSession to get"""


@dataclass(eq=False, repr=False)
class GetSessionResponse(betterproto.Message):
    """Response to `GetIDVSessionRequest`"""

    session: "IdvSession" = betterproto.message_field(1)
    """The IDVSession"""


class ConnectStub(betterproto.ServiceStub):
    async def create_session(
        self,
        create_session_request: "CreateSessionRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "CreateSessionResponse2":
        return await self._unary_unary(
            "/services.connect.v1.Connect/CreateSession",
            create_session_request,
            CreateSessionResponse2,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def cancel_session(
        self,
        cancel_session_request: "CancelSessionRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "CancelSessionResponse":
        return await self._unary_unary(
            "/services.connect.v1.Connect/CancelSession",
            cancel_session_request,
            CancelSessionResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def get_session(
        self,
        get_session_request: "GetSessionRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GetSessionResponse":
        return await self._unary_unary(
            "/services.connect.v1.Connect/GetSession",
            get_session_request,
            GetSessionResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )


class ConnectBase(ServiceBase):
    async def create_session(
        self, create_session_request: "CreateSessionRequest"
    ) -> "CreateSessionResponse2":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def cancel_session(
        self, cancel_session_request: "CancelSessionRequest"
    ) -> "CancelSessionResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_session(
        self, get_session_request: "GetSessionRequest"
    ) -> "GetSessionResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_create_session(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.create_session(request)
        await stream.send_message(response)

    async def __rpc_cancel_session(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.cancel_session(request)
        await stream.send_message(response)

    async def __rpc_get_session(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_session(request)
        await stream.send_message(response)

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.connect.v1.Connect/CreateSession": grpclib.const.Handler(
                self.__rpc_create_session,
                grpclib.const.Cardinality.UNARY_UNARY,
                CreateSessionRequest,
                CreateSessionResponse2,
            ),
            "/services.connect.v1.Connect/CancelSession": grpclib.const.Handler(
                self.__rpc_cancel_session,
                grpclib.const.Cardinality.UNARY_UNARY,
                CancelSessionRequest,
                CancelSessionResponse,
            ),
            "/services.connect.v1.Connect/GetSession": grpclib.const.Handler(
                self.__rpc_get_session,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetSessionRequest,
                GetSessionResponse,
            ),
        }
