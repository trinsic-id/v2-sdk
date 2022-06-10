# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/universal-wallet/v1/universal-wallet.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import Dict, List, Optional

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from betterproto.grpc.grpclib_client import MetadataLike
    from grpclib.metadata import Deadline


@dataclass(eq=False, repr=False)
class SearchRequest(betterproto.Message):
    """Request to search items in wallet"""

    query: str = betterproto.string_field(1)
    """SQL Query to execute against items in wallet"""

    continuation_token: str = betterproto.string_field(2)
    """
    Token provided by previous `SearchResponse` if more data is available for
    query
    """


@dataclass(eq=False, repr=False)
class SearchResponse(betterproto.Message):
    """Response to `SearchRequest`"""

    items: List[str] = betterproto.string_field(1)
    """Array of query results, as JSON strings"""

    has_more: bool = betterproto.bool_field(2)
    """
    Whether more results are available for this query via `continuation_token`
    """

    continuation_token: str = betterproto.string_field(4)
    """Token to fetch next set of results via `SearchRequest`"""


@dataclass(eq=False, repr=False)
class GetItemRequest(betterproto.Message):
    """Request to fetch an item from wallet"""

    item_id: str = betterproto.string_field(1)
    """ID of item in wallet"""


@dataclass(eq=False, repr=False)
class GetItemResponse(betterproto.Message):
    """Response to `GetItemRequest`"""

    item_json: str = betterproto.string_field(1)
    """Item data as a JSON string"""

    item_type: str = betterproto.string_field(2)
    """Type of item specified when item was inserted into wallet"""


@dataclass(eq=False, repr=False)
class UpdateItemRequest(betterproto.Message):
    """Request to update item in wallet"""

    item_id: str = betterproto.string_field(1)
    """ID of item in wallet"""

    item_type: str = betterproto.string_field(2)
    """Item type (ex. "VerifiableCredential")"""


@dataclass(eq=False, repr=False)
class UpdateItemResponse(betterproto.Message):
    """Response to `UpdateItemRequest`"""

    pass


@dataclass(eq=False, repr=False)
class InsertItemRequest(betterproto.Message):
    """Request to insert a JSON document into a wallet"""

    item_json: str = betterproto.string_field(1)
    """Document to insert; must be stringified JSON"""

    item_type: str = betterproto.string_field(2)
    """Item type (ex. "VerifiableCredential")"""


@dataclass(eq=False, repr=False)
class InsertItemResponse(betterproto.Message):
    """Response to `InsertItemRequest`"""

    item_id: str = betterproto.string_field(2)
    """ID of item inserted into wallet"""


@dataclass(eq=False, repr=False)
class DeleteItemRequest(betterproto.Message):
    """Request to delete an item in a wallet"""

    item_id: str = betterproto.string_field(1)
    """ID of item to delete"""


@dataclass(eq=False, repr=False)
class DeleteItemResponse(betterproto.Message):
    """Response to `DeleteItemRequest`"""

    pass


class UniversalWalletStub(betterproto.ServiceStub):
    async def get_item(
        self,
        get_item_request: "GetItemRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GetItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/GetItem",
            get_item_request,
            GetItemResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def search(
        self,
        search_request: "SearchRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "SearchResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/Search",
            search_request,
            SearchResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def insert_item(
        self,
        insert_item_request: "InsertItemRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "InsertItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/InsertItem",
            insert_item_request,
            InsertItemResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def update_item(
        self,
        update_item_request: "UpdateItemRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "UpdateItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/UpdateItem",
            update_item_request,
            UpdateItemResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def delete_item(
        self,
        delete_item_request: "DeleteItemRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "DeleteItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/DeleteItem",
            delete_item_request,
            DeleteItemResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )


class UniversalWalletBase(ServiceBase):
    async def get_item(self, get_item_request: "GetItemRequest") -> "GetItemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def search(self, search_request: "SearchRequest") -> "SearchResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def insert_item(
        self, insert_item_request: "InsertItemRequest"
    ) -> "InsertItemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def update_item(
        self, update_item_request: "UpdateItemRequest"
    ) -> "UpdateItemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def delete_item(
        self, delete_item_request: "DeleteItemRequest"
    ) -> "DeleteItemResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_get_item(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_item(request)
        await stream.send_message(response)

    async def __rpc_search(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.search(request)
        await stream.send_message(response)

    async def __rpc_insert_item(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.insert_item(request)
        await stream.send_message(response)

    async def __rpc_update_item(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.update_item(request)
        await stream.send_message(response)

    async def __rpc_delete_item(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.delete_item(request)
        await stream.send_message(response)

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.universalwallet.v1.UniversalWallet/GetItem": grpclib.const.Handler(
                self.__rpc_get_item,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetItemRequest,
                GetItemResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/Search": grpclib.const.Handler(
                self.__rpc_search,
                grpclib.const.Cardinality.UNARY_UNARY,
                SearchRequest,
                SearchResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/InsertItem": grpclib.const.Handler(
                self.__rpc_insert_item,
                grpclib.const.Cardinality.UNARY_UNARY,
                InsertItemRequest,
                InsertItemResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/UpdateItem": grpclib.const.Handler(
                self.__rpc_update_item,
                grpclib.const.Cardinality.UNARY_UNARY,
                UpdateItemRequest,
                UpdateItemResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/DeleteItem": grpclib.const.Handler(
                self.__rpc_delete_item,
                grpclib.const.Cardinality.UNARY_UNARY,
                DeleteItemRequest,
                DeleteItemResponse,
            ),
        }
