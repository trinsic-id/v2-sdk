#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestOptions {
    #[prost(enumeration = "JsonFormat", tag = "1")]
    pub response_json_format: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct JsonPayload {
    #[prost(oneof = "json_payload::Json", tags = "1, 2, 3")]
    pub json: ::core::option::Option<json_payload::Json>,
}
/// Nested message and enum types in `JsonPayload`.
pub mod json_payload {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Json {
        #[prost(message, tag = "1")]
        JsonStruct(super::super::super::super::google::protobuf::Struct),
        #[prost(string, tag = "2")]
        JsonString(::prost::alloc::string::String),
        #[prost(bytes, tag = "3")]
        JsonBytes(::prost::alloc::vec::Vec<u8>),
    }
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ResponseStatus {
    Success = 0,
    WalletAccessDenied = 10,
    WalletExists = 11,
    ItemNotFound = 20,
    SerializationError = 200,
    UnknownError = 100,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum JsonFormat {
    Protobuf = 0,
    Binary = 1,
    String = 2,
}
#[doc = r" Generated client implementations."]
pub mod common_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct CommonClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CommonClient<tonic::transport::Channel> {
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
    impl<T> CommonClient<T>
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
        ) -> CommonClient<InterceptedService<T, F>>
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
            CommonClient::new(InterceptedService::new(inner, interceptor))
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
        pub async fn request(
            &mut self,
            request: impl tonic::IntoRequest<super::super::super::super::pbmse::v1::EncryptedMessage>,
        ) -> Result<
            tonic::Response<super::super::super::super::pbmse::v1::EncryptedMessage>,
            tonic::Status,
        > {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.common.v1.Common/Request");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
