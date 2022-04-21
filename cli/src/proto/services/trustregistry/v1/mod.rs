#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddFrameworkRequest {
    #[prost(message, optional, tag = "1")]
    pub governance_framework: ::core::option::Option<GovernanceFramework>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddFrameworkResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RemoveFrameworkRequest {
    #[prost(message, optional, tag = "1")]
    pub governance_framework: ::core::option::Option<GovernanceFramework>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RemoveFrameworkResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchRegistryRequest {
    /// SELECT c from c where c.type == 'GovernanceFramework'
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchRegistryResponse {
    #[prost(string, tag = "1")]
    pub items_json: ::prost::alloc::string::String,
    #[prost(bool, tag = "2")]
    pub has_more: bool,
    #[prost(int32, tag = "3")]
    pub count: i32,
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GovernanceFramework {
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub trust_registry_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterIssuerRequest {
    #[prost(string, tag = "10")]
    pub credential_type_uri: ::prost::alloc::string::String,
    #[prost(uint64, tag = "11")]
    pub valid_from_utc: u64,
    #[prost(uint64, tag = "12")]
    pub valid_until_utc: u64,
    #[prost(string, tag = "20")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(oneof = "register_issuer_request::Authority", tags = "1, 2")]
    pub authority: ::core::option::Option<register_issuer_request::Authority>,
}
/// Nested message and enum types in `RegisterIssuerRequest`.
pub mod register_issuer_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Authority {
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterIssuerResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterVerifierRequest {
    #[prost(string, tag = "10")]
    pub presentation_type_uri: ::prost::alloc::string::String,
    #[prost(uint64, tag = "11")]
    pub valid_from_utc: u64,
    #[prost(uint64, tag = "12")]
    pub valid_until_utc: u64,
    #[prost(string, tag = "20")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(oneof = "register_verifier_request::Authority", tags = "1, 2")]
    pub authority: ::core::option::Option<register_verifier_request::Authority>,
}
/// Nested message and enum types in `RegisterVerifierRequest`.
pub mod register_verifier_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Authority {
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterVerifierResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterIssuerRequest {
    #[prost(string, tag = "10")]
    pub credential_type_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "20")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(oneof = "unregister_issuer_request::Authority", tags = "1, 2")]
    pub authority: ::core::option::Option<unregister_issuer_request::Authority>,
}
/// Nested message and enum types in `UnregisterIssuerRequest`.
pub mod unregister_issuer_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Authority {
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterIssuerResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterVerifierRequest {
    #[prost(string, tag = "10")]
    pub presentation_type_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "20")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(oneof = "unregister_verifier_request::Authority", tags = "1, 2")]
    pub authority: ::core::option::Option<unregister_verifier_request::Authority>,
}
/// Nested message and enum types in `UnregisterVerifierRequest`.
pub mod unregister_verifier_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Authority {
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "2")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterVerifierResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CheckIssuerStatusRequest {
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub credential_type_uri: ::prost::alloc::string::String,
    #[prost(oneof = "check_issuer_status_request::Member", tags = "2, 3")]
    pub member: ::core::option::Option<check_issuer_status_request::Member>,
}
/// Nested message and enum types in `CheckIssuerStatusRequest`.
pub mod check_issuer_status_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        #[prost(string, tag = "2")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "3")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CheckIssuerStatusResponse {
    #[prost(enumeration = "RegistrationStatus", tag = "1")]
    pub status: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CheckVerifierStatusRequest {
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub presentation_type_uri: ::prost::alloc::string::String,
    #[prost(oneof = "check_verifier_status_request::Member", tags = "2, 3")]
    pub member: ::core::option::Option<check_verifier_status_request::Member>,
}
/// Nested message and enum types in `CheckVerifierStatusRequest`.
pub mod check_verifier_status_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        #[prost(string, tag = "2")]
        DidUri(::prost::alloc::string::String),
        #[prost(string, tag = "3")]
        X509Cert(::prost::alloc::string::String),
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CheckVerifierStatusResponse {
    #[prost(enumeration = "RegistrationStatus", tag = "1")]
    pub status: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct FetchDataRequest {
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub query: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct FetchDataResponse {
    #[prost(string, tag = "1")]
    pub response_json: ::prost::alloc::string::String,
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    #[prost(string, tag = "3")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(
    ::serde::Serialize,
    ::serde::Deserialize,
    Clone,
    Copy,
    Debug,
    PartialEq,
    Eq,
    Hash,
    PartialOrd,
    Ord,
    ::prost::Enumeration,
)]
#[repr(i32)]
pub enum RegistrationStatus {
    /// - the entity is currently authorized, as of time of the query.
    Current = 0,
    /// - entity rights have expired.
    Expired = 1,
    /// - entity has voluntarily ceased Issuer role under the specific EGF.
    Terminated = 2,
    /// - entity authority under specific EGF was terminated by the governing authority.
    Revoked = 3,
    NotFound = 10,
}
#[doc = r" Generated client implementations."]
pub mod trust_registry_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct TrustRegistryClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl TrustRegistryClient<tonic::transport::Channel> {
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
    impl<T> TrustRegistryClient<T>
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
        ) -> TrustRegistryClient<InterceptedService<T, F>>
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
            TrustRegistryClient::new(InterceptedService::new(inner, interceptor))
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
        #[doc = " Adds a trust registry defintion to the ecosystem"]
        pub async fn add_framework(
            &mut self,
            request: impl tonic::IntoRequest<super::AddFrameworkRequest>,
        ) -> Result<tonic::Response<super::AddFrameworkResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/AddFramework",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn remove_framework(
            &mut self,
            request: impl tonic::IntoRequest<super::RemoveFrameworkRequest>,
        ) -> Result<tonic::Response<super::RemoveFrameworkResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/RemoveFramework",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn search_registry(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchRegistryRequest>,
        ) -> Result<tonic::Response<super::SearchRegistryResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/SearchRegistry",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Registers an authoritative issuer with a credential template"]
        pub async fn register_issuer(
            &mut self,
            request: impl tonic::IntoRequest<super::RegisterIssuerRequest>,
        ) -> Result<tonic::Response<super::RegisterIssuerResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/RegisterIssuer",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Registers an authoritative verifier with a credential template"]
        pub async fn register_verifier(
            &mut self,
            request: impl tonic::IntoRequest<super::RegisterVerifierRequest>,
        ) -> Result<tonic::Response<super::RegisterVerifierResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/RegisterVerifier",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Removes an authoritative issuer with a credential template from the trust registry"]
        pub async fn unregister_issuer(
            &mut self,
            request: impl tonic::IntoRequest<super::UnregisterIssuerRequest>,
        ) -> Result<tonic::Response<super::UnregisterIssuerResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/UnregisterIssuer",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Removes an authoritative verifier with a presentation template from the trust registry"]
        pub async fn unregister_verifier(
            &mut self,
            request: impl tonic::IntoRequest<super::UnregisterVerifierRequest>,
        ) -> Result<tonic::Response<super::UnregisterVerifierResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/UnregisterVerifier",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn check_issuer_status(
            &mut self,
            request: impl tonic::IntoRequest<super::CheckIssuerStatusRequest>,
        ) -> Result<tonic::Response<super::CheckIssuerStatusResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/CheckIssuerStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn check_verifier_status(
            &mut self,
            request: impl tonic::IntoRequest<super::CheckVerifierStatusRequest>,
        ) -> Result<tonic::Response<super::CheckVerifierStatusResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/CheckVerifierStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn fetch_data(
            &mut self,
            request: impl tonic::IntoRequest<super::FetchDataRequest>,
        ) -> Result<tonic::Response<tonic::codec::Streaming<super::FetchDataResponse>>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/FetchData",
            );
            self.inner
                .server_streaming(request.into_request(), path, codec)
                .await
        }
    }
}
