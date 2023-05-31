# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: services/universal-wallet/v1/universal-wallet.proto
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

from ...provider import v1 as __provider_v1__


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

    has_more_results: bool = betterproto.bool_field(2)
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


@dataclass(eq=False, repr=False)
class DeleteWalletRequest(betterproto.Message):
    """Request to delete a wallet"""

    email: str = betterproto.string_field(1, group="account")
    """
    Email address of account to delete. Mutually exclusive with `walletId` and
    `didUri`.
    """

    wallet_id: str = betterproto.string_field(2, group="account")
    """
    Wallet ID of account to delete. Mutually exclusive with `email` and
    `didUri`.
    """

    did_uri: str = betterproto.string_field(4, group="account")
    """
    DID URI of the account to delete. Mutually exclusive with `email` and
    `walletId`.
    """


@dataclass(eq=False, repr=False)
class DeleteWalletResponse(betterproto.Message):
    """Response to `DeleteWalletRequest`. Empty payload."""

    pass


@dataclass(eq=False, repr=False)
class CreateWalletRequest(betterproto.Message):
    ecosystem_id: str = betterproto.string_field(1)
    """Ecosystem ID of the wallet to create"""

    description: Optional[str] = betterproto.string_field(
        2, optional=True, group="_description"
    )
    """
    Wallet name or description. Use this field to add vendor specific
    information about this wallet, such as email, phone, internal ID, or
    anything you'd like to associate with this wallet. This field is
    searchable.
    """

    identity: Optional[
        "CreateWalletRequestExternalIdentity"
    ] = betterproto.message_field(3, optional=True, group="_identity")
    """
    Optional identity to add to the wallet (email or sms).  Use this field when
    inviting participants into an ecosystem. If this field is set, an auth
    token will not be sent in the response.
    """


@dataclass(eq=False, repr=False)
class CreateWalletRequestExternalIdentity(betterproto.Message):
    identity: str = betterproto.string_field(1)
    """
    The user identity to add to the wallet This can be an email address or
    phone number (formatted as +[country code][phone number])
    """

    provider: "__provider_v1__.IdentityProvider" = betterproto.enum_field(2)
    """The type of identity provider, like EMAIL or PHONE"""


@dataclass(eq=False, repr=False)
class CreateWalletResponse(betterproto.Message):
    auth_token: str = betterproto.string_field(2)
    """Auth token for the newly created wallet"""

    token_id: str = betterproto.string_field(3)
    """Token ID of the newly generated token"""

    wallet: "__provider_v1__.WalletConfiguration" = betterproto.message_field(4)
    """Wallet configuration"""


@dataclass(eq=False, repr=False)
class GenerateAuthTokenRequest(betterproto.Message):
    wallet_id: str = betterproto.string_field(1)
    token_description: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class GenerateAuthTokenResponse(betterproto.Message):
    token_id: str = betterproto.string_field(1)
    auth_token: str = betterproto.string_field(2)


@dataclass(eq=False, repr=False)
class GetWalletInfoRequest(betterproto.Message):
    """
    Request to retrieve wallet information about a given wallet identified by
    its wallet ID
    """

    wallet_id: str = betterproto.string_field(1)
    """Wallet ID of the wallet to retrieve"""


@dataclass(eq=False, repr=False)
class GetWalletInfoResponse(betterproto.Message):
    """Response to `GetWalletInfoRequest`"""

    wallet: "__provider_v1__.WalletConfiguration" = betterproto.message_field(1)
    """Wallet configuration"""


@dataclass(eq=False, repr=False)
class GetMyInfoRequest(betterproto.Message):
    """
    Request to retrieve wallet information about the currently authenticated
    wallet
    """

    pass


@dataclass(eq=False, repr=False)
class GetMyInfoResponse(betterproto.Message):
    """Response to `GetMyInfoRequest`"""

    wallet: "__provider_v1__.WalletConfiguration" = betterproto.message_field(1)
    """Wallet configuration"""


@dataclass(eq=False, repr=False)
class RevokeAuthTokenRequest(betterproto.Message):
    """Request to revoke a previously issued auth token"""

    wallet_id: str = betterproto.string_field(1)
    """Wallet ID of the wallet to from which to revoke the token"""

    token_id: str = betterproto.string_field(2)
    """Token ID of the token to revoke"""


