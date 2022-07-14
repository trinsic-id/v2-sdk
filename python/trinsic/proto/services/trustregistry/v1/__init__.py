# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/trust-registry/v1/trust-registry.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import AsyncIterator, Dict

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib


class RegistrationStatus(betterproto.Enum):
    CURRENT = 0
    EXPIRED = 1
    TERMINATED = 2
    REVOKED = 3
    NOT_FOUND = 10


@dataclass(eq=False, repr=False)
class AddFrameworkRequest(betterproto.Message):
    """
    Request to register a new ecosystem governance framework in the current
    ecosystem
    """

    # URI of governance framework organization
    governance_framework_uri: str = betterproto.string_field(1)
    # Name of governance framework organization
    name: str = betterproto.string_field(2)
    # Description of governance framework
    description: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class AddFrameworkResponse(betterproto.Message):
    """Response to `AddFrameworkRequest`"""

    # Unique framework identifier
    id: str = betterproto.string_field(1)
    # DID URI of Trinsic account which created the governance framework
    governing_authority: str = betterproto.string_field(2)
    # URN of trust registry for governance framework
    trust_registry: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class RemoveFrameworkRequest(betterproto.Message):
    """Request to remove a governance framework from the current ecosystem"""

    # ID of governance framework to remove
    id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class RemoveFrameworkResponse(betterproto.Message):
    """Response to `RemoveFrameworkRequest`"""

    pass


@dataclass(eq=False, repr=False)
class SearchRegistryRequest(betterproto.Message):
    """Request to search all governance frameworks within ecosystem"""

    # SQL query to execute against frameworks. Example: `SELECT c from c where
    # c.type == 'GovernanceFramework'`
    query: str = betterproto.string_field(1)
    # Token to fetch next set of results, from previous `SearchRegistryResponse`
    continuation_token: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class SearchRegistryResponse(betterproto.Message):
    """Response to `SearchRegistryRequest`"""

    # JSON string containing array of resultant objects
    items_json: str = betterproto.string_field(1)
    # Whether more data is available to fetch for query
    has_more: bool = betterproto.bool_field(2)
    # Token to fetch next set of results via `SearchRegistryRequest`
    continuation_token: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class GovernanceFramework(betterproto.Message):
    """Ecosystem Governance Framework"""

    # URI of governance framework organization
    governance_framework_uri: str = betterproto.string_field(1)
    # URI of trust registry associated with governance framework
    trust_registry_uri: str = betterproto.string_field(2)
    # Description of governance framework
    description: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class RegisterMemberRequest(betterproto.Message):
    """
    Request to register a member as a valid issuer of a specific credential
    schema. Only one of `did_uri`, `wallet_id`, or `email` may be specified.
    """

    # DID URI of member to register
    did_uri: str = betterproto.string_field(1, group="member")
    # Trinsic Wallet ID of member to register
    wallet_id: str = betterproto.string_field(3, group="member")
    # Email address of member to register. Must be associated with an existing
    # Trinsic account.
    email: str = betterproto.string_field(4, group="member")
    # URI of credential schema to register member as authorized issuer of
    schema_uri: str = betterproto.string_field(10)
    # Unix Timestamp member is valid from. Member will not be considered valid
    # before this timestamp.
    valid_from_utc: int = betterproto.uint64_field(11)
    # Unix Timestamp member is valid until. Member will not be considered valid
    # after this timestamp.
    valid_until_utc: int = betterproto.uint64_field(12)
    # ID of the governance framework that member is being added to
    framework_id: str = betterproto.string_field(30)


@dataclass(eq=False, repr=False)
class RegisterMemberResponse(betterproto.Message):
    """Response to `RegisterMemberRequest`"""

    pass


@dataclass(eq=False, repr=False)
class UnregisterMemberRequest(betterproto.Message):
    """
    Request to unregister a member as a valid issuer of a specific credential
    schema. Only one of `did_uri`, `wallet_id`, or `email` may be specified.
    """

    # DID URI of member to unregister
    did_uri: str = betterproto.string_field(1, group="member")
    # Trinsic Wallet ID of member to unregister
    wallet_id: str = betterproto.string_field(3, group="member")
    # Email address of member to unregister. Must be associated with an existing
    # Trinsic account.
    email: str = betterproto.string_field(4, group="member")
    # URI of credential schema to unregister member as authorized issuer of
    schema_uri: str = betterproto.string_field(10)
    # ID of the governance framework that member is being removed from
    framework_id: str = betterproto.string_field(20)


@dataclass(eq=False, repr=False)
class UnregisterMemberResponse(betterproto.Message):
    """Response to `UnregisterMemberRequest`"""

    pass


@dataclass(eq=False, repr=False)
class GetMembershipStatusRequest(betterproto.Message):
    """
    Request to fetch membership status in governance framework for a specific
    credential schema. Only one of `did_uri`, `x509_cert` may be specified.
    """

    # URI of governance framework
    governance_framework_uri: str = betterproto.string_field(1)
    # DID URI of member
    did_uri: str = betterproto.string_field(2, group="member")
    # X.509 certificate of member
    x509_cert: str = betterproto.string_field(3, group="member")
    # URI of credential schema associated with membership
    schema_uri: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class GetMembershipStatusResponse(betterproto.Message):
    """Response to `GetMembershipStatusRequest`"""

    # Status of member for given credential schema
    status: "RegistrationStatus" = betterproto.enum_field(1)


