# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/universal-wallet/v1/universal-wallet.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import Dict, List

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib


@dataclass(eq=False, repr=False)
class SearchRequest(betterproto.Message):
    """Search request object"""

    query: str = betterproto.string_field(1)
    continuation_token: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class SearchResponse(betterproto.Message):
    """Search response object"""

    items: List[str] = betterproto.string_field(1)
    has_more: bool = betterproto.bool_field(2)
    # int32 count = 3;
    continuation_token: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class GetItemRequest(betterproto.Message):
    """Get item request object"""

    # The item identifier
    item_id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GetItemResponse(betterproto.Message):
    """Get item response object"""

    # The item data represented as stringified JSON
    item_json: str = betterproto.string_field(1)
    # User set item type that described the content of this item
    item_type: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class UpdateItemRequest(betterproto.Message):
    """Update item request object"""

    # The item identifier
    item_id: str = betterproto.string_field(1)
    # The item type that described the content of this item
    item_type: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class UpdateItemResponse(betterproto.Message):
    """Update item response object"""

    # Response status
    status: "__common_v1__.ResponseStatus" = betterproto.enum_field(1)


@dataclass(eq=False, repr=False)
class InsertItemRequest(betterproto.Message):
    """Insert item request"""

    # the document to insert as stringified json
    item_json: str = betterproto.string_field(1)
    # optional item type ex. "VerifiableCredential"
    item_type: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class InsertItemResponse(betterproto.Message):
    """Insert item response"""

    status: "__common_v1__.ResponseStatus" = betterproto.enum_field(1)
    # The item identifier of the inserted record
    item_id: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class DeleteItemRequest(betterproto.Message):
    """Delete item request"""

    # item identifier of the record to delete
    item_id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class DeleteItemResponse(betterproto.Message):
    """Delete item response"""

    status: "__common_v1__.ResponseStatus" = betterproto.enum_field(1)


class UniversalWalletStub(betterproto.ServiceStub):
    async def get_item(self, get_item_request: "GetItemRequest") -> "GetItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/GetItem",
            get_item_request,
            GetItemResponse,
        )

    async def search(self, search_request: "SearchRequest") -> "SearchResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/Search",
            search_request,
            SearchResponse,
        )

    async def insert_item(
        self, insert_item_request: "InsertItemRequest"
    ) -> "InsertItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/InsertItem",
            insert_item_request,
            InsertItemResponse,
        )

    async def update_item(
        self, update_item_request: "UpdateItemRequest"
    ) -> "UpdateItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/UpdateItem",
            update_item_request,
            UpdateItemResponse,
        )

    async def delete_item(
        self, delete_item_request: "DeleteItemRequest"
    ) -> "DeleteItemResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/DeleteItem",
            delete_item_request,
            DeleteItemResponse,
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


from ...common import v1 as __common_v1__