@dataclass(eq=False, repr=False)
class RevokeAuthTokenResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class ListWalletsRequest(betterproto.Message):
    filter: str = betterproto.string_field(1)


@dataclass(eq=False, repr=False)
class ListWalletsResponse(betterproto.Message):
    wallets: List["__provider_v1__.WalletConfiguration"] = betterproto.message_field(1)


@dataclass(eq=False, repr=False)
class AddExternalIdentityInitRequest(betterproto.Message):
    identity: str = betterproto.string_field(1)
    """
    The user identity to add to the wallet This can be an email address or
    phone number (formatted as +[country code][phone number])
    """

    provider: "__provider_v1__.IdentityProvider" = betterproto.enum_field(2)
    """The type of identity provider, like EMAIL or PHONE"""


@dataclass(eq=False, repr=False)
class AddExternalIdentityInitResponse(betterproto.Message):
    challenge: str = betterproto.string_field(1)
    """
    Challenge or reference to the challenge to be used in the
    `AddExternalIdentityConfirm` endpoint
    """


@dataclass(eq=False, repr=False)
class AddExternalIdentityConfirmRequest(betterproto.Message):
    challenge: str = betterproto.string_field(1)
    """The challenge received from the `AddExternalIdentityInit` endpoint"""

    response: str = betterproto.string_field(2)
    """
    The response to the challenge. If using Email or Phone, this is the OTP
    code sent to the user's email or phone
    """


@dataclass(eq=False, repr=False)
class AddExternalIdentityConfirmResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class RemoveExternalIdentityRequest(betterproto.Message):
    identity: str = betterproto.string_field(1)
    """
    The user identity to remove from the wallet This can be an email address or
    phone number (formatted as +[country code][phone number])
    """


@dataclass(eq=False, repr=False)
class RemoveExternalIdentityResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class AuthenticateInitRequest(betterproto.Message):
    identity: str = betterproto.string_field(1)
    """Identity to add to the wallet"""

    provider: "__provider_v1__.IdentityProvider" = betterproto.enum_field(2)
    """Identity provider"""

    ecosystem_id: str = betterproto.string_field(3)
    """Ecosystem ID to which the wallet belongs"""


@dataclass(eq=False, repr=False)
class AuthenticateInitResponse(betterproto.Message):
    challenge: str = betterproto.string_field(1)
    """
    The challenge received from the `AcquireAuthTokenInit` endpoint Pass this
    challenge back to the `AcquireAuthTokenConfirm` endpoint
    """


@dataclass(eq=False, repr=False)
class AuthenticateResendCodeRequest(betterproto.Message):
    challenge: str = betterproto.string_field(1)
    """Challenge for the code you want resent."""


@dataclass(eq=False, repr=False)
class AuthenticateResendCodeResponse(betterproto.Message):
    pass


@dataclass(eq=False, repr=False)
class AuthenticateConfirmRequest(betterproto.Message):
    challenge: str = betterproto.string_field(1)
    """The challenge received from the `AcquireAuthTokenInit` endpoint"""

    response: str = betterproto.string_field(2)
    """
    The response to the challenge. If using Email or Phone, this is the OTP
    code sent to the user's email or phone
    """


