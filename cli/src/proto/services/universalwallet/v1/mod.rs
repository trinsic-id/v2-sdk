/// Request to search items in wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    /// SQL Query to execute against items in wallet
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    /// Token provided by previous `SearchResponse`
    /// if more data is available for query
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `SearchRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchResponse {
    /// Array of query results, as JSON strings
    #[prost(string, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    /// Token to fetch next set of results via `SearchRequest`
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Request to fetch an item from wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetItemRequest {
    /// ID of item in wallet
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Response to `GetItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetItemResponse {
    /// Item data as a JSON string
    #[prost(string, tag = "1")]
    pub item_json: ::prost::alloc::string::String,
    /// Type of item specified when item was inserted into wallet
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Request to update item in wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemRequest {
    /// ID of item in wallet
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
    /// Item type (ex. "VerifiableCredential")
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Response to `UpdateItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemResponse {}
/// Request to insert a JSON document into a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    /// Document to insert; must be stringified JSON
    #[prost(string, tag = "1")]
    pub item_json: ::prost::alloc::string::String,
    /// Item type (ex. "VerifiableCredential")
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Response to `InsertItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    /// ID of item inserted into wallet
    #[prost(string, tag = "2")]
    pub item_id: ::prost::alloc::string::String,
}
/// Request to delete an item in a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemRequest {
    /// ID of item to delete
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Response to `DeleteItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemResponse {}
/// Request to delete a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWalletRequest {
    #[prost(oneof = "delete_wallet_request::Account", tags = "1, 2, 4")]
    pub account: ::core::option::Option<delete_wallet_request::Account>,
}
/// Nested message and enum types in `DeleteWalletRequest`.
pub mod delete_wallet_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account to delete.
        /// Mutually exclusive with `walletId` and `didUri`.
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account to delete.
        /// Mutually exclusive with `email` and `didUri`.
        #[prost(string, tag = "2")]
        WalletId(::prost::alloc::string::String),
        /// DID URI of the account to delete.
        /// Mutually exclusive with `email` and `walletId`.
        #[prost(string, tag = "4")]
        DidUri(::prost::alloc::string::String),
    }
}
/// Response to `DeleteWalletRequest`. Empty payload.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWalletResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletRequest {
    /// Ecosystem ID of the wallet to create
    #[prost(string, tag = "1")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// Wallet name or description.
    /// Use this field to add vendor specific information about this wallet,
    /// such as email, phone, internal ID, or anything you'd like to associate
    /// with this wallet. This field is searchable.
    #[prost(string, optional, tag = "2")]
    pub description: ::core::option::Option<::prost::alloc::string::String>,
    /// Optional identity to add to the wallet (email or sms).
    /// Use this field when inviting participants into an ecosystem.
    /// If this field is set, an auth token will not be sent in the response.
    #[prost(message, optional, tag = "3")]
    pub identity: ::core::option::Option<create_wallet_request::ExternalIdentity>,
}
/// Nested message and enum types in `CreateWalletRequest`.
pub mod create_wallet_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct ExternalIdentity {
        /// The user identity to add to the wallet
        /// This can be an email address or phone number (formatted as +[country code][phone number])
        #[prost(string, tag = "1")]
        pub identity: ::prost::alloc::string::String,
        /// The type of identity provider, like EMAIL or PHONE
        #[prost(
            enumeration = "super::super::super::provider::v1::IdentityProvider",
            tag = "2"
        )]
        pub provider: i32,
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletResponse {
    /// Auth token for the newly created wallet
    #[prost(string, tag = "2")]
    pub auth_token: ::prost::alloc::string::String,
    /// Token ID of the newly generated token
    #[prost(string, tag = "3")]
    pub token_id: ::prost::alloc::string::String,
    /// Wallet configuration
    #[prost(message, optional, tag = "4")]
    pub wallet: ::core::option::Option<super::super::provider::v1::WalletConfiguration>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GenerateAuthTokenRequest {
    #[prost(string, tag = "1")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub token_description: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GenerateAuthTokenResponse {
    #[prost(string, tag = "1")]
    pub token_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub auth_token: ::prost::alloc::string::String,
}
/// Request to retrieve wallet information about a given wallet identified by its wallet ID
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetWalletInfoRequest {
    /// Wallet ID of the wallet to retrieve
    #[prost(string, tag = "1")]
    pub wallet_id: ::prost::alloc::string::String,
}
/// Response to `GetWalletInfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetWalletInfoResponse {
    /// Wallet configuration
    #[prost(message, optional, tag = "1")]
    pub wallet: ::core::option::Option<super::super::provider::v1::WalletConfiguration>,
}
/// Request to retrieve wallet information about the currently authenticated wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMyInfoRequest {}
/// Response to `GetMyInfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMyInfoResponse {
    /// Wallet configuration
    #[prost(message, optional, tag = "1")]
    pub wallet: ::core::option::Option<super::super::provider::v1::WalletConfiguration>,
}
/// Request to revoke a previously issued auth token
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeAuthTokenRequest {
    /// Wallet ID of the wallet to from which to revoke the token
    #[prost(string, tag = "1")]
    pub wallet_id: ::prost::alloc::string::String,
    /// Token ID of the token to revoke
    #[prost(string, tag = "2")]
    pub token_id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeAuthTokenResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListWalletsRequest {
    #[prost(string, tag = "1")]
    pub filter: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListWalletsResponse {
    #[prost(message, repeated, tag = "1")]
    pub wallets: ::prost::alloc::vec::Vec<
        super::super::provider::v1::WalletConfiguration,
    >,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddExternalIdentityInitRequest {
    /// The user identity to add to the wallet
    /// This can be an email address or phone number (formatted as +[country code][phone number])
    #[prost(string, tag = "1")]
    pub identity: ::prost::alloc::string::String,
    /// The type of identity provider, like EMAIL or PHONE
    #[prost(enumeration = "super::super::provider::v1::IdentityProvider", tag = "2")]
    pub provider: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddExternalIdentityInitResponse {
    /// Challenge or reference to the challenge to be used in the `AddExternalIdentityConfirm` endpoint
    #[prost(string, tag = "1")]
    pub challenge: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddExternalIdentityConfirmRequest {
    /// The challenge received from the `AddExternalIdentityInit` endpoint
    #[prost(string, tag = "1")]
    pub challenge: ::prost::alloc::string::String,
    /// The response to the challenge. If using Email or Phone,
    /// this is the OTP code sent to the user's email or phone
    #[prost(string, tag = "2")]
    pub response: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddExternalIdentityConfirmResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveExternalIdentityRequest {
    /// The user identity to remove from the wallet
    /// This can be an email address or phone number (formatted as +[country code][phone number])
    #[prost(string, tag = "1")]
    pub identity: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RemoveExternalIdentityResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateInitRequest {
    /// Identity to add to the wallet
    #[prost(string, tag = "1")]
    pub identity: ::prost::alloc::string::String,
    /// Identity provider
    #[prost(enumeration = "super::super::provider::v1::IdentityProvider", tag = "2")]
    pub provider: i32,
    /// Ecosystem ID to which the wallet belongs
    #[prost(string, tag = "3")]
    pub ecosystem_id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateInitResponse {
    /// The challenge received from the `AcquireAuthTokenInit` endpoint
    /// Pass this challenge back to the `AcquireAuthTokenConfirm` endpoint
    #[prost(string, tag = "1")]
    pub challenge: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateResendCodeRequest {
    /// Challenge for the code you want resent.
    #[prost(string, tag = "1")]
    pub challenge: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateResendCodeResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateConfirmRequest {
    /// The challenge received from the `AcquireAuthTokenInit` endpoint
    #[prost(string, tag = "1")]
    pub challenge: ::prost::alloc::string::String,
    /// The response to the challenge. If using Email or Phone,
    /// this is the OTP code sent to the user's email or phone
    #[prost(string, tag = "2")]
    pub response: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthenticateConfirmResponse {
    /// Auth token for the wallet
    #[prost(string, tag = "1")]
    pub auth_token: ::prost::alloc::string::String,
}
/// Request to list templates by
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListByVerificationTemplateRequest {
    /// ID of verification template to list matching credentials
    #[prost(string, tag = "1")]
    pub verification_template_id: ::prost::alloc::string::String,
    /// Token provided by previous `ListCredentialTemplatesResponse`
    /// if more data is available for query
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `ListByVerificationTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListByVerificationTemplateResponse {
    /// Array of query results, as JSON strings
    #[prost(string, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    /// Token to fetch next set of results via `ListByVerificationTemplateRequest`
    #[prost(string, tag = "3")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Generated client implementations.
pub mod universal_wallet_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    /// Service for managing wallets
    #[derive(Debug, Clone)]
    pub struct UniversalWalletClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl UniversalWalletClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: std::convert::TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> UniversalWalletClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> UniversalWalletClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            UniversalWalletClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Retrieve an item from the wallet with a given item identifier
        pub async fn get_item(
            &mut self,
            request: impl tonic::IntoRequest<super::GetItemRequest>,
        ) -> Result<tonic::Response<super::GetItemResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/GetItem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Search the wallet using a SQL syntax
        pub async fn search(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchRequest>,
        ) -> Result<tonic::Response<super::SearchResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/Search",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Insert an item into the wallet
        pub async fn insert_item(
            &mut self,
            request: impl tonic::IntoRequest<super::InsertItemRequest>,
        ) -> Result<tonic::Response<super::InsertItemResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/InsertItem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Update an item in the wallet
        pub async fn update_item(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateItemRequest>,
        ) -> Result<tonic::Response<super::UpdateItemResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/UpdateItem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Delete an item from the wallet permanently
        pub async fn delete_item(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteItemRequest>,
        ) -> Result<tonic::Response<super::DeleteItemResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/DeleteItem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Delete a wallet and its credentials
        pub async fn delete_wallet(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteWalletRequest>,
        ) -> Result<tonic::Response<super::DeleteWalletResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/DeleteWallet",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Create a new wallet and generate an auth token for access
        pub async fn create_wallet(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateWalletRequest>,
        ) -> Result<tonic::Response<super::CreateWalletResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/CreateWallet",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Retrieve wallet details and configuration
        pub async fn get_wallet_info(
            &mut self,
            request: impl tonic::IntoRequest<super::GetWalletInfoRequest>,
        ) -> Result<tonic::Response<super::GetWalletInfoResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/GetWalletInfo",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Retrieve wallet details and configuration about the currently authenticated wallet
        pub async fn get_my_info(
            &mut self,
            request: impl tonic::IntoRequest<super::GetMyInfoRequest>,
        ) -> Result<tonic::Response<super::GetMyInfoResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/GetMyInfo",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Generate new token for a given wallet and add it to the collection of known auth tokens.
        /// This endpoint requires authentication and will return a new token ID and auth token.
        /// Use this endpoint if you want to authorize another device, without having to share your
        /// existing auth token.
        pub async fn generate_auth_token(
            &mut self,
            request: impl tonic::IntoRequest<super::GenerateAuthTokenRequest>,
        ) -> Result<tonic::Response<super::GenerateAuthTokenResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/GenerateAuthToken",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Revokes a previously issued auth token and updates the collection of known auth tokens.
        /// This endpoint requires authentication.
        pub async fn revoke_auth_token(
            &mut self,
            request: impl tonic::IntoRequest<super::RevokeAuthTokenRequest>,
        ) -> Result<tonic::Response<super::RevokeAuthTokenResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/RevokeAuthToken",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
        /// This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
        pub async fn add_external_identity_init(
            &mut self,
            request: impl tonic::IntoRequest<super::AddExternalIdentityInitRequest>,
        ) -> Result<
            tonic::Response<super::AddExternalIdentityInitResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Confirm identity added to the current wallet using `AddExternalIdentityInit`
        pub async fn add_external_identity_confirm(
            &mut self,
            request: impl tonic::IntoRequest<super::AddExternalIdentityConfirmRequest>,
        ) -> Result<
            tonic::Response<super::AddExternalIdentityConfirmResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Remove an external identity from the current wallet
        pub async fn remove_external_identity(
            &mut self,
            request: impl tonic::IntoRequest<super::RemoveExternalIdentityRequest>,
        ) -> Result<
            tonic::Response<super::RemoveExternalIdentityResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Sign-in to an already existing wallet, using an identity added that was previously registered
        /// This endpoint does not require authentication, and will return a challenge to be signed or verified
        pub async fn authenticate_init(
            &mut self,
            request: impl tonic::IntoRequest<super::AuthenticateInitRequest>,
        ) -> Result<tonic::Response<super::AuthenticateInitResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/AuthenticateInit",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Confirm sign-in to an already existing wallet and return authentication token
        pub async fn authenticate_confirm(
            &mut self,
            request: impl tonic::IntoRequest<super::AuthenticateConfirmRequest>,
        ) -> Result<tonic::Response<super::AuthenticateConfirmResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Resend previous authentication code
        pub async fn authenticate_resend_code(
            &mut self,
            request: impl tonic::IntoRequest<super::AuthenticateResendCodeRequest>,
        ) -> Result<
            tonic::Response<super::AuthenticateResendCodeResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// List all wallets in the ecosystem
        pub async fn list_wallets(
            &mut self,
            request: impl tonic::IntoRequest<super::ListWalletsRequest>,
        ) -> Result<tonic::Response<super::ListWalletsResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/ListWallets",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// List credentials which match a given verification template
        pub async fn list_by_verification_template(
            &mut self,
            request: impl tonic::IntoRequest<super::ListByVerificationTemplateRequest>,
        ) -> Result<
            tonic::Response<super::ListByVerificationTemplateResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.UniversalWallet/ListByVerificationTemplate",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
