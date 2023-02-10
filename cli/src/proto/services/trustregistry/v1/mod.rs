/// Request to register a new ecosystem governance framework in the current ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddFrameworkRequest {
    /// URI of governance framework organization
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    /// Name of governance framework organization
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    /// Description of governance framework
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
}
/// Response to `AddFrameworkRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddFrameworkResponse {
    /// Unique framework identifier
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    /// DID URI of Trinsic account which created the governance framework
    #[prost(string, tag = "2")]
    pub governing_authority: ::prost::alloc::string::String,
    /// URN of trust registry for governance framework
    #[prost(string, tag = "3")]
    pub trust_registry: ::prost::alloc::string::String,
}
/// Request to remove a governance framework from the current ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RemoveFrameworkRequest {
    /// ID of governance framework to remove
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
}
/// Response to `RemoveFrameworkRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RemoveFrameworkResponse {}
/// Request to search all governance frameworks within ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchRegistryRequest {
    /// SQL query to execute against frameworks. Example: `SELECT c from c where c.type == 'GovernanceFramework'`
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    /// Token to fetch next set of results, from previous `SearchRegistryResponse`
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `SearchRegistryRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchRegistryResponse {
    /// JSON string containing array of resultant objects
    #[prost(string, tag = "1")]
    pub items_json: ::prost::alloc::string::String,
    /// Whether more data is available to fetch for query
    #[prost(bool, tag = "2")]
    pub has_more: bool,
    /// Token to fetch next set of results via `SearchRegistryRequest`
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Ecosystem Governance Framework
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GovernanceFramework {
    /// URI of governance framework organization
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    /// URI of trust registry associated with governance framework
    #[prost(string, tag = "2")]
    pub trust_registry_uri: ::prost::alloc::string::String,
    /// Description of governance framework
    #[prost(string, tag = "3")]
    pub description: ::prost::alloc::string::String,
}
/// Request to register a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterMemberRequest {
    /// URI of credential schema to register member as authorized issuer of
    #[prost(string, tag = "10")]
    pub schema_uri: ::prost::alloc::string::String,
    /// Unix Timestamp member is valid from. Member will not be considered valid before this timestamp.
    #[prost(uint64, tag = "11")]
    pub valid_from_utc: u64,
    /// Unix Timestamp member is valid until. Member will not be considered valid after this timestamp.
    #[prost(uint64, tag = "12")]
    pub valid_until_utc: u64,
    /// ID of the governance framework that member is being added to
    #[prost(string, tag = "30")]
    pub framework_id: ::prost::alloc::string::String,
    #[prost(oneof = "register_member_request::Member", tags = "1, 3, 4")]
    pub member: ::core::option::Option<register_member_request::Member>,
}
/// Nested message and enum types in `RegisterMemberRequest`.
pub mod register_member_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        /// DID URI of member to register
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        /// Trinsic Wallet ID of member to register
        #[prost(string, tag = "3")]
        WalletId(::prost::alloc::string::String),
        /// Email address of member to register. Must be associated with an existing Trinsic account.
        #[prost(string, tag = "4")]
        Email(::prost::alloc::string::String),
    }
}
/// Response to `RegisterMemberRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RegisterMemberResponse {}
/// Request to unregister a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterMemberRequest {
    /// URI of credential schema to unregister member as authorized issuer of
    #[prost(string, tag = "10")]
    pub schema_uri: ::prost::alloc::string::String,
    /// ID of the governance framework that member is being removed from
    #[prost(string, tag = "20")]
    pub framework_id: ::prost::alloc::string::String,
    #[prost(oneof = "unregister_member_request::Member", tags = "1, 3, 4")]
    pub member: ::core::option::Option<unregister_member_request::Member>,
}
/// Nested message and enum types in `UnregisterMemberRequest`.
pub mod unregister_member_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        /// DID URI of member to unregister
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        /// Trinsic Wallet ID of member to unregister
        #[prost(string, tag = "3")]
        WalletId(::prost::alloc::string::String),
        /// Email address of member to unregister. Must be associated with an existing Trinsic account.
        #[prost(string, tag = "4")]
        Email(::prost::alloc::string::String),
    }
}
/// Response to `UnregisterMemberRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UnregisterMemberResponse {}
/// Request to fetch membership status in governance framework for a specific credential schema.
/// Only one of `did_uri`, `x509_cert` may be specified.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetMembershipStatusRequest {
    /// URI of governance framework
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    /// URI of credential schema associated with membership
    #[prost(string, tag = "4")]
    pub schema_uri: ::prost::alloc::string::String,
    #[prost(oneof = "get_membership_status_request::Member", tags = "2, 3")]
    pub member: ::core::option::Option<get_membership_status_request::Member>,
}
/// Nested message and enum types in `GetMembershipStatusRequest`.
pub mod get_membership_status_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        /// DID URI of member
        #[prost(string, tag = "2")]
        DidUri(::prost::alloc::string::String),
        /// X.509 certificate of member
        #[prost(string, tag = "3")]
        X509Cert(::prost::alloc::string::String),
    }
}
/// Response to `GetMembershipStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetMembershipStatusResponse {
    /// Status of member for given credential schema
    #[prost(enumeration = "RegistrationStatus", tag = "1")]
    pub status: i32,
}
/// Not implemented.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct FetchDataRequest {
    #[prost(string, tag = "1")]
    pub governance_framework_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub query: ::prost::alloc::string::String,
}
/// Not implemented.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct FetchDataResponse {
    #[prost(string, tag = "1")]
    pub response_json: ::prost::alloc::string::String,
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    #[prost(string, tag = "3")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum RegistrationStatus {
    /// Member is currently authorized, as of the time of the query
    Current = 0,
    /// Member's authorization has expired
    Expired = 1,
    /// Member has voluntarily ceased Issuer role under the specific EGF
    Terminated = 2,
    /// Member authority under specific EGF was terminated by the governing authority
    Revoked = 3,
    /// Member is not associated with given credential schema in the EGF
    NotFound = 10,
}
impl RegistrationStatus {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            RegistrationStatus::Current => "CURRENT",
            RegistrationStatus::Expired => "EXPIRED",
            RegistrationStatus::Terminated => "TERMINATED",
            RegistrationStatus::Revoked => "REVOKED",
            RegistrationStatus::NotFound => "NOT_FOUND",
        }
    }
}
/// Generated client implementations.
pub mod trust_registry_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::http::Uri;
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct TrustRegistryClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl TrustRegistryClient<tonic::transport::Channel> {
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
    impl<T> TrustRegistryClient<T>
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
        pub fn with_interceptor<F>(inner: T, interceptor: F) -> TrustRegistryClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<<T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody>,
            >,
            <T as tonic::codegen::Service<http::Request<tonic::body::BoxBody>>>::Error: Into<StdError> + Send + Sync,
        {
            TrustRegistryClient::new(InterceptedService::new(inner, interceptor))
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
        /// Add a governance framework to the ecosystem
        pub async fn add_framework(
            &mut self,
            request: impl tonic::IntoRequest<super::AddFrameworkRequest>,
        ) -> Result<tonic::Response<super::AddFrameworkResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/AddFramework");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Remove a governance framework from the ecosystem
        pub async fn remove_framework(
            &mut self,
            request: impl tonic::IntoRequest<super::RemoveFrameworkRequest>,
        ) -> Result<tonic::Response<super::RemoveFrameworkResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/RemoveFramework");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Search the ecosystem's governance frameworks
        pub async fn search_registry(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchRegistryRequest>,
        ) -> Result<tonic::Response<super::SearchRegistryResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/SearchRegistry");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Register an authoritative issuer for a credential schema
        pub async fn register_member(
            &mut self,
            request: impl tonic::IntoRequest<super::RegisterMemberRequest>,
        ) -> Result<tonic::Response<super::RegisterMemberResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/RegisterMember");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Removes an authoritative issuer for a credential schema from the trust registry
        pub async fn unregister_member(
            &mut self,
            request: impl tonic::IntoRequest<super::UnregisterMemberRequest>,
        ) -> Result<tonic::Response<super::UnregisterMemberResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/UnregisterMember");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Fetch the membership status of an issuer for a given credential schema in a trust registry
        pub async fn get_membership_status(
            &mut self,
            request: impl tonic::IntoRequest<super::GetMembershipStatusRequest>,
        ) -> Result<tonic::Response<super::GetMembershipStatusResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/GetMembershipStatus");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Not implemented.
        pub async fn fetch_data(
            &mut self,
            request: impl tonic::IntoRequest<super::FetchDataRequest>,
        ) -> Result<tonic::Response<tonic::codec::Streaming<super::FetchDataResponse>>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.trustregistry.v1.TrustRegistry/FetchData");
            self.inner.server_streaming(request.into_request(), path, codec).await
        }
    }
}
