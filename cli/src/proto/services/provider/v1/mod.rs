/// Details of an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Ecosystem {
    /// URN of the ecosystem
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    /// Globally unique name for the ecosystem
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    /// Ecosystem description
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
}
/// Request to create an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemRequest {
    /// Globally unique name for the Ecosystem. This name will be
    /// part of the ecosystem-specific URLs and namespaces.
    /// Allowed characters are lowercase letters, numbers, underscore and hyphen.
    /// If not passed, ecosystem name will be auto-generated.
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// Ecosystem description
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// The account details of the owner of the ecosystem
    #[prost(message, optional, tag = "4")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
    /// New domain URL
    #[prost(string, tag = "5")]
    pub domain: ::prost::alloc::string::String,
}
/// Response to `CreateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemResponse {
    /// Details of the created ecosystem
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
    /// Account profile for auth of the owner of the ecosystem
    #[prost(message, optional, tag = "2")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
    /// Indicates if confirmation of account is required.
    #[prost(enumeration = "super::super::account::v1::ConfirmationMethod", tag = "3")]
    pub confirmation_method: i32,
}
/// Request to fetch information about an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoRequest {}
/// Response to `InfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoResponse {
    /// Ecosystem corresponding to current ecosystem in the account token
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to fetch the Trinsic public key used
/// to verify authentication token validity
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyRequest {}
/// Response to `GetOberonKeyRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyResponse {
    /// Oberon Public Key as RAW base64-url encoded string
    #[prost(string, tag = "1")]
    pub key: ::prost::alloc::string::String,
}
/// The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
/// DEPRECATED, will be removed June 1st 2023
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RetrieveDomainVerificationRecordRequest {}
/// The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
/// DEPRECATED, will be removed June 1st 2023
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RetrieveDomainVerificationRecordResponse {
    /// TXT record name to use for domain verification
    #[prost(string, tag = "1")]
    pub verification_record_name: ::prost::alloc::string::String,
    /// TXT code for domain verification
    #[prost(string, tag = "2")]
    pub verification_record_value: ::prost::alloc::string::String,
}
/// The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
/// DEPRECATED, will be removed June 1st 2023
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshDomainVerificationStatusRequest {}
/// The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
/// DEPRECATED, will be removed June 1st 2023
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshDomainVerificationStatusResponse {
    /// Domain URL verified
    #[prost(string, tag = "1")]
    pub domain: ::prost::alloc::string::String,
    /// Specifies if the above `domain` was successfully verified
    #[prost(bool, tag = "2")]
    pub domain_verified: bool,
}
/// Search for issuers/holders/verifiers
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchWalletConfigurationsRequest {
    /// SQL filter to execute. `SELECT * FROM c WHERE \[**queryFilter**\]`
    #[prost(string, tag = "1")]
    pub query_filter: ::prost::alloc::string::String,
    /// Token provided by previous `SearchResponse`
    /// if more data is available for query
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchWalletConfigurationResponse {
    /// Results matching the search query
    #[prost(message, repeated, tag = "1")]
    pub results: ::prost::alloc::vec::Vec<WalletConfiguration>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    /// Token to fetch next set of results via `SearchRequest`
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Strongly typed information about wallet configurations
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WalletConfiguration {
    /// Name/description of the wallet
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// Deprecated and will be removed on August 1, 2023 -- use external_identities.
    /// This field is set to the first email address present in `external_identities`, if any.
    #[deprecated]
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
    /// Deprecated -- use external_identities
    #[deprecated]
    #[prost(string, tag = "3")]
    pub sms: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub wallet_id: ::prost::alloc::string::String,
    /// The DID of the wallet
    #[prost(string, tag = "5")]
    pub public_did: ::prost::alloc::string::String,
    #[prost(string, tag = "6")]
    pub config_type: ::prost::alloc::string::String,
    /// List of active authentication tokens for this wallet.
    /// This list does not contain the issued token, only metadata
    /// such as ID, description, and creation date.
    #[prost(message, repeated, tag = "7")]
    pub auth_tokens: ::prost::alloc::vec::Vec<
        super::super::account::v1::WalletAuthToken,
    >,
    /// List of external identity IDs (email addresses, phone numbers, etc.) associated with this wallet.
    /// This is deprecated; use `external_identities` instead.
    #[deprecated]
    #[prost(string, repeated, tag = "8")]
    pub external_identity_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Ecosystem in which this wallet is contained.
    #[prost(string, tag = "9")]
    pub ecosystem_id: ::prost::alloc::string::String,
    #[prost(string, tag = "10")]
    pub description: ::prost::alloc::string::String,
    /// List of external identities associated with this wallet.
    #[prost(message, repeated, tag = "11")]
    pub external_identities: ::prost::alloc::vec::Vec<WalletExternalIdentity>,
}
/// An external identity (email address, phone number, etc.) associated with a wallet for authentication purposes.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WalletExternalIdentity {
    /// The type of this identity (whether this identity is an email address, phone number, etc.)
    #[prost(enumeration = "IdentityProvider", tag = "1")]
    pub provider: i32,
    /// The actual email address/phone number/etc. for this identity
    #[prost(string, tag = "2")]
    pub id: ::prost::alloc::string::String,
}
/// Options for creation of DID on the ION network
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IonOptions {
    /// ION network on which DID should be published
    #[prost(enumeration = "ion_options::IonNetwork", tag = "1")]
    pub network: i32,
}
/// Nested message and enum types in `IonOptions`.
pub mod ion_options {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum IonNetwork {
        TestNet = 0,
        MainNet = 1,
    }
    impl IonNetwork {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                IonNetwork::TestNet => "TestNet",
                IonNetwork::MainNet => "MainNet",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "TestNet" => Some(Self::TestNet),
                "MainNet" => Some(Self::MainNet),
                _ => None,
            }
        }
    }
}
/// Options for creation of DID on the SOV network
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IndyOptions {
    /// SOV network on which DID should be published
    #[prost(enumeration = "indy_options::IndyNetwork", tag = "1")]
    pub network: i32,
}
/// Nested message and enum types in `IndyOptions`.
pub mod indy_options {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum IndyNetwork {
        Danube = 0,
        SovrinBuilder = 1,
        SovrinStaging = 2,
        Sovrin = 3,
        IdUnionTest = 4,
        IdUnion = 5,
        IndicioTest = 6,
        IndicioDemo = 7,
        Indicio = 8,
    }
    impl IndyNetwork {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                IndyNetwork::Danube => "Danube",
                IndyNetwork::SovrinBuilder => "SovrinBuilder",
                IndyNetwork::SovrinStaging => "SovrinStaging",
                IndyNetwork::Sovrin => "Sovrin",
                IndyNetwork::IdUnionTest => "IdUnionTest",
                IndyNetwork::IdUnion => "IdUnion",
                IndyNetwork::IndicioTest => "IndicioTest",
                IndyNetwork::IndicioDemo => "IndicioDemo",
                IndyNetwork::Indicio => "Indicio",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "Danube" => Some(Self::Danube),
                "SovrinBuilder" => Some(Self::SovrinBuilder),
                "SovrinStaging" => Some(Self::SovrinStaging),
                "Sovrin" => Some(Self::Sovrin),
                "IdUnionTest" => Some(Self::IdUnionTest),
                "IdUnion" => Some(Self::IdUnion),
                "IndicioTest" => Some(Self::IndicioTest),
                "IndicioDemo" => Some(Self::IndicioDemo),
                "Indicio" => Some(Self::Indicio),
                _ => None,
            }
        }
    }
}
/// Request to upgrade a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpgradeDidRequest {
    /// DID Method to which wallet should be upgraded
    #[prost(enumeration = "super::super::common::v1::SupportedDidMethod", tag = "3")]
    pub method: i32,
    #[prost(oneof = "upgrade_did_request::Account", tags = "1, 2, 6")]
    pub account: ::core::option::Option<upgrade_did_request::Account>,
    #[prost(oneof = "upgrade_did_request::Options", tags = "4, 5")]
    pub options: ::core::option::Option<upgrade_did_request::Options>,
}
/// Nested message and enum types in `UpgradeDidRequest`.
pub mod upgrade_did_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account to upgrade.
        /// Mutually exclusive with `walletId` and `didUri`.
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account to upgrade.
        /// Mutually exclusive with `email` and `didUri`.
        #[prost(string, tag = "2")]
        WalletId(::prost::alloc::string::String),
        /// DID URI of the account to upgrade.
        /// Mutually exclusive with `email` and `walletId`.
        #[prost(string, tag = "6")]
        DidUri(::prost::alloc::string::String),
    }
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Options {
        /// Configuration for creation of DID on ION network
        #[prost(message, tag = "4")]
        IonOptions(super::IonOptions),
        /// Configuration for creation of DID on INDY network
        #[prost(message, tag = "5")]
        IndyOptions(super::IndyOptions),
    }
}
/// Response to `UpgradeDIDRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpgradeDidResponse {
    /// New DID of wallet
    #[prost(string, tag = "1")]
    pub did: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum IdentityProvider {
    /// Identity provider is unknown
    Unknown = 0,
    /// Identity provider is email
    Email = 1,
    /// Identity provider is phone
    Phone = 2,
}
impl IdentityProvider {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            IdentityProvider::Unknown => "Unknown",
            IdentityProvider::Email => "Email",
            IdentityProvider::Phone => "Phone",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "Unknown" => Some(Self::Unknown),
            "Email" => Some(Self::Email),
            "Phone" => Some(Self::Phone),
            _ => None,
        }
    }
}
/// Generated client implementations.
pub mod provider_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct ProviderClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl ProviderClient<tonic::transport::Channel> {
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
    impl<T> ProviderClient<T>
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
        ) -> ProviderClient<InterceptedService<T, F>>
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
            ProviderClient::new(InterceptedService::new(inner, interceptor))
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
        /// Create new ecosystem and assign the authenticated user as owner
        pub async fn create_ecosystem(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateEcosystemRequest>,
        ) -> Result<tonic::Response<super::CreateEcosystemResponse>, tonic::Status> {
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
                "/services.provider.v1.Provider/CreateEcosystem",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Returns the public key being used to create/verify oberon tokens
        pub async fn get_oberon_key(
            &mut self,
            request: impl tonic::IntoRequest<super::GetOberonKeyRequest>,
        ) -> Result<tonic::Response<super::GetOberonKeyResponse>, tonic::Status> {
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
                "/services.provider.v1.Provider/GetOberonKey",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Upgrade a wallet's DID from `did:key` to another method
        pub async fn upgrade_did(
            &mut self,
            request: impl tonic::IntoRequest<super::UpgradeDidRequest>,
        ) -> Result<tonic::Response<super::UpgradeDidResponse>, tonic::Status> {
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
                "/services.provider.v1.Provider/UpgradeDID",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Search for issuers/providers/verifiers in the current ecosystem
        pub async fn search_wallet_configurations(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchWalletConfigurationsRequest>,
        ) -> Result<
            tonic::Response<super::SearchWalletConfigurationResponse>,
            tonic::Status,
        > {
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
                "/services.provider.v1.Provider/SearchWalletConfigurations",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
