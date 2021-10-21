#[doc = r" Generated client implementations."]
pub mod debugging_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
    pub struct DebuggingClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl DebuggingClient<tonic::transport::Channel> {
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
    impl<T> DebuggingClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::ResponseBody: Body + HttpBody + Send + 'static,
        T::Error: Into<StdError>,
        <T::ResponseBody as HttpBody>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_interceptor(inner: T, interceptor: impl Into<tonic::Interceptor>) -> Self {
            let inner = tonic::client::Grpc::with_interceptor(inner, interceptor);
            Self { inner }
        }
        pub async fn call_empty(
            &mut self,
            request: impl tonic::IntoRequest<super::super::super::google::protobuf::Empty>,
        ) -> Result<tonic::Response<super::super::super::google::protobuf::Empty>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/services.debug.v1.Debugging/CallEmpty");
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn call_empty_auth(
            &mut self,
            request: impl tonic::IntoRequest<super::super::super::google::protobuf::Empty>,
        ) -> Result<tonic::Response<super::super::super::google::protobuf::Empty>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/services.debug.v1.Debugging/CallEmptyAuth");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for DebuggingClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for DebuggingClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "DebuggingClient {{ ... }}")
        }
    }
}
