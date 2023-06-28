# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/verifiable-credentials/templates/v1/templates.proto
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


class FieldType(betterproto.Enum):
    """Valid types for credential fields"""

    STRING = 0
    NUMBER = 1
    BOOL = 2
    DATETIME = 4
    URI = 5


class UriRenderMethod(betterproto.Enum):
    """How to display a URI value when rendering a credential."""

    TEXT = 0
    """Display URI as text"""

    LINK = 1
    """Display URI as a clickable link"""

    INLINE_IMAGE = 2
    """
    Display URI as an inline image. Only takes effect if the template field's
    MIME Type is an image type.
    """


class VerificationShareType(betterproto.Enum):
    REQUIRED = 0
    OPTIONAL = 1


@dataclass(eq=False, repr=False)
class GetCredentialTemplateRequest(betterproto.Message):
    """Request to fetch a template by ID"""

    id: str = betterproto.string_field(1)
    """ID of template to fetch"""


@dataclass(eq=False, repr=False)
class GetCredentialTemplateResponse(betterproto.Message):
    """Response to `GetCredentialTemplateRequest`"""

    template: "TemplateData" = betterproto.message_field(1)
    """Template fetched by ID"""


@dataclass(eq=False, repr=False)
class SearchCredentialTemplatesRequest(betterproto.Message):
    """Request to search templates using a SQL query"""

    query: str = betterproto.string_field(1)
    """
    SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
    """

    continuation_token: str = betterproto.string_field(2)
    """
    Token provided by previous `SearchCredentialTemplatesResponse` if more data
    is available for query
    """


@dataclass(eq=False, repr=False)
class SearchCredentialTemplatesResponse(betterproto.Message):
    """Response to `SearchCredentialTemplatesRequest`"""

    items_json: str = betterproto.string_field(1)
    """Raw JSON data returned from query"""

    has_more_results: bool = betterproto.bool_field(2)
    """
    Whether more results are available for this query via `continuation_token`
    """

    continuation_token: str = betterproto.string_field(4)
    """
    Token to fetch next set of results via `SearchCredentialTemplatesRequest`
    """


@dataclass(eq=False, repr=False)
class ListCredentialTemplatesRequest(betterproto.Message):
    """Request to list templates using a SQL query"""

    query: str = betterproto.string_field(1)
    """
    SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
    """

    continuation_token: str = betterproto.string_field(2)
    """
    Token provided by previous `ListCredentialTemplatesResponse` if more data
    is available for query
    """


@dataclass(eq=False, repr=False)
class ListCredentialTemplatesResponse(betterproto.Message):
    """Response to `ListCredentialTemplatesRequest`"""

    templates: List["TemplateData"] = betterproto.message_field(1)
    """Templates found by query"""

    has_more_results: bool = betterproto.bool_field(2)
    """
    Whether more results are available for this query via `continuation_token`
    """

    continuation_token: str = betterproto.string_field(3)
    """
    Token to fetch next set of results via `ListCredentialTemplatesRequest`
    """


@dataclass(eq=False, repr=False)
class DeleteCredentialTemplateRequest(betterproto.Message):
    """Request to delete a template by ID"""

    id: str = betterproto.string_field(1)
    """ID of template to delete"""


@dataclass(eq=False, repr=False)
class DeleteCredentialTemplateResponse(betterproto.Message):
    """Response to `DeleteCredentialTemplateRequest`"""

    pass


