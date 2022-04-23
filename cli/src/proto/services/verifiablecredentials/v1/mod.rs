#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct IssueRequest {
    #[prost(string, tag = "1")]
    pub document_json: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct IssueResponse {
    #[prost(string, tag = "1")]
    pub signed_document_json: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateRequest {
    #[prost(string, tag = "1")]
    pub template_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub values_json: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateResponse {
    #[prost(string, tag = "1")]
    pub document_json: ::prost::alloc::string::String,
}
/// Create Proof
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateProofRequest {
    /// Optional document that describes which fields should be
    /// revealed in the generated proof. If specified, this document must be
    /// a valid JSON-LD frame.
    /// If this field is not specified, a default reveal document will be
    /// used and all fields in the signed document will be revealed
    #[prost(string, tag = "1")]
    pub reveal_document_json: ::prost::alloc::string::String,
    /// Specify the input to be used to derive this proof.
    /// Input can be an existing item in the wallet or an input document
    #[prost(oneof = "create_proof_request::Proof", tags = "2, 3")]
    pub proof: ::core::option::Option<create_proof_request::Proof>,
}
/// Nested message and enum types in `CreateProofRequest`.
pub mod create_proof_request {
    /// Specify the input to be used to derive this proof.
    /// Input can be an existing item in the wallet or an input document
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Proof {
        /// The item identifier that contains a record with a verifiable
        /// credential to be used for generating the proof.
        #[prost(string, tag = "2")]
        ItemId(::prost::alloc::string::String),
        /// A document that contains a valid verifiable credential with an
        /// unbound signature. The proof will be derived from this document
        /// directly. The document will not be stored in the wallet.
        #[prost(string, tag = "3")]
        DocumentJson(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateProofResponse {
    #[prost(string, tag = "1")]
    pub proof_document_json: ::prost::alloc::string::String,
}
/// Verify Proof
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofRequest {
    #[prost(string, tag = "1")]
    pub proof_document_json: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofResponse {
    /// Indicates if the proof is valid
    #[prost(bool, tag = "1")]
    pub is_valid: bool,
    #[deprecated]
    #[prost(string, repeated, tag = "2")]
    pub validation_messages: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Validation messages that describe invalid verifications
    /// based on different factors, such as schema validation,
    /// proof verification, revocation registry membership, etc.
    /// If the proof is not valid, this field will contain detailed
    /// results where this verification failed.
    #[prost(map = "string, message", tag = "3")]
    pub validation_results:
        ::std::collections::HashMap<::prost::alloc::string::String, ValidationMessage>,
}
/// validation message that contains results and error messages
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ValidationMessage {
    /// the validation result
    #[prost(bool, tag = "1")]
    pub is_valid: bool,
    /// set of messages that contain validation results
    #[prost(string, repeated, tag = "2")]
    pub messages: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SendRequest {
    #[prost(string, tag = "100")]
    pub document_json: ::prost::alloc::string::String,
    #[prost(oneof = "send_request::DeliveryMethod", tags = "1, 2, 3")]
    pub delivery_method: ::core::option::Option<send_request::DeliveryMethod>,
}
/// Nested message and enum types in `SendRequest`.
pub mod send_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum DeliveryMethod {
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "3")]
        DidcommInvitationJson(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SendResponse {}
/// request object to update the status of the revocation entry
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusRequest {
    /// the credential status id
    #[prost(string, tag = "1")]
    pub credential_status_id: ::prost::alloc::string::String,
    /// indicates if the status is revoked
    #[prost(bool, tag = "2")]
    pub revoked: bool,
}
/// response object for update of status of revocation entry
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusResponse {}
/// request object to check the status of the revocation entry
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CheckStatusRequest {
    /// the credential status id
    #[prost(string, tag = "1")]
    pub credential_status_id: ::prost::alloc::string::String,
}
/// response object for checking the status of revocation entry
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
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
        #[doc = " Sign and issue a verifiable credential from a submitted document."]
        #[doc = " The document must be a valid JSON-LD document."]
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
        #[doc = " Sign and issue a verifiable credential from a pre-defined template."]
        #[doc = " This process will also add schema validation and "]
        #[doc = " revocation registry entry in the credential."]
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
        #[doc = " Check credential status in the revocation registry"]
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
        #[doc = " Create a proof from a signed document that is a valid"]
        #[doc = " verifiable credential and contains a signature from which a proof can be derived."]
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
        #[doc = " Verifies a proof by checking the signature value, and if possible schema validation,"]
        #[doc = " revocation status, and issuer status against a trust registry"]
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
        #[doc = " Sends a document directly to a user's email within the given ecosystem"]
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