@dataclass(eq=False, repr=False)
class AuthenticateConfirmResponse(betterproto.Message):
    auth_token: str = betterproto.string_field(1)
    """Auth token for the wallet"""


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

    async def delete_wallet(
        self,
        delete_wallet_request: "DeleteWalletRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "DeleteWalletResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/DeleteWallet",
            delete_wallet_request,
            DeleteWalletResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def create_wallet(
        self,
        create_wallet_request: "CreateWalletRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "CreateWalletResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/CreateWallet",
            create_wallet_request,
            CreateWalletResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def get_wallet_info(
        self,
        get_wallet_info_request: "GetWalletInfoRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GetWalletInfoResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/GetWalletInfo",
            get_wallet_info_request,
            GetWalletInfoResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def get_my_info(
        self,
        get_my_info_request: "GetMyInfoRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GetMyInfoResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/GetMyInfo",
            get_my_info_request,
            GetMyInfoResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def generate_auth_token(
        self,
        generate_auth_token_request: "GenerateAuthTokenRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "GenerateAuthTokenResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/GenerateAuthToken",
            generate_auth_token_request,
            GenerateAuthTokenResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def revoke_auth_token(
        self,
        revoke_auth_token_request: "RevokeAuthTokenRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "RevokeAuthTokenResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/RevokeAuthToken",
            revoke_auth_token_request,
            RevokeAuthTokenResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def add_external_identity_init(
        self,
        add_external_identity_init_request: "AddExternalIdentityInitRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "AddExternalIdentityInitResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit",
            add_external_identity_init_request,
            AddExternalIdentityInitResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def add_external_identity_confirm(
        self,
        add_external_identity_confirm_request: "AddExternalIdentityConfirmRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "AddExternalIdentityConfirmResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm",
            add_external_identity_confirm_request,
            AddExternalIdentityConfirmResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def remove_external_identity(
        self,
        remove_external_identity_request: "RemoveExternalIdentityRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "RemoveExternalIdentityResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity",
            remove_external_identity_request,
            RemoveExternalIdentityResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def authenticate_init(
        self,
        authenticate_init_request: "AuthenticateInitRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "AuthenticateInitResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/AuthenticateInit",
            authenticate_init_request,
            AuthenticateInitResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def authenticate_confirm(
        self,
        authenticate_confirm_request: "AuthenticateConfirmRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "AuthenticateConfirmResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm",
            authenticate_confirm_request,
            AuthenticateConfirmResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def authenticate_resend_code(
        self,
        authenticate_resend_code_request: "AuthenticateResendCodeRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "AuthenticateResendCodeResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode",
            authenticate_resend_code_request,
            AuthenticateResendCodeResponse,
            timeout=timeout,
            deadline=deadline,
            metadata=metadata,
        )

    async def list_wallets(
        self,
        list_wallets_request: "ListWalletsRequest",
        timeout: Optional[float] = None,
        deadline: Optional["Deadline"] = None,
        metadata: Optional["_MetadataLike"] = None,
    ) -> "ListWalletsResponse":
        return await self._unary_unary(
            "/services.universalwallet.v1.UniversalWallet/ListWallets",
            list_wallets_request,
            ListWalletsResponse,
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

    async def delete_wallet(
        self, delete_wallet_request: "DeleteWalletRequest"
    ) -> "DeleteWalletResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def create_wallet(
        self, create_wallet_request: "CreateWalletRequest"
    ) -> "CreateWalletResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_wallet_info(
        self, get_wallet_info_request: "GetWalletInfoRequest"
    ) -> "GetWalletInfoResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def get_my_info(
        self, get_my_info_request: "GetMyInfoRequest"
    ) -> "GetMyInfoResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def generate_auth_token(
        self, generate_auth_token_request: "GenerateAuthTokenRequest"
    ) -> "GenerateAuthTokenResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def revoke_auth_token(
        self, revoke_auth_token_request: "RevokeAuthTokenRequest"
    ) -> "RevokeAuthTokenResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def add_external_identity_init(
        self, add_external_identity_init_request: "AddExternalIdentityInitRequest"
    ) -> "AddExternalIdentityInitResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def add_external_identity_confirm(
        self, add_external_identity_confirm_request: "AddExternalIdentityConfirmRequest"
    ) -> "AddExternalIdentityConfirmResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def remove_external_identity(
        self, remove_external_identity_request: "RemoveExternalIdentityRequest"
    ) -> "RemoveExternalIdentityResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def authenticate_init(
        self, authenticate_init_request: "AuthenticateInitRequest"
    ) -> "AuthenticateInitResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def authenticate_confirm(
        self, authenticate_confirm_request: "AuthenticateConfirmRequest"
    ) -> "AuthenticateConfirmResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def authenticate_resend_code(
        self, authenticate_resend_code_request: "AuthenticateResendCodeRequest"
    ) -> "AuthenticateResendCodeResponse":
        raise grpclib.GRPCError(grpclib.const.Status.UNIMPLEMENTED)

    async def list_wallets(
        self, list_wallets_request: "ListWalletsRequest"
    ) -> "ListWalletsResponse":
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

    async def __rpc_delete_wallet(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.delete_wallet(request)
        await stream.send_message(response)

    async def __rpc_create_wallet(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.create_wallet(request)
        await stream.send_message(response)

    async def __rpc_get_wallet_info(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_wallet_info(request)
        await stream.send_message(response)

    async def __rpc_get_my_info(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.get_my_info(request)
        await stream.send_message(response)

    async def __rpc_generate_auth_token(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.generate_auth_token(request)
        await stream.send_message(response)

    async def __rpc_revoke_auth_token(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.revoke_auth_token(request)
        await stream.send_message(response)

    async def __rpc_add_external_identity_init(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.add_external_identity_init(request)
        await stream.send_message(response)

    async def __rpc_add_external_identity_confirm(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.add_external_identity_confirm(request)
        await stream.send_message(response)

    async def __rpc_remove_external_identity(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.remove_external_identity(request)
        await stream.send_message(response)

    async def __rpc_authenticate_init(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.authenticate_init(request)
        await stream.send_message(response)

    async def __rpc_authenticate_confirm(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.authenticate_confirm(request)
        await stream.send_message(response)

    async def __rpc_authenticate_resend_code(
        self, stream: grpclib.server.Stream
    ) -> None:
        request = await stream.recv_message()
        response = await self.authenticate_resend_code(request)
        await stream.send_message(response)

    async def __rpc_list_wallets(self, stream: grpclib.server.Stream) -> None:
        request = await stream.recv_message()
        response = await self.list_wallets(request)
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
            "/services.universalwallet.v1.UniversalWallet/DeleteWallet": grpclib.const.Handler(
                self.__rpc_delete_wallet,
                grpclib.const.Cardinality.UNARY_UNARY,
                DeleteWalletRequest,
                DeleteWalletResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/CreateWallet": grpclib.const.Handler(
                self.__rpc_create_wallet,
                grpclib.const.Cardinality.UNARY_UNARY,
                CreateWalletRequest,
                CreateWalletResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/GetWalletInfo": grpclib.const.Handler(
                self.__rpc_get_wallet_info,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetWalletInfoRequest,
                GetWalletInfoResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/GetMyInfo": grpclib.const.Handler(
                self.__rpc_get_my_info,
                grpclib.const.Cardinality.UNARY_UNARY,
                GetMyInfoRequest,
                GetMyInfoResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/GenerateAuthToken": grpclib.const.Handler(
                self.__rpc_generate_auth_token,
                grpclib.const.Cardinality.UNARY_UNARY,
                GenerateAuthTokenRequest,
                GenerateAuthTokenResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/RevokeAuthToken": grpclib.const.Handler(
                self.__rpc_revoke_auth_token,
                grpclib.const.Cardinality.UNARY_UNARY,
                RevokeAuthTokenRequest,
                RevokeAuthTokenResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit": grpclib.const.Handler(
                self.__rpc_add_external_identity_init,
                grpclib.const.Cardinality.UNARY_UNARY,
                AddExternalIdentityInitRequest,
                AddExternalIdentityInitResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm": grpclib.const.Handler(
                self.__rpc_add_external_identity_confirm,
                grpclib.const.Cardinality.UNARY_UNARY,
                AddExternalIdentityConfirmRequest,
                AddExternalIdentityConfirmResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity": grpclib.const.Handler(
                self.__rpc_remove_external_identity,
                grpclib.const.Cardinality.UNARY_UNARY,
                RemoveExternalIdentityRequest,
                RemoveExternalIdentityResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/AuthenticateInit": grpclib.const.Handler(
                self.__rpc_authenticate_init,
                grpclib.const.Cardinality.UNARY_UNARY,
                AuthenticateInitRequest,
                AuthenticateInitResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm": grpclib.const.Handler(
                self.__rpc_authenticate_confirm,
                grpclib.const.Cardinality.UNARY_UNARY,
                AuthenticateConfirmRequest,
                AuthenticateConfirmResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode": grpclib.const.Handler(
                self.__rpc_authenticate_resend_code,
                grpclib.const.Cardinality.UNARY_UNARY,
                AuthenticateResendCodeRequest,
                AuthenticateResendCodeResponse,
            ),
            "/services.universalwallet.v1.UniversalWallet/ListWallets": grpclib.const.Handler(
                self.__rpc_list_wallets,
                grpclib.const.Cardinality.UNARY_UNARY,
                ListWalletsRequest,
                ListWalletsResponse,
            ),
        }
