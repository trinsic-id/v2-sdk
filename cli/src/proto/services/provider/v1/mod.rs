#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Invite {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub code: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub created: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub accepted: ::prost::alloc::string::String,
    #[prost(string, tag = "5")]
    pub expires: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteRequest {
    #[prost(enumeration = "ParticipantType", tag = "1")]
    pub participant: i32,
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
}
/// Nested message and enum types in `InviteRequest`.
pub mod invite_request {
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct DidCommInvitation {}
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteResponse {
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "10")]
    pub invitation_id: ::prost::alloc::string::String,
    /// Invitation Code that must be passed with the account 'SignIn' request
    /// to correlate this user with the invitation sent.
    #[prost(string, tag = "11")]
    pub invitation_code: ::prost::alloc::string::String,
}
/// Request details for the status of onboarding
/// an individual or organization.
/// The reference_id passed is the response from the
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
        /// The invite has expired
        Expired = 3,
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Ecosystem {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub uri: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemRequest {
    /// Globally unique name for the Ecosystem. This name will be
    /// part of the ecosystem specific URLs and namespaces.
    /// Allowed characters are lowercase letters, numbers, underscore and hyphen.
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// Ecosystem description.
    /// This field is optional.
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// External URL associated with your organization or ecosystem entity.
    /// This field is optional
    #[prost(string, tag = "3")]
    pub uri: ::prost::alloc::string::String,
    /// The account details of the owner of the ecosystem
    #[prost(message, optional, tag = "4")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemResponse {
    /// Details of the created ecosystem
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
    /// Account profile for auth of the owner of the ecosystem
    #[prost(message, optional, tag = "2")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
    /// Indicates if confirmation of account is required.
    /// This settings is configured globally by the server administrator.
    #[prost(
        enumeration = "super::super::account::v1::ConfirmationMethod",
        tag = "3"
    )]
    pub confirmation_method: i32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenRequest {
    /// Optional description to identify this token
    #[prost(string, tag = "1")]
    pub description: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenResponse {
    /// Account authentication profile that contains unprotected token
    #[prost(message, optional, tag = "1")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ParticipantType {
    Individual = 0,
    Organization = 1,
}
#[doc = r" Generated client implementations."]
pub mod provider_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
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
        ) -> ProviderClient<InterceptedService<T, F>>
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
            ProviderClient::new(InterceptedService::new(inner, interceptor))
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
        #[doc = " Create new ecosystem and assign the authenticated user as owner"]
        pub async fn create_ecosystem(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateEcosystemRequest>,
        ) -> Result<tonic::Response<super::CreateEcosystemResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/CreateEcosystem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Generates an unprotected authentication token that can be used to"]
        #[doc = " configure server side applications"]
        pub async fn generate_token(
            &mut self,
            request: impl tonic::IntoRequest<super::GenerateTokenRequest>,
        ) -> Result<tonic::Response<super::GenerateTokenResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/GenerateToken",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Invite a user to the ecosystem"]
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
            let path =
                http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/Invite");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Check the invitation status"]
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
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/InvitationStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