@dataclass(eq=False, repr=False)
class FetchDataRequest(betterproto.Message):
    """Not implemented."""

    governance_framework_uri: str = betterproto.string_field(1)
    query: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class FetchDataResponse(betterproto.Message):
    """Not implemented."""

    response_json: str = betterproto.string_field(1)
    has_more_results: bool = betterproto.bool_field(2)
    continuation_token: str = betterproto.string_field(3)


class TrustRegistryStub(betterproto.ServiceStub):
    async def add_framework(
        self, add_framework_request: "AddFrameworkRequest"
    ) -> "AddFrameworkResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/AddFramework",
            add_framework_request,
            AddFrameworkResponse,
        )

    async def remove_framework(
        self, remove_framework_request: "RemoveFrameworkRequest"
    ) -> "RemoveFrameworkResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/RemoveFramework",
            remove_framework_request,
            RemoveFrameworkResponse,
        )

    async def search_registry(
        self, search_registry_request: "SearchRegistryRequest"
    ) -> "SearchRegistryResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/SearchRegistry",
            search_registry_request,
            SearchRegistryResponse,
        )

    async def register_member(
        self, register_member_request: "RegisterMemberRequest"
    ) -> "RegisterMemberResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/RegisterMember",
            register_member_request,
            RegisterMemberResponse,
        )

    async def unregister_member(
        self, unregister_member_request: "UnregisterMemberRequest"
    ) -> "UnregisterMemberResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/UnregisterMember",
            unregister_member_request,
            UnregisterMemberResponse,
        )

    async def get_membership_status(
        self, get_membership_status_request: "GetMembershipStatusRequest"
    ) -> "GetMembershipStatusResponse":
        return await self._unary_unary(
            "/services.trustregistry.v1.TrustRegistry/GetMembershipStatus",
            get_membership_status_request,
            GetMembershipStatusResponse,
        )

    async def fetch_data(
        self, fetch_data_request: "FetchDataRequest"
    ) -> AsyncIterator["FetchDataResponse"]:
        async for response in self._unary_stream(
            "/services.trustregistry.v1.TrustRegistry/FetchData",
            fetch_data_request,
            FetchDataResponse,
        ):
            yield response


class TrustRegistryBase(ServiceBase):
    async def add_framework(
        self, add_framework_request: "AddFrameworkRequest"
    ) -> "AddFrameworkResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def remove_framework(
        self, remove_framework_request: "RemoveFrameworkRequest"
    ) -> "RemoveFrameworkResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def search_registry(
        self, search_registry_request: "SearchRegistryRequest"
    ) -> "SearchRegistryResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def register_member(
        self, register_member_request: "RegisterMemberRequest"
    ) -> "RegisterMemberResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def unregister_member(
        self, unregister_member_request: "UnregisterMemberRequest"
    ) -> "UnregisterMemberResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_membership_status(
        self, get_membership_status_request: "GetMembershipStatusRequest"
    ) -> "GetMembershipStatusResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def fetch_data(
        self, fetch_data_request: "FetchDataRequest"
    ) -> AsyncIterator["FetchDataResponse"]:
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_add_framework(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.add_framework(request)
        await stream.send_message(response)

    async def __rpc_remove_framework(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.remove_framework(request)
        await stream.send_message(response)

    async def __rpc_search_registry(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.search_registry(request)
        await stream.send_message(response)

    async def __rpc_register_member(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.register_member(request)
        await stream.send_message(response)

    async def __rpc_unregister_member(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.unregister_member(request)
        await stream.send_message(response)

    async def __rpc_get_membership_status(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_membership_status(request)
        await stream.send_message(response)

    async def __rpc_fetch_data(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        await self._call_rpc_handler_server_stream(
            self.fetch_data,
            stream,
            request,
        )

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.trustregistry.v1.TrustRegistry/AddFramework": grpclib.const.Handler(
                self.__rpc_add_framework,
                grpclib.const.Cardinality.UNARY_UNARY,
                AddFrameworkRequest,
                AddFrameworkResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/RemoveFramework": grpclib.const.Handler(
                self.__rpc_remove_framework,
                grpclib.const.Cardinality.UNARY_UNARY,
                RemoveFrameworkRequest,
                RemoveFrameworkResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/SearchRegistry": grpclib.const.Handler(
                self.__rpc_search_registry,
                grpclib.const.Cardinality.UNARY_UNARY,
                SearchRegistryRequest,
                SearchRegistryResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/RegisterMember": grpclib.const.Handler(
                self.__rpc_register_member,
                grpclib.const.Cardinality.UNARY_UNARY,
                RegisterMemberRequest,
                RegisterMemberResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/UnregisterMember": grpclib.const.Handler(
                self.__rpc_unregister_member,
                grpclib.const.Cardinality.UNARY_UNARY,
                UnregisterMemberRequest,
                UnregisterMemberResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/GetMembershipStatus": grpclib.const.Handler(
                self.__rpc_get_membership_status,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetMembershipStatusRequest,
                GetMembershipStatusResponse,
            ),
            "/services.trustregistry.v1.TrustRegistry/FetchData": grpclib.const.Handler(
                self.__rpc_fetch_data,
                grpclib.const.Cardinality.UNARY_STREAM,
                FetchDataRequest,
                FetchDataResponse,
            ),
        }
