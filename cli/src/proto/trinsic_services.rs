#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoOp {}
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
#[doc = r" Generated client implementations."]
pub mod common_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
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
        pub async fn request(
            &mut self,
            request: impl tonic::IntoRequest<super::super::super::pbmse::EncryptedMessage>,
        ) -> Result<tonic::Response<super::super::super::pbmse::EncryptedMessage>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Common/Request");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for CommonClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for CommonClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "CommonClient {{ ... }}")
        }
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AcquireTokenRequest {
    #[prost(message, optional, tag = "1")]
    pub signed_message: ::core::option::Option<super::super::pbmse::SignedMessage>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AcquireTokenResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "2")]
    pub wallet_token: ::prost::alloc::string::String,
}
#[doc = r" Generated client implementations."]
pub mod authentication_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
    pub struct AuthenticationClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl AuthenticationClient<tonic::transport::Channel> {
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
    impl<T> AuthenticationClient<T>
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
        pub async fn acquire_token(
            &mut self,
            request: impl tonic::IntoRequest<super::AcquireTokenRequest>,
        ) -> Result<tonic::Response<super::AcquireTokenResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Authentication/AcquireToken",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for AuthenticationClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for AuthenticationClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "AuthenticationClient {{ ... }}")
        }
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueRequest {
    #[prost(message, optional, tag = "1")]
    pub document: ::core::option::Option<super::super::google::protobuf::Struct>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IssueResponse {
    #[prost(message, optional, tag = "1")]
    pub document: ::core::option::Option<super::super::google::protobuf::Struct>,
}
/// Create Proof
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofRequest {
    #[prost(message, optional, tag = "1")]
    pub reveal_document: ::core::option::Option<super::super::google::protobuf::Struct>,
    #[prost(string, tag = "2")]
    pub document_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateProofResponse {
    #[prost(message, optional, tag = "1")]
    pub proof_document: ::core::option::Option<super::super::google::protobuf::Struct>,
}
/// Verify Proof
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofRequest {
    #[prost(message, optional, tag = "1")]
    pub proof_document: ::core::option::Option<super::super::google::protobuf::Struct>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerifyProofResponse {
    #[prost(bool, tag = "1")]
    pub valid: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendRequest {
    #[prost(message, optional, tag = "100")]
    pub document: ::core::option::Option<super::super::google::protobuf::Struct>,
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
        DidcommInvitation(super::super::super::google::protobuf::Struct),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SendResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
}
#[doc = r" Generated client implementations."]
pub mod credential_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
    pub struct CredentialClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CredentialClient<tonic::transport::Channel> {
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
    impl<T> CredentialClient<T>
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
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Credential/Issue");
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
            let path =
                http::uri::PathAndQuery::from_static("/trinsic.services.Credential/CreateProof");
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
            let path =
                http::uri::PathAndQuery::from_static("/trinsic.services.Credential/VerifyProof");
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
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Credential/Send");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for CredentialClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for CredentialClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "CredentialClient {{ ... }}")
        }
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletRequest {
    #[prost(string, tag = "1")]
    pub controller: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// (Optional) Supply an invitation id to associate this caller profile
    /// to an existing cloud wallet.
    #[prost(string, tag = "3")]
    pub security_code: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "2")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub capability: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub invoker: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ConnectRequest {
    #[prost(oneof = "connect_request::ContactMethod", tags = "5, 6")]
    pub contact_method: ::core::option::Option<connect_request::ContactMethod>,
}
/// Nested message and enum types in `ConnectRequest`.
pub mod connect_request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum ContactMethod {
        #[prost(string, tag = "5")]
        Email(::prost::alloc::string::String),
        #[prost(string, tag = "6")]
        Phone(::prost::alloc::string::String),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ConnectResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvitationToken {
    #[prost(string, tag = "1")]
    pub security_code: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(oneof = "invitation_token::ContactMethod", tags = "5, 6")]
    pub contact_method: ::core::option::Option<invitation_token::ContactMethod>,
}
/// Nested message and enum types in `InvitationToken`.
pub mod invitation_token {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum ContactMethod {
        #[prost(string, tag = "5")]
        Email(::prost::alloc::string::String),
        #[prost(string, tag = "6")]
        Phone(::prost::alloc::string::String),
    }
}
///
///Stores profile data for accessing a wallet.
///This result should be stored somewhere safe,
///as it contains private key information.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WalletProfile {
    #[prost(message, optional, tag = "1")]
    pub did_document: ::core::option::Option<super::super::google::protobuf::Struct>,
    #[prost(string, tag = "2")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub invoker: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub capability: ::prost::alloc::string::String,
    #[prost(bytes = "vec", tag = "5")]
    pub invoker_jwk: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GrantAccessRequest {
    #[prost(string, tag = "1")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub did: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GrantAccessResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeAccessRequest {
    #[prost(string, tag = "1")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub did: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeAccessResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
}
// GetProviderConfiguration

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetProviderConfigurationRequest {}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetProviderConfigurationResponse {
    #[prost(message, optional, tag = "1")]
    pub did_document: ::core::option::Option<super::super::google::protobuf::Struct>,
    #[prost(string, tag = "2")]
    pub key_agreement_key_id: ::prost::alloc::string::String,
}
// Search

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchResponse {
    #[prost(message, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<super::super::google::protobuf::Struct>,
    #[prost(bool, tag = "2")]
    pub has_more: bool,
}
// InsertItem

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    #[prost(message, optional, tag = "1")]
    pub item: ::core::option::Option<super::super::google::protobuf::Struct>,
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "2")]
    pub item_id: ::prost::alloc::string::String,
}
#[doc = r" Generated client implementations."]
pub mod wallet_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
    pub struct WalletClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl WalletClient<tonic::transport::Channel> {
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
    impl<T> WalletClient<T>
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
        pub async fn get_provider_configuration(
            &mut self,
            request: impl tonic::IntoRequest<super::GetProviderConfigurationRequest>,
        ) -> Result<tonic::Response<super::GetProviderConfigurationResponse>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Wallet/GetProviderConfiguration",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn connect_external_identity(
            &mut self,
            request: impl tonic::IntoRequest<super::ConnectRequest>,
        ) -> Result<tonic::Response<super::ConnectResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Wallet/ConnectExternalIdentity",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn create_wallet(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateWalletRequest>,
        ) -> Result<tonic::Response<super::CreateWalletResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/trinsic.services.Wallet/CreateWallet");
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn create_wallet_with_workflow(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateWalletRequest>,
        ) -> Result<tonic::Response<super::CreateWalletResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Wallet/CreateWalletWithWorkflow",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn create_wallet_encrypted(
            &mut self,
            request: impl tonic::IntoRequest<super::super::super::pbmse::EncryptedMessage>,
        ) -> Result<tonic::Response<super::super::super::pbmse::EncryptedMessage>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Wallet/CreateWalletEncrypted",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
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
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Wallet/Search");
            self.inner.unary(request.into_request(), path, codec).await
        }
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
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Wallet/InsertItem");
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn grant_access(
            &mut self,
            request: impl tonic::IntoRequest<super::GrantAccessRequest>,
        ) -> Result<tonic::Response<super::GrantAccessResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Wallet/GrantAccess");
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn revoke_access(
            &mut self,
            request: impl tonic::IntoRequest<super::RevokeAccessRequest>,
        ) -> Result<tonic::Response<super::RevokeAccessResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/trinsic.services.Wallet/RevokeAccess");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for WalletClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for WalletClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "WalletClient {{ ... }}")
        }
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteRequest {
    #[prost(enumeration = "ParticipantType", tag = "1")]
    pub participant: i32,
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    #[prost(oneof = "invite_request::ContactMethod", tags = "5, 6, 7")]
    pub contact_method: ::core::option::Option<invite_request::ContactMethod>,
}
/// Nested message and enum types in `InviteRequest`.
pub mod invite_request {
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct DidCommInvitation {}
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum ContactMethod {
        #[prost(string, tag = "5")]
        Email(::prost::alloc::string::String),
        #[prost(string, tag = "6")]
        Phone(::prost::alloc::string::String),
        #[prost(message, tag = "7")]
        DidcommInvitation(DidCommInvitation),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteResponse {
    #[prost(enumeration = "ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "10")]
    pub invitation_id: ::prost::alloc::string::String,
}
/// Request details for the status of onboarding
/// an individual or organization.
/// The referenece_id passed is the response from the
/// `Onboard` method call
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusRequest {
    #[prost(string, tag = "1")]
    pub invitation_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusResponse {
    #[prost(enumeration = "invitation_status_response::Status", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "2")]
    pub status_details: ::prost::alloc::string::String,
}
/// Nested message and enum types in `InvitationStatusResponse`.
pub mod invitation_status_response {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
    #[repr(i32)]
    pub enum Status {
        /// Onboarding resulted in error
        Error = 0,
        /// The participant has been invited
        InvitationSent = 1,
        /// The participant has been onboarded
        Completed = 2,
    }
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ParticipantType {
    Individual = 0,
    Organization = 1,
}
#[doc = r" Generated client implementations."]
pub mod provider_client {
    #![allow(unused_variables, dead_code, missing_docs)]
    use tonic::codegen::*;
    pub struct ProviderClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl ProviderClient<tonic::transport::Channel> {
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
    impl<T> ProviderClient<T>
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
        #[doc = "   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);"]
        pub async fn invite(
            &mut self,
            request: impl tonic::IntoRequest<super::InviteRequest>,
        ) -> Result<tonic::Response<super::InviteResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/trinsic.services.Provider/Invite");
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn invite_with_workflow(
            &mut self,
            request: impl tonic::IntoRequest<super::InviteRequest>,
        ) -> Result<tonic::Response<super::InviteResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/trinsic.services.Provider/InviteWithWorkflow",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn invitation_status(
            &mut self,
            request: impl tonic::IntoRequest<super::InvitationStatusRequest>,
        ) -> Result<tonic::Response<super::InvitationStatusResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/trinsic.services.Provider/InvitationStatus");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
    impl<T: Clone> Clone for ProviderClient<T> {
        fn clone(&self) -> Self {
            Self {
                inner: self.inner.clone(),
            }
        }
    }
    impl<T> std::fmt::Debug for ProviderClient<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "ProviderClient {{ ... }}")
        }
    }
}
