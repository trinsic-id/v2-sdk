/// Request to register a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
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
    #[prost(oneof = "register_member_request::Member", tags = "1, 3, 4")]
    pub member: ::core::option::Option<register_member_request::Member>,
}
/// Nested message and enum types in `RegisterMemberRequest`.
pub mod register_member_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
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
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RegisterMemberResponse {}
/// Request to unregister a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnregisterMemberRequest {
    /// URI of credential schema to unregister member as authorized issuer of
    #[prost(string, tag = "10")]
    pub schema_uri: ::prost::alloc::string::String,
    #[prost(oneof = "unregister_member_request::Member", tags = "1, 3, 4")]
    pub member: ::core::option::Option<unregister_member_request::Member>,
}
/// Nested message and enum types in `UnregisterMemberRequest`.
pub mod unregister_member_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
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
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnregisterMemberResponse {}
/// Request to fetch member status in governance framework for a specific credential schema.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMemberAuthorizationStatusRequest {
    /// DID URI of member
    #[prost(string, tag = "1")]
    pub did_uri: ::prost::alloc::string::String,
    /// URI of credential schema associated with member
    #[prost(string, tag = "2")]
    pub schema_uri: ::prost::alloc::string::String,
}
/// Response to `GetMemberAuthorizationStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMemberAuthorizationStatusResponse {
    /// Status of member for given credential schema
    #[prost(enumeration = "RegistrationStatus", tag = "1")]
    pub status: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListAuthorizedMembersRequest {
    /// id of schema that needs to be checked
    #[prost(string, optional, tag = "1")]
    pub schema_uri: ::core::option::Option<::prost::alloc::string::String>,
    /// Token to fetch next set of results, from previous `ListAuthorizedMembersResponse`
    #[prost(string, optional, tag = "2")]
    pub continuation_token: ::core::option::Option<::prost::alloc::string::String>,
}
/// Response to `ListAuthorizedMembersRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListAuthorizedMembersResponse {
    /// JSON string containing array of resultant objects
    #[prost(message, repeated, tag = "1")]
    pub authorized_members: ::prost::alloc::vec::Vec<AuthorizedMember>,
    /// Whether more data is available to fetch for query
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    /// Token to fetch next set of results via `ListAuthorizedMembersRequest`
    #[prost(string, tag = "3")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthorizedMember {
    #[prost(string, tag = "1")]
    pub did: ::prost::alloc::string::String,
    #[prost(message, repeated, tag = "2")]
    pub authorized_member_schemas: ::prost::alloc::vec::Vec<AuthorizedMemberSchema>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AuthorizedMemberSchema {
    #[prost(string, tag = "1")]
    pub schema_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub status: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub status_details: ::prost::alloc::string::String,
    #[prost(uint64, tag = "4")]
    pub valid_from: u64,
    #[prost(uint64, tag = "5")]
    pub valid_until: u64,
}
/// Request to get a member of the governance framework
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMemberRequest {
    #[prost(oneof = "get_member_request::Member", tags = "1, 3, 4")]
    pub member: ::core::option::Option<get_member_request::Member>,
}
/// Nested message and enum types in `GetMemberRequest`.
pub mod get_member_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Member {
        /// DID URI of member to get
        #[prost(string, tag = "1")]
        DidUri(::prost::alloc::string::String),
        /// Trinsic Wallet ID of member to get
        #[prost(string, tag = "3")]
        WalletId(::prost::alloc::string::String),
        /// Email address of member to get. Must be associated with an existing Trinsic account.
        #[prost(string, tag = "4")]
        Email(::prost::alloc::string::String),
    }
}
/// Response to `GetMemberAuthorizationStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMemberResponse {
    /// Member for given did in given framework
    #[prost(message, optional, tag = "1")]
    pub authorized_member: ::core::option::Option<AuthorizedMember>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "CURRENT" => Some(Self::Current),
            "EXPIRED" => Some(Self::Expired),
            "TERMINATED" => Some(Self::Terminated),
            "REVOKED" => Some(Self::Revoked),
            "NOT_FOUND" => Some(Self::NotFound),
            _ => None,
        }
    }
}
/// Generated client implementations.
pub mod trust_registry_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
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
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> TrustRegistryClient<InterceptedService<T, F>>
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
        /// Register an authoritative issuer for a credential schema
        pub async fn register_member(
            &mut self,
            request: impl tonic::IntoRequest<super::RegisterMemberRequest>,
        ) -> Result<tonic::Response<super::RegisterMemberResponse>, tonic::Status> {
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
                "/services.trustregistry.v1.TrustRegistry/RegisterMember",
            );
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
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.trustregistry.v1.TrustRegistry/UnregisterMember",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Fetch the status of a member for a given credential schema in a trust registry
        pub async fn get_member_authorization_status(
            &mut self,
            request: impl tonic::IntoRequest<super::GetMemberAuthorizationStatusRequest>,
        ) -> Result<
            tonic::Response<super::GetMemberAuthorizationStatusResponse>,
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
                "/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
        pub async fn list_authorized_members(
            &mut self,
            request: impl tonic::IntoRequest<super::ListAuthorizedMembersRequest>,
        ) -> Result<
            tonic::Response<super::ListAuthorizedMembersResponse>,
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
                "/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Get member for a given did in a trust registry
        pub async fn get_member(
            &mut self,
            request: impl tonic::IntoRequest<super::GetMemberRequest>,
        ) -> Result<tonic::Response<super::GetMemberResponse>, tonic::Status> {
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
                "/services.trustregistry.v1.TrustRegistry/GetMember",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
