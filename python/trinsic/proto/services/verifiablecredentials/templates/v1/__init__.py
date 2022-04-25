# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/verifiable-credentials/templates/v1/templates.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import Dict, List

import betterproto
from betterproto.grpc.grpclib_server import ServiceBase
import grpclib


class FieldType(betterproto.Enum):
    STRING = 0
    NUMBER = 1
    BOOL = 2
    DATETIME = 4


@dataclass(eq=False, repr=False)
class GetCredentialTemplateRequest(betterproto.Message):
    id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GetCredentialTemplateResponse(betterproto.Message):
    template: "TemplateData" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class SearchCredentialTemplatesRequest(betterproto.Message):
    query: str = betterproto.string_field(1)
    continuation_token: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class SearchCredentialTemplatesResponse(betterproto.Message):
    items_json: str = betterproto.string_field(1)
    has_more: bool = betterproto.bool_field(2)
    count: int = betterproto.int32_field(3)
    continuation_token: str = betterproto.string_field(4)


@dataclass(eq=False, repr=False)
class ListCredentialTemplatesRequest(betterproto.Message):
    query: str = betterproto.string_field(1)
    continuation_token: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class ListCredentialTemplatesResponse(betterproto.Message):
    templates: List["TemplateData"] = betterproto.message_field(1)
    has_more_results: bool = betterproto.bool_field(2)
    continuation_token: str = betterproto.string_field(3)


@dataclass(eq=False, repr=False)
class DeleteCredentialTemplateRequest(betterproto.Message):
    id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class DeleteCredentialTemplateResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class CreateCredentialTemplateRequest(betterproto.Message):
    """Request to create new template"""

    name: str = betterproto.string_field(1)
    fields: Dict[str, "TemplateField"] = betterproto.map_field(
        2, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    allow_additional_fields: bool = betterproto.bool_field(3)


@dataclass(eq=False, repr=False)
class CreateCredentialTemplateResponse(betterproto.Message):
    data: "TemplateData" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class TemplateField(betterproto.Message):
    description: str = betterproto.string_field(2)
    optional: bool = betterproto.bool_field(3)
    type: "FieldType" = betterproto.enum_field(4)


@dataclass(eq=False, repr=False)
class GetTemplateRequest(betterproto.Message):
    id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class GetTemplateResponse(betterproto.Message):
    data: "TemplateData" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class ListTemplatesRequest(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class ListTemplatesResponse(betterproto.Message):
    templates: List["TemplateData"] = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class TemplateData(betterproto.Message):
    id: str = betterproto.string_field(1)
    name: str = betterproto.string_field(2)
    version: int = betterproto.int32_field(3)
    fields: Dict[str, "TemplateField"] = betterproto.map_field(
        4, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    allow_additional_fields: bool = betterproto.bool_field(5)
    schema_uri: str = betterproto.string_field(6)
    context_uri: str = betterproto.string_field(7)
    ecosystem_id: str = betterproto.string_field(8)
    type: str = betterproto.string_field(9)


class CredentialTemplatesStub(betterproto.ServiceStub):
    async def create(
        self, create_credential_template_request: "CreateCredentialTemplateRequest"
    ) -> "CreateCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
            create_credential_template_request,
            CreateCredentialTemplateResponse,
        )

    async def get(
        self, get_credential_template_request: "GetCredentialTemplateRequest"
    ) -> "GetCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
            get_credential_template_request,
            GetCredentialTemplateResponse,
        )

    async def list(
        self, list_credential_templates_request: "ListCredentialTemplatesRequest"
    ) -> "ListCredentialTemplatesResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
            list_credential_templates_request,
            ListCredentialTemplatesResponse,
        )

    async def search(
        self, search_credential_templates_request: "SearchCredentialTemplatesRequest"
    ) -> "SearchCredentialTemplatesResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
            search_credential_templates_request,
            SearchCredentialTemplatesResponse,
        )

    async def delete(
        self, delete_credential_template_request: "DeleteCredentialTemplateRequest"
    ) -> "DeleteCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
            delete_credential_template_request,
            DeleteCredentialTemplateResponse,
        )


class CredentialTemplatesBase(ServiceBase):
    async def create(
        self, create_credential_template_request: "CreateCredentialTemplateRequest"
    ) -> "CreateCredentialTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get(
        self, get_credential_template_request: "GetCredentialTemplateRequest"
    ) -> "GetCredentialTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def list(
        self, list_credential_templates_request: "ListCredentialTemplatesRequest"
    ) -> "ListCredentialTemplatesResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def search(
        self, search_credential_templates_request: "SearchCredentialTemplatesRequest"
    ) -> "SearchCredentialTemplatesResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def delete(
        self, delete_credential_template_request: "DeleteCredentialTemplateRequest"
    ) -> "DeleteCredentialTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_create(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.create(request)
        await stream.send_message(response)

    async def __rpc_get(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get(request)
        await stream.send_message(response)

    async def __rpc_list(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.list(request)
        await stream.send_message(response)

    async def __rpc_search(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.search(request)
        await stream.send_message(response)

    async def __rpc_delete(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.delete(request)
        await stream.send_message(response)

    def __mapping__(self) -> Dict[str, grpclib.const.Handler]:
        return {
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create": grpclib.const.Handler(
                self.__rpc_create,
                grpclib.const.Cardinality.UNARY_UNARY,
                CreateCredentialTemplateRequest,
                CreateCredentialTemplateResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get": grpclib.const.Handler(
                self.__rpc_get,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetCredentialTemplateRequest,
                GetCredentialTemplateResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/List": grpclib.const.Handler(
                self.__rpc_list,
                grpclib.const.Cardinality.UNARY_UNARY,
                ListCredentialTemplatesRequest,
                ListCredentialTemplatesResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search": grpclib.const.Handler(
                self.__rpc_search,
                grpclib.const.Cardinality.UNARY_UNARY,
                SearchCredentialTemplatesRequest,
                SearchCredentialTemplatesResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete": grpclib.const.Handler(
                self.__rpc_delete,
                grpclib.const.Cardinality.UNARY_UNARY,
                DeleteCredentialTemplateRequest,
                DeleteCredentialTemplateResponse,
            ),
        }
