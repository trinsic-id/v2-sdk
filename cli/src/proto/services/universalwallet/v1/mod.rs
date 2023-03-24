// Search

/// Request to search items in wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    /// SQL Query to execute against items in wallet
    #[prost(string, tag="1")]
    pub query: ::prost::alloc::string::String,
    /// Token provided by previous `SearchResponse`
    /// if more data is available for query
    #[prost(string, tag="2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `SearchRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchResponse {
    /// Array of query results, as JSON strings
    #[prost(string, repeated, tag="1")]
    pub items: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag="2")]
    pub has_more: bool,
    /// Token to fetch next set of results via `SearchRequest`
    #[prost(string, tag="4")]
    pub continuation_token: ::prost::alloc::string::String,
}
// Get Item

/// Request to fetch an item from wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetItemRequest {
    /// ID of item in wallet
    #[prost(string, tag="1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Response to `GetItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetItemResponse {
    /// Item data as a JSON string
    #[prost(string, tag="1")]
    pub item_json: ::prost::alloc::string::String,
    /// Type of item specified when item was inserted into wallet
    #[prost(string, tag="2")]
    pub item_type: ::prost::alloc::string::String,
}
// Update Item

/// Request to update item in wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemRequest {
    /// ID of item in wallet
    #[prost(string, tag="1")]
    pub item_id: ::prost::alloc::string::String,
    /// Item type (ex. "VerifiableCredential")
    #[prost(string, tag="2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Response to `UpdateItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemResponse {
}
// InsertItem

/// Request to insert a JSON document into a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    /// Document to insert; must be stringified JSON
    #[prost(string, tag="1")]
    pub item_json: ::prost::alloc::string::String,
    /// Item type (ex. "VerifiableCredential")
    #[prost(string, tag="2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Response to `InsertItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    /// ID of item inserted into wallet
    #[prost(string, tag="2")]
    pub item_id: ::prost::alloc::string::String,
}
/// Request to delete an item in a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemRequest {
    /// ID of item to delete
    #[prost(string, tag="1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Response to `DeleteItemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemResponse {
}
/// Request to delete a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWalletRequest {
    #[prost(oneof="delete_wallet_request::Account", tags="1, 2, 4")]
    pub account: ::core::option::Option<delete_wallet_request::Account>,
}
/// Nested message and enum types in `DeleteWalletRequest`.
pub mod delete_wallet_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account to delete.
        /// Mutually exclusive with `walletId` and `didUri`.
        #[prost(string, tag="1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account to delete.
        /// Mutually exclusive with `email` and `didUri`.
        #[prost(string, tag="2")]
        WalletId(::prost::alloc::string::String),
        /// DID URI of the account to delete.
        /// Mutually exclusive with `email` and `walletId`.
        #[prost(string, tag="4")]
        DidUri(::prost::alloc::string::String),
    }
}
/// Response to `DeleteWalletRequest`. Empty payload.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWalletResponse {
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
    }
}
