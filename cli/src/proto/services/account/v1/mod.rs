/// Request for creating or signing into an account
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SignInRequest {
    /// Account registration details
    #[prost(message, optional, tag = "1")]
    pub details: ::core::option::Option<AccountDetails>,
    /// Invitation code associated with this registration
    #[prost(string, tag = "2")]
    pub invitation_code: ::prost::alloc::string::String,
    /// ID of Ecosystem to sign into.
    /// Ignored if `invitation_code` is passed
    #[prost(string, tag = "3")]
    pub ecosystem_id: ::prost::alloc::string::String,
}
/// Account registration details
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AccountDetails {
    /// Account name
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// Email account
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
    /// SMS number including country code
    #[prost(string, tag = "3")]
    pub sms: ::prost::alloc::string::String,
}
/// Response for creating new account
/// This object will indicate if a confirmation code
/// was sent to one of the users two-factor methods
/// like email, SMS, etc.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SignInResponse {
    /// Indicates if confirmation of account is required.
    /// This settings is configured globally by the server administrator.
    #[prost(enumeration = "ConfirmationMethod", tag = "3")]
    pub confirmation_method: i32,
    /// Contains authentication data for use with the current device.
    /// This object must be stored in a secure place. It can also be
    /// protected with a PIN, but this is optional.
    /// See the docs at <https://docs.trinsic.id> for more information
    /// on working with authentication data.
    #[prost(message, optional, tag = "4")]
    pub profile: ::core::option::Option<AccountProfile>,
}
/// Device profile containing sensitive authentication data.
/// This information should be stored securely
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AccountProfile {
    /// The type of profile, used to differentiate between
    /// protocol schemes or versions
    #[prost(string, tag = "1")]
    pub profile_type: ::prost::alloc::string::String,
    /// Auth data containg information about the current device access
    #[prost(bytes = "vec", tag = "2")]
    pub auth_data: ::prost::alloc::vec::Vec<u8>,
    /// Secure token issued by server used to generate zero-knowledge proofs
    #[prost(bytes = "vec", tag = "3")]
    pub auth_token: ::prost::alloc::vec::Vec<u8>,
    /// Token security information about the token.
    /// If token protection is enabled, implementations must supply
    /// protection secret before using the token for authentication.
    #[prost(message, optional, tag = "4")]
    pub protection: ::core::option::Option<TokenProtection>,
}
/// Token protection info
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct TokenProtection {
    /// Indicates if token is protected using a PIN,
    /// security code, HSM secret, etc.
    #[prost(bool, tag = "1")]
    pub enabled: bool,
    /// The method used to protect the token
    #[prost(enumeration = "ConfirmationMethod", tag = "2")]
    pub method: i32,
}
/// Request for information about the account used to make the request
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InfoRequest {}
/// Information about the account used to make the request
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InfoResponse {
    /// The account details associated with
    /// the calling request context
    #[prost(message, optional, tag = "1")]
    pub details: ::core::option::Option<AccountDetails>,
    /// Use `ecosystem_id` instead
    #[deprecated]
    #[prost(message, repeated, tag = "2")]
    pub ecosystems: ::prost::alloc::vec::Vec<AccountEcosystem>,
    /// The wallet ID associated with this account
    #[prost(string, tag = "3")]
    pub wallet_id: ::prost::alloc::string::String,
    /// The device ID associated with this account session
    #[prost(string, tag = "4")]
    pub device_id: ::prost::alloc::string::String,
    /// The ecosystem ID within which this account resides
    #[prost(string, tag = "5")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// The public DID associated with this account.
    /// This DID is used as "issuer" when signing verifiable credentials
    #[prost(string, tag = "6")]
    pub public_did: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListDevicesRequest {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListDevicesResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RevokeDeviceRequest {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RevokeDeviceResponse {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AccountEcosystem {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub uri: ::prost::alloc::string::String,
}
/// Confirmation method type for two-factor workflows
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
pub enum ConfirmationMethod {
    /// No confirmation required
    None = 0,
    /// Email confirmation required
    Email = 1,
    /// SMS confirmation required
    Sms = 2,
    /// Confirmation from a connected device is required
    ConnectedDevice = 3,
    /// Indicates third-party method of confirmation is required
    Other = 10,
}
#[doc = r" Generated client implementations."]
pub mod account_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct AccountClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl AccountClient<tonic::transport::Channel> {
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
    impl<T> AccountClient<T>
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
        ) -> AccountClient<InterceptedService<T, F>>
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
            AccountClient::new(InterceptedService::new(inner, interceptor))
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
        #[doc = " Sign in to an already existing account"]
        pub async fn sign_in(
            &mut self,
            request: impl tonic::IntoRequest<super::SignInRequest>,
        ) -> Result<tonic::Response<super::SignInResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.account.v1.Account/SignIn");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Get account information"]
        pub async fn info(
            &mut self,
            request: impl tonic::IntoRequest<super::InfoRequest>,
        ) -> Result<tonic::Response<super::InfoResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.account.v1.Account/Info");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " List all connected devices"]
        pub async fn list_devices(
            &mut self,
            request: impl tonic::IntoRequest<super::ListDevicesRequest>,
        ) -> Result<tonic::Response<super::ListDevicesResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/services.account.v1.Account/ListDevices");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Revoke device access to the account's cloud wallet"]
        pub async fn revoke_device(
            &mut self,
            request: impl tonic::IntoRequest<super::RevokeDeviceRequest>,
        ) -> Result<tonic::Response<super::RevokeDeviceResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path =
                http::uri::PathAndQuery::from_static("/services.account.v1.Account/RevokeDevice");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
