#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletRequest {
    /// optional description of the wallet
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// (Optional) Supply an invitation id to associate this
    /// caller device to an existing cloud wallet.
    #[prost(string, tag = "3")]
    pub security_code: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateWalletResponse {
    /// the status code of the response
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
    /// authentication data containing info about the cloud
    /// wallet and device the user is connecting from
    #[prost(bytes = "vec", tag = "2")]
    pub auth_data: ::prost::alloc::vec::Vec<u8>,
    /// authoritative token issued by the server that is
    /// required to prove knowledge during authentication
    #[prost(bytes = "vec", tag = "3")]
    pub auth_token: ::prost::alloc::vec::Vec<u8>,
    /// indicates if the token issued protected with a
    /// security code, usually delivered by email or sms
    #[prost(bool, tag = "4")]
    pub is_protected: bool,
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
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
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
#[derive(::serde::Serialize, ::serde::Deserialize, Copy, Clone, PartialEq, ::prost::Message)]
pub struct WalletProfile {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    #[prost(bytes = "vec", tag = "2")]
    pub auth_data: ::prost::alloc::vec::Vec<u8>,
    #[prost(bytes = "vec", tag = "3")]
    pub auth_token: ::prost::alloc::vec::Vec<u8>,
    #[prost(bool, tag = "4")]
    pub is_protected: bool,
    #[prost(message, optional, tag = "5")]
    pub config: ::core::option::Option<super::super::common::v1::ServerConfig>,
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
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
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
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
}
// GetProviderConfiguration

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetProviderConfigurationRequest {
    #[prost(message, optional, tag = "1")]
    pub request_options: ::core::option::Option<super::super::common::v1::RequestOptions>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetProviderConfigurationResponse {
    #[prost(message, optional, tag = "1")]
    pub did_document: ::core::option::Option<super::super::common::v1::JsonPayload>,
    #[prost(string, tag = "2")]
    pub key_agreement_key_id: ::prost::alloc::string::String,
}
// Search

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchRequest {
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "5")]
    pub options: ::core::option::Option<super::super::common::v1::RequestOptions>,
}
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

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemRequest {
    #[prost(message, optional, tag = "1")]
    pub item: ::core::option::Option<super::super::common::v1::JsonPayload>,
    #[prost(string, tag = "2")]
    pub item_type: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InsertItemResponse {
    #[prost(enumeration = "super::super::common::v1::ResponseStatus", tag = "1")]
    pub status: i32,
    #[prost(string, tag = "2")]
    pub item_id: ::prost::alloc::string::String,
}
#[doc = r" Generated client implementations."]
pub mod wallet_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
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
        ) -> WalletClient<InterceptedService<T, F>>
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
            WalletClient::new(InterceptedService::new(inner, interceptor))
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
                "/services.universalwallet.v1.Wallet/GetProviderConfiguration",
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
                "/services.universalwallet.v1.Wallet/ConnectExternalIdentity",
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
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.Wallet/CreateWallet",
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
            let path =
                http::uri::PathAndQuery::from_static("/services.universalwallet.v1.Wallet/Search");
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
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.Wallet/InsertItem",
            );
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
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.Wallet/GrantAccess",
            );
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
            let path = http::uri::PathAndQuery::from_static(
                "/services.universalwallet.v1.Wallet/RevokeAccess",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
