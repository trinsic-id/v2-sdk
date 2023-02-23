/// Request to sign a JSON-LD Credential using public key tied to caller
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueRequest {
    /// Valid JSON-LD Credential document to be signed, in string form
    #[prost(string, tag="1")]
    pub document_json: ::prost::alloc::string::String,
}
/// Response to `IssueRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueResponse {
    /// Verifiable Credential document, signed with public key
    /// tied to caller of `IssueRequest`
    #[prost(string, tag="1")]
    pub signed_document_json: ::prost::alloc::string::String,
}
/// Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateRequest {
    /// ID of template to use
    #[prost(string, tag="1")]
    pub template_id: ::prost::alloc::string::String,
    /// JSON document string with keys corresponding to the fields of
    /// the template referenced by `template_id`
    #[prost(string, tag="2")]
    pub values_json: ::prost::alloc::string::String,
    /// Governance framework ID to use with issuance of this credential.
    /// If specified, the issued credential will contain extended issuer
    /// metadata with membership info for the given ecosystem governance framework (EGF)
    #[prost(string, tag="3")]
    pub framework_id: ::prost::alloc::string::String,
    /// Save a copy of the issued credential to this user's wallet. This copy will only contain
    /// the credential data, but not the secret proof value. Issuers may use this data to
    /// keep track of the details for revocation status.
    #[prost(bool, tag="4")]
    pub save_copy: bool,
}
/// Response to `IssueFromTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueFromTemplateResponse {
    /// Verifiable Credential document, in JSON-LD form,
    /// constructed from the specified template and values; signed
    /// with public key tied to caller of `IssueFromTemplateRequest`
    #[prost(string, tag="1")]
    pub document_json: ::prost::alloc::string::String,
}
/// Request to create a proof for a Verifiable Credential using public key tied to caller.
/// Either `item_id` or `document_json` may be provided, not both.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofRequest {
    /// Wrap the output in a verifiable presentation
    #[prost(bool, tag="4")]
    pub use_verifiable_presentation: bool,
    /// Nonce value used to derive the proof. If not specified, a random nonce will be generated.
    /// This value may be represented in base64 format in the proof model.
    #[prost(bytes="vec", tag="10")]
    pub nonce: ::prost::alloc::vec::Vec<u8>,
    /// Selective disclosure specification. If nothing is provided, the entire proof is returned.
    /// Either a custom JSON-LD frame is provided, or a list of attributes is provided for selective disclosure
    #[prost(oneof="create_proof_request::Disclosure", tags="1, 11")]
    pub disclosure: ::core::option::Option<create_proof_request::Disclosure>,
    /// Specify the input to be used to derive this proof.
    /// Input can be an existing item in the wallet or an input document
    #[prost(oneof="create_proof_request::Proof", tags="2, 3")]
    pub proof: ::core::option::Option<create_proof_request::Proof>,
}
/// Nested message and enum types in `CreateProofRequest`.
pub mod create_proof_request {
    /// Selective disclosure specification. If nothing is provided, the entire proof is returned.
    /// Either a custom JSON-LD frame is provided, or a list of attributes is provided for selective disclosure
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Disclosure {
        /// A valid JSON-LD frame describing which fields should be
        /// revealed in the generated proof.
        /// If unspecified, all fields in the document will be revealed
        #[prost(string, tag="1")]
        RevealDocumentJson(::prost::alloc::string::String),
        /// Information about what sections of the document to reveal
        #[prost(message, tag="11")]
        RevealTemplate(super::RevealTemplateAttributes),
    }
    /// Specify the input to be used to derive this proof.
    /// Input can be an existing item in the wallet or an input document
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Proof {
        /// ID of wallet item stored in a Trinsic cloud wallet
        #[prost(string, tag="2")]
        ItemId(::prost::alloc::string::String),
        /// A valid JSON-LD Verifiable Credential document string
        /// with an unbound signature. The proof will be derived from this
        /// document directly. The document will not be stored in the wallet.
        #[prost(string, tag="3")]
        DocumentJson(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevealTemplateAttributes {
    /// A list of document attributes to reveal. If unset, all attributes will be returned.
    #[prost(string, repeated, tag="1")]
    pub template_attributes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Response to `CreateProofRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofResponse {
    /// Valid JSON-LD proof for the specified credential
    #[prost(string, tag="1")]
    pub proof_document_json: ::prost::alloc::string::String,
}
/// Request to verify a proof
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofRequest {
    /// JSON-LD proof document string to verify
    #[prost(string, tag="1")]
    pub proof_document_json: ::prost::alloc::string::String,
}
/// Response to `VerifyProofRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofResponse {
    /// Whether all validations in `validation_results` passed
    #[prost(bool, tag="1")]
    pub is_valid: bool,
    /// Use `validation_results` instead
    #[deprecated]
    #[prost(string, repeated, tag="2")]
    pub validation_messages: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Results of each validation check performed,
    /// such as schema conformance, revocation status, signature, etc.
    /// Detailed results are provided for failed validations.
    #[prost(map="string, message", tag="3")]
    pub validation_results: ::std::collections::HashMap<::prost::alloc::string::String, ValidationMessage>,
}
/// Result of a validation check on a proof
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ValidationMessage {
    /// Whether this validation check passed
    #[prost(bool, tag="1")]
    pub is_valid: bool,
    /// If validation failed, contains messages explaining why
    #[prost(string, repeated, tag="2")]
    pub messages: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Request to send a document to another user's wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendRequest {
    /// Send email notification that credential has been sent to a wallet
    #[prost(bool, tag="4")]
    pub send_notification: bool,
    /// JSON document to send to recipient
    #[prost(string, tag="100")]
    pub document_json: ::prost::alloc::string::String,
    #[prost(oneof="send_request::DeliveryMethod", tags="1, 5, 6")]
    pub delivery_method: ::core::option::Option<send_request::DeliveryMethod>,
}
/// Nested message and enum types in `SendRequest`.
pub mod send_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum DeliveryMethod {
        /// Email address of user to send item to
        #[prost(string, tag="1")]
        Email(::prost::alloc::string::String),
        // DID of recipient (presently unsupported)
        // string did_uri = 2 \[deprecated=true\];

        // DIDComm out-of-band invitation JSON (presently unsupported)
        // string didcomm_invitation_json = 3 \[deprecated=true\];

        /// Wallet ID of the recipient within the ecosystem
        #[prost(string, tag="5")]
        WalletId(::prost::alloc::string::String),
        /// DID URI of the recipient
        #[prost(string, tag="6")]
        DidUri(::prost::alloc::string::String),
    }
}
/// Response to `SendRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendResponse {
}
/// Request to update a credential's revocation status
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusRequest {
    /// Credential Status ID to update. This is not the same as the credential's ID.
    #[prost(string, tag="1")]
    pub credential_status_id: ::prost::alloc::string::String,
    /// New revocation status of credential
    #[prost(bool, tag="2")]
    pub revoked: bool,
}
/// Response to `UpdateStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateStatusResponse {
}
/// Request to check a credential's revocation status
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CheckStatusRequest {
    /// Credential Status ID to check. This is not the same as the credential's ID.
    #[prost(string, tag="1")]
    pub credential_status_id: ::prost::alloc::string::String,
}
/// Response to `CheckStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CheckStatusResponse {
    /// The credential's revocation status
    #[prost(bool, tag="1")]
    pub revoked: bool,
}
/// Generated client implementations.
pub mod verifiable_credential_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct VerifiableCredentialClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl VerifiableCredentialClient<tonic::transport::Channel> {
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
    impl<T> VerifiableCredentialClient<T>
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
        ) -> VerifiableCredentialClient<InterceptedService<T, F>>
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
            VerifiableCredentialClient::new(InterceptedService::new(inner, interceptor))
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
        /// Sign and issue a verifiable credential from a submitted document.
        /// The document must be a valid JSON-LD document.
        pub async fn issue(
            &mut self,
            request: impl tonic::IntoRequest<super::IssueRequest>,
        ) -> Result<tonic::Response<super::IssueResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/Issue",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Sign and issue a verifiable credential from a pre-defined template.
        /// This process will also add schema validation and
        /// revocation registry values to the credential.
        pub async fn issue_from_template(
            &mut self,
            request: impl tonic::IntoRequest<super::IssueFromTemplateRequest>,
        ) -> Result<tonic::Response<super::IssueFromTemplateResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Check credential status in the revocation registry
        pub async fn check_status(
            &mut self,
            request: impl tonic::IntoRequest<super::CheckStatusRequest>,
        ) -> Result<tonic::Response<super::CheckStatusResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Update credential status by setting the revocation value
        pub async fn update_status(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateStatusRequest>,
        ) -> Result<tonic::Response<super::UpdateStatusResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Create a proof from a signed document that is a valid
        /// verifiable credential and contains a signature from which a proof can be derived.
        pub async fn create_proof(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateProofRequest>,
        ) -> Result<tonic::Response<super::CreateProofResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Verifies a proof by checking the signature value, and if possible schema validation,
        /// revocation status, and issuer status against a trust registry
        pub async fn verify_proof(
            &mut self,
            request: impl tonic::IntoRequest<super::VerifyProofRequest>,
        ) -> Result<tonic::Response<super::VerifyProofResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Sends a document directly to a user's email within the given ecosystem
        pub async fn send(
            &mut self,
            request: impl tonic::IntoRequest<super::SendRequest>,
        ) -> Result<tonic::Response<super::SendResponse>, tonic::Status> {
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
                "/services.verifiablecredentials.v1.VerifiableCredential/Send",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
