// Search

/// Search request object
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "5")]
    pub options: ::core::option::Option<super::super::common::v1::RequestOptions>,
}
/// Search response object
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchResponse {
    #[prost(message, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<super::super::common::v1::JsonPayload>,
    #[prost(bool, tag = "2")]
    pub has_more: bool,
    #[prost(int32, tag = "3")]
    pub count: i32,
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
// InsertItem

/// Insert item request
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    #[prost(message, optional, tag = "1")]
    pub item: ::core::option::Option<super::super::common::v1::JsonPayload>,
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
/// Insert item response
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
    /// The item identifier of the inserted record
    #[prost(string, tag = "2")]
    pub item_id: ::prost::alloc::string::String,
}
/// Delete item request
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemRequest {}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteItemResponse {}
#[doc = r" Generated client implementations."]
pub mod wallet_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct WalletServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl WalletServiceClient<tonic::transport::Channel> {
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
    impl<T> WalletServiceClient<T>
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
        ) -> WalletServiceClient<InterceptedService<T, F>>
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
            WalletServiceClient::new(InterceptedService::new(inner, interceptor))
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
                "/services.universalwallet.v1.WalletService/Search",
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
                "/services.universalwallet.v1.WalletService/InsertItem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Delete an item from the wallet permanently"]
        pub async fn deleteitem(
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
                "/services.universalwallet.v1.WalletService/Deleteitem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
