// Search

/// Search request object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Search response object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchResponse {
    #[prost(string, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(bool, tag = "2")]
    pub has_more: bool,
    /// int32 count = 3;
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
// Get Item

/// Get item request object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetItemRequest {
    /// The item identifier
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Get item response object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetItemResponse {
    /// The item data represented as stringified JSON
    #[prost(string, tag = "1")]
    pub item_json: ::prost::alloc::string::String,
    /// User set item type that described the content of this item
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
// Update Item

/// Update item request object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemRequest {
    /// The item identifier
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
    /// The item type that described the content of this item
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Update item response object
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateItemResponse {}
// InsertItem

/// Insert item request
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    /// the document to insert as stringified json
    #[prost(string, tag = "1")]
    pub item_json: ::prost::alloc::string::String,
    /// optional item type ex. "VerifiableCredential"
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Insert item response
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    /// The item identifier of the inserted record
    #[prost(string, tag = "2")]
    pub item_id: ::prost::alloc::string::String,
}
/// Delete item request
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemRequest {
    /// item identifier of the record to delete
    #[prost(string, tag = "1")]
    pub item_id: ::prost::alloc::string::String,
}
/// Delete item response
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemResponse {}
#[doc = r" Generated client implementations."]
pub mod universal_wallet_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct UniversalWalletClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl UniversalWalletClient<tonic::transport::Channel> {
        #[doc = r" Attempt to create a new client by connecting to a given endpoint."]
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
        T::ResponseBody: Body + Send + 'static,
        T::Error: Into<StdError>,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> UniversalWalletClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<http::Request<tonic::body::BoxBody>>>::Error:
                Into<StdError> + Send + Sync,
        {
            UniversalWalletClient::new(InterceptedService::new(inner, interceptor))
        }
        #[doc = r" Compress requests with `gzip`."]
        #[doc = r""]
        #[doc = r" This requires the server to support it otherwise it might respond with an"]
        #[doc = r" error."]
        pub fn send_gzip(mut self) -> Self {
            self.inner = self.inner.send_gzip();
            self
        }
        #[doc = r" Enable decompressing responses with `gzip`."]
        pub fn accept_gzip(mut self) -> Self {
            self.inner = self.inner.accept_gzip();
            self
        }
        #[doc = " Retrieve an item from the wallet with a given item identifier"]
        pub async fn get_item(
            &mut self,
            request: impl tonic::IntoRequest<super::GetItemRequest>,
        ) -> Result<tonic::Response<super::GetItemResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
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
        #[doc = " Search the wallet using a SQL-like syntax"]
        pub async fn search(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchRequest>,
        ) -> Result<tonic::Response<super::SearchResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
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
        #[doc = " Insert an item into the wallet"]
        pub async fn insert_item(
            &mut self,
            request: impl tonic::IntoRequest<super::InsertItemRequest>,
        ) -> Result<tonic::Response<super::InsertItemResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
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
        #[doc = " Insert an item into the wallet"]
        pub async fn update_item(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateItemRequest>,
        ) -> Result<tonic::Response<super::UpdateItemResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
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
        #[doc = " Delete an item from the wallet permanently"]
        pub async fn delete_item(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteItemRequest>,
        ) -> Result<tonic::Response<super::DeleteItemResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
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
    }
}