@dataclass(eq=False, repr=False)
class CreateCredentialTemplateRequest(betterproto.Message):
    """Request to create a new template"""

    name: str = betterproto.string_field(1)
    """
    Name of new template. Must be a unique identifier within its ecosystem.
    """

    fields: Dict[str, "TemplateField"] = betterproto.map_field(
        2, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """Fields which compose the template"""

    allow_additional_fields: bool = betterproto.bool_field(3)
    """
    Whether credentials may be issued against this template which have fields
    not specified in `fields`
    """

    title: str = betterproto.string_field(4)
    """Human-readable name of template"""

    description: str = betterproto.string_field(5)
    """Human-readable description of template"""

    field_ordering: Dict[str, "FieldOrdering"] = betterproto.map_field(
        6, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """
    Optional map describing how to order and categorize the fields within the
    template. The key of this map is the field `name`. If not provided, this
    will be auto-generated.
    """

    apple_wallet_options: Optional["AppleWalletOptions"] = betterproto.message_field(
        7, optional=True, group="_apple_wallet_options"
    )
    """Options for rendering the template in Apple Wallet"""


@dataclass(eq=False, repr=False)
class CreateCredentialTemplateResponse(betterproto.Message):
    """Response to `CreateCredentialTemplateRequest`"""

    data: "TemplateData" = betterproto.message_field(1)
    """Created template"""


@dataclass(eq=False, repr=False)
class UpdateCredentialTemplateRequest(betterproto.Message):
    """Request to update display information for a template"""

    id: str = betterproto.string_field(1)
    """ID of Template to update"""

    title: Optional[str] = betterproto.string_field(2, optional=True, group="_title")
    """New human-readable title of Template"""

    description: Optional[str] = betterproto.string_field(
        3, optional=True, group="_description"
    )
    """New human-readable description of Template"""

    fields: Dict[str, "TemplateFieldPatch"] = betterproto.map_field(
        4, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """Fields to update within the Template"""

    field_ordering: Dict[str, "FieldOrdering"] = betterproto.map_field(
        5, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """
    New field ordering options. See documentation for template creation for
    usage information.
    """

    apple_wallet_options: Optional["AppleWalletOptions"] = betterproto.message_field(
        6, optional=True, group="_apple_wallet_options"
    )
    """New Apple Wallet configuration"""


@dataclass(eq=False, repr=False)
class UpdateCredentialTemplateResponse(betterproto.Message):
    """Response to `UpdateCredentialTemplateRequest`"""

    updated_template: "TemplateData" = betterproto.message_field(1)
    """The Template after the update has been applied"""


@dataclass(eq=False, repr=False)
class TemplateData(betterproto.Message):
    """Credential Template"""

    id: str = betterproto.string_field(1)
    """Template ID"""

    name: str = betterproto.string_field(2)
    """Template name"""

    version: int = betterproto.int32_field(3)
    """Template version number"""

    fields: Dict[str, "TemplateField"] = betterproto.map_field(
        4, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """Fields defined for the template"""

    allow_additional_fields: bool = betterproto.bool_field(5)
    """
    Whether credentials issued against this template may contain fields not
    defined by template
    """

    schema_uri: str = betterproto.string_field(6)
    """URI pointing to template JSON schema document"""

    ecosystem_id: str = betterproto.string_field(8)
    """ID of ecosystem in which template resides"""

    type: str = betterproto.string_field(9)
    """Template type (`VerifiableCredential`)"""

    created_by: str = betterproto.string_field(10)
    """ID of template creator"""

    date_created: str = betterproto.string_field(11)
    """Date when template was created as ISO 8601 utc string"""

    title: str = betterproto.string_field(12)
    """Human-readable template title"""

    description: str = betterproto.string_field(13)
    """Human-readable template description"""

    field_ordering: Dict[str, "FieldOrdering"] = betterproto.map_field(
        14, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """
    Map describing how to order and categorize the fields within the template.
    The key of this map is the field `name`.
    """

    apple_wallet_options: "AppleWalletOptions" = betterproto.message_field(15)
    """Options for rendering the template in Apple Wallet"""


@dataclass(eq=False, repr=False)
class AppleWalletOptions(betterproto.Message):
    """Configuration options for Apple Wallet when"""

    background_color: str = betterproto.string_field(1)
    """
    Background color, in hex format, of credential when stored in an Apple
    Wallet.
    """

    foreground_color: str = betterproto.string_field(2)
    """
    Foreground color, in hex format, of credential when stored in an Apple
    Wallet.
    """

    label_color: str = betterproto.string_field(3)
    """
    Label color, in hex format, of credential when stored in an Apple Wallet.
    """

    primary_field: str = betterproto.string_field(4)
    """
    The ID of the template field which should be used as the primary field of a
    credential.
    """

    secondary_fields: List[str] = betterproto.string_field(5)
    """
    The secondary fields of the credential. This is a mapping between the order
    of a secondary field (0 or 1) and the field name.
    """

    auxiliary_fields: List[str] = betterproto.string_field(6)
    """
    The auxiliary fields of the credential. This is a mapping between the order
    of an auxiliary field (0 or 1) and the field name.
    """


@dataclass(eq=False, repr=False)
class FieldOrdering(betterproto.Message):
    """Ordering information for a template field"""

    order: int = betterproto.int32_field(1)
    """
    The order of the field; must be unique within the Template. Fields are
    sorted by order ascending when displaying a credential. Field orders must
    be contiguous from `0` to the number of fields minus 1.
    """

    section: str = betterproto.string_field(2)
    """
    The human-readable name of the section this field appears in; used to group
    together fields when displaying a credential. Sections must be contiguous
    with respect to `order`.
    """


@dataclass(eq=False, repr=False)
class TemplateField(betterproto.Message):
    """A field defined in a template"""

    title: str = betterproto.string_field(1)
    """Human-readable name of the field"""

    description: str = betterproto.string_field(2)
    """Human-readable description of the field"""

    optional: bool = betterproto.bool_field(3)
    """
    Whether this field may be omitted when a credential is issued against the
    template
    """

    type: "FieldType" = betterproto.enum_field(4)
    """The type of the field"""

    uri_data: Optional["UriFieldData"] = betterproto.message_field(
        6, optional=True, group="_uri_data"
    )
    """
    How to deal with this URI field when rendering credential. Only use if
    `type` is `URI`.
    """


@dataclass(eq=False, repr=False)
class TemplateFieldPatch(betterproto.Message):
    """A patch to apply to an existing template field"""

    title: Optional[str] = betterproto.string_field(1, optional=True, group="_title")
    """Human-readable name of the field"""

    description: Optional[str] = betterproto.string_field(
        2, optional=True, group="_description"
    )
    """Human-readable description of the field"""

    uri_data: Optional["UriFieldData"] = betterproto.message_field(
        3, optional=True, group="_uri_data"
    )
    """
    How to deal with this URI field when rendering credential. Only use if
    `type` is `URI`.
    """


@dataclass(eq=False, repr=False)
class UriFieldData(betterproto.Message):
    """Data pertaining to a URI Field"""

    mime_type: str = betterproto.string_field(1)
    """
    Expected MIME Type of content pointed to by URI. Can be generic (eg,
    "image/") or specific ("image/png"). Defaults to "application/octet-
    stream".
    """

    render_method: "UriRenderMethod" = betterproto.enum_field(2)
    """How to display the URI value when rendering a credential."""


@dataclass(eq=False, repr=False)
class CreateVerificationTemplateRequest(betterproto.Message):
    name: str = betterproto.string_field(1)
    """
    Name of new template. Must be a unique identifier within its ecosystem.
    """

    fields: List["VerificationTemplateField"] = betterproto.message_field(2)
    """Fields which will be required in the verification proof template"""

    credential_template_id: str = betterproto.string_field(3)
    """
    Source credential template, used for verifying that the specified `fields`
    are present in the credential template
    """

    title: str = betterproto.string_field(4)
    """Human-readable name of template"""

    description: str = betterproto.string_field(5)
    """Human-readable description of template"""


@dataclass(eq=False, repr=False)
class CreateVerificationTemplateResponse(betterproto.Message):
    data: "VerificationTemplateData" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class UpdateVerificationTemplateRequest(betterproto.Message):
    id: str = betterproto.string_field(1)
    """ID of Template to update"""

    title: Optional[str] = betterproto.string_field(2, optional=True, group="_title")
    """New human-readable title of Template"""

    description: Optional[str] = betterproto.string_field(
        3, optional=True, group="_description"
    )
    """New human-readable description of Template"""

    fields: Dict[str, "VerificationTemplateFieldPatch"] = betterproto.map_field(
        4, betterproto.TYPE_STRING, betterproto.TYPE_MESSAGE
    )
    """Fields to update within the Template"""


@dataclass(eq=False, repr=False)
class UpdateVerificationTemplateResponse(betterproto.Message):
    template: "VerificationTemplateData" = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class DeleteVerificationTemplateRequest(betterproto.Message):
    verification_template_id: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class DeleteVerificationTemplateResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class VerificationTemplateData(betterproto.Message):
    """Verification Template"""

    id: str = betterproto.string_field(1)
    """Template ID"""

    name: str = betterproto.string_field(2)
    """Template name"""

    version: int = betterproto.int32_field(3)
    """Template version number"""

    fields: List["VerificationTemplateField"] = betterproto.message_field(4)
    """Fields defined for the template"""

    schema_uri: str = betterproto.string_field(6)
    """URI pointing to template JSON schema document"""

    ecosystem_id: str = betterproto.string_field(8)
    """ID of ecosystem in which template resides"""

    type: str = betterproto.string_field(9)
    """Template type (`VerificationTemplate`)"""

    created_by: str = betterproto.string_field(10)
    """ID of template creator"""

    date_created: str = betterproto.string_field(11)
    """Date when template was created as ISO 8601 utc string"""

    title: str = betterproto.string_field(12)
    """Human-readable template title"""

    description: str = betterproto.string_field(13)
    """Human-readable template description"""


@dataclass(eq=False, repr=False)
class ListVerificationTemplatesRequest(betterproto.Message):
    """Request to list templates using a SQL query"""

    query: str = betterproto.string_field(1)
    """
    SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
    """

    continuation_token: str = betterproto.string_field(2)
    """
    Token provided by previous `ListCredentialTemplatesResponse` if more data
    is available for query
    """


@dataclass(eq=False, repr=False)
class ListVerificationTemplatesResponse(betterproto.Message):
    templates: List["VerificationTemplateData"] = betterproto.message_field(1)
    """Templates found by query"""

    has_more_results: bool = betterproto.bool_field(2)
    """
    Whether more results are available for this query via `continuation_token`
    """

    continuation_token: str = betterproto.string_field(3)
    """
    Token to fetch next set of results via `ListVerificationTemplatesRequest`
    """


@dataclass(eq=False, repr=False)
class VerificationTemplateField(betterproto.Message):
    """A field defined in a template"""

    name: str = betterproto.string_field(1)
    """Field name (must be unique within template)"""

    field_share_type: "VerificationShareType" = betterproto.enum_field(2)
    """Whether this field may be omitted on proof creation"""

    usage_policy: str = betterproto.string_field(3)
    """User-facing explanation of what is done with this data"""


@dataclass(eq=False, repr=False)
class VerificationTemplateFieldPatch(betterproto.Message):
    """A patch to apply to an existing template field"""

    title: Optional[str] = betterproto.string_field(1, optional=True, group="_title")
    """Human-readable name of the field"""

    description: Optional[str] = betterproto.string_field(
        2, optional=True, group="_description"
    )
    """Human-readable description of the field"""


class CredentialTemplatesStub(betterproto.ServiceStub):
    async def create(
        self,
        create_credential_template_request: "CreateCredentialTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "CreateCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
            create_credential_template_request,
            CreateCredentialTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def get(
        self,
        get_credential_template_request: "GetCredentialTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GetCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
            get_credential_template_request,
            GetCredentialTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def update(
        self,
        update_credential_template_request: "UpdateCredentialTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "UpdateCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Update",
            update_credential_template_request,
            UpdateCredentialTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def list(
        self,
        list_credential_templates_request: "ListCredentialTemplatesRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "ListCredentialTemplatesResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
            list_credential_templates_request,
            ListCredentialTemplatesResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def search(
        self,
        search_credential_templates_request: "SearchCredentialTemplatesRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "SearchCredentialTemplatesResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
            search_credential_templates_request,
            SearchCredentialTemplatesResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def delete(
        self,
        delete_credential_template_request: "DeleteCredentialTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "DeleteCredentialTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
            delete_credential_template_request,
            DeleteCredentialTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def create_verification_template(
        self,
        create_verification_template_request: "CreateVerificationTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "CreateVerificationTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate",
            create_verification_template_request,
            CreateVerificationTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def list_verification_template(
        self,
        list_verification_templates_request: "ListVerificationTemplatesRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "ListVerificationTemplatesResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplate",
            list_verification_templates_request,
            ListVerificationTemplatesResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def update_verification_template(
        self,
        update_verification_template_request: "UpdateVerificationTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "UpdateVerificationTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate",
            update_verification_template_request,
            UpdateVerificationTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def delete_verification_template(
        self,
        delete_verification_template_request: "DeleteVerificationTemplateRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "DeleteVerificationTemplateResponse":
        return await self._unary_unary(
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate",
            delete_verification_template_request,
            DeleteVerificationTemplateResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
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

    async def update(
        self, update_credential_template_request: "UpdateCredentialTemplateRequest"
    ) -> "UpdateCredentialTemplateResponse":
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

    async def create_verification_template(
        self, create_verification_template_request: "CreateVerificationTemplateRequest"
    ) -> "CreateVerificationTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def list_verification_template(
        self, list_verification_templates_request: "ListVerificationTemplatesRequest"
    ) -> "ListVerificationTemplatesResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def update_verification_template(
        self, update_verification_template_request: "UpdateVerificationTemplateRequest"
    ) -> "UpdateVerificationTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def delete_verification_template(
        self, delete_verification_template_request: "DeleteVerificationTemplateRequest"
    ) -> "DeleteVerificationTemplateResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def __rpc_create(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.create(request)
        await stream.send_message(response)

    async def __rpc_get(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get(request)
        await stream.send_message(response)

    async def __rpc_update(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.update(request)
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

    async def __rpc_create_verification_template(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.create_verification_template(request)
        await stream.send_message(response)

    async def __rpc_list_verification_template(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.list_verification_template(request)
        await stream.send_message(response)

    async def __rpc_update_verification_template(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.update_verification_template(request)
        await stream.send_message(response)

    async def __rpc_delete_verification_template(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.delete_verification_template(request)
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
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/Update": grpclib.const.Handler(
                self.__rpc_update,
                grpclib.const.Cardinality.UNARY_UNARY,
                UpdateCredentialTemplateRequest,
                UpdateCredentialTemplateResponse,
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
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate": grpclib.const.Handler(
                self.__rpc_create_verification_template,
                grpclib.const.Cardinality.UNARY_UNARY,
                CreateVerificationTemplateRequest,
                CreateVerificationTemplateResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplate": grpclib.const.Handler(
                self.__rpc_list_verification_template,
                grpclib.const.Cardinality.UNARY_UNARY,
                ListVerificationTemplatesRequest,
                ListVerificationTemplatesResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate": grpclib.const.Handler(
                self.__rpc_update_verification_template,
                grpclib.const.Cardinality.UNARY_UNARY,
                UpdateVerificationTemplateRequest,
                UpdateVerificationTemplateResponse,
            ),
            "/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate": grpclib.const.Handler(
                self.__rpc_delete_verification_template,
                grpclib.const.Cardinality.UNARY_UNARY,
                DeleteVerificationTemplateRequest,
                DeleteVerificationTemplateResponse,
            ),
        }
