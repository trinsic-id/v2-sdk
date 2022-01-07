#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueRequest {
    #[prost(message, optional, tag = "1")]
    pub document: ::core::option::Option<super::super::common::v1::JsonPayload>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueResponse {
    #[prost(message, optional, tag = "1")]
    pub document: ::core::option::Option<super::super::common::v1::JsonPayload>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateRequest {
    #[prost(string, tag = "1")]
    pub template_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub values_json: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateResponse {
    #[prost(string, tag = "1")]
    pub document_json: ::prost::alloc::string::String,
}
/// Create Proof
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofRequest {
    #[prost(message, optional, tag = "1")]
    pub reveal_document: ::core::option::Option<super::super::common::v1::JsonPayload>,
    #[prost(string, tag = "2")]
    pub document_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofResponse {
    #[prost(message, optional, tag = "1")]
    pub proof_document: ::core::option::Option<super::super::common::v1::JsonPayload>,
}
/// Verify Proof
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofRequest {
    #[prost(message, optional, tag = "1")]
    pub proof_document: ::core::option::Option<super::super::common::v1::JsonPayload>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofResponse {
    #[prost(bool, tag = "1")]
    pub valid: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendRequest {
    #[prost(message, optional, tag = "100")]
    pub document: ::core::option::Option<super::super::common::v1::JsonPayload>,
    #[prost(oneof = "send_request::DeliveryMethod", tags = "1, 2, 3")]
    pub delivery_method: ::core::option::Option<send_request::DeliveryMethod>,
}
/// Nested message and enum types in `SendRequest`.
pub mod send_request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum DeliveryMethod {
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        DidUri(::prost::alloc::string::String),
        #[prost(message, tag = "3")]
        DidcommInvitation(super::super::super::common::v1::JsonPayload),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendResponse {
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
}
/// request object to update the status of the revocation entry
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusRequest {
    /// the credential status id
    #[prost(string, tag = "1")]
    pub credential_status_id: ::prost::alloc::string::String,
    /// indicates if the status is revoked
    #[prost(bool, tag = "2")]
    pub revoked: bool,
}
/// response object for update of status of revocation entry
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusResponse {
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
}
/// request object to update the status of the revocation entry
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CheckStatusRequest {
    /// the credential status id
    #[prost(string, tag = "1")]
    pub credential_status_id: ::prost::alloc::string::String,
}
/// response object for update of status of revocation entry
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CheckStatusResponse {
    /// indicates if the status is revoked
    #[prost(bool, tag = "1")]
    pub revoked: bool,
}
#[doc = r" Generated client implementations."]
pub mod verifiable_credential_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct VerifiableCredentialClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl VerifiableCredentialClient<tonic::transport::Channel> {
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
    impl<T> VerifiableCredentialClient<T>
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
        ) -> VerifiableCredentialClient<InterceptedService<T, F>>
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
            VerifiableCredentialClient::new(InterceptedService::new(inner, interceptor))
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
        pub async fn issue(
            &mut self,
            request: impl tonic::IntoRequest<super::IssueRequest>,
        ) -> Result<tonic::Response<super::IssueResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/Issue",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn issue_from_template(
            &mut self,
            request: impl tonic::IntoRequest<super::IssueFromTemplateRequest>,
        ) -> Result<tonic::Response<super::IssueFromTemplateResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Check credential status by setting the revocation value"]
        pub async fn check_status(
            &mut self,
            request: impl tonic::IntoRequest<super::CheckStatusRequest>,
        ) -> Result<tonic::Response<super::CheckStatusResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Update credential status by setting the revocation value"]
        pub async fn update_status(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateStatusRequest>,
        ) -> Result<tonic::Response<super::UpdateStatusResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn create_proof(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateProofRequest>,
        ) -> Result<tonic::Response<super::CreateProofResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn verify_proof(
            &mut self,
            request: impl tonic::IntoRequest<super::VerifyProofRequest>,
        ) -> Result<tonic::Response<super::VerifyProofResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn send(
            &mut self,
            request: impl tonic::IntoRequest<super::SendRequest>,
        ) -> Result<tonic::Response<super::SendResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.v1.VerifiableCredential/Send",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
