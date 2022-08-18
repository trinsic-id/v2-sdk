/// Request to invite a participant to an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InviteRequest {
    /// Type of participant being invited (individual/organization)
    #[prost(enumeration = "ParticipantType", tag = "1")]
    pub participant: i32,
    /// Description of invitation
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// Account details of invitee
    #[prost(message, optional, tag = "3")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
}
/// Nested message and enum types in `InviteRequest`.
pub mod invite_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
    pub struct DidCommInvitation {}
}
/// Response to `InviteRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InviteResponse {
    /// ID of created invitation
    #[prost(string, tag = "10")]
    pub invitation_id: ::prost::alloc::string::String,
    /// Invitation code -- must be passed back in `LoginRequest`
    #[prost(string, tag = "11")]
    pub invitation_code: ::prost::alloc::string::String,
}
/// Request details for the status of an invitation
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusRequest {
    /// ID of invitation, received from `InviteResponse`
    #[prost(string, tag = "1")]
    pub invitation_id: ::prost::alloc::string::String,
}
/// Response to `InvitationStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusResponse {
    /// Status of invitation
    #[prost(enumeration = "invitation_status_response::Status", tag = "1")]
    pub status: i32,
    /// Human-readable string with details about invitation status
    #[prost(string, tag = "2")]
    pub status_details: ::prost::alloc::string::String,
}
/// Nested message and enum types in `InvitationStatusResponse`.
pub mod invitation_status_response {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
    impl Status {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                Status::Error => "Error",
                Status::InvitationSent => "InvitationSent",
                Status::Completed => "Completed",
                Status::Expired => "Expired",
            }
        }
    }
}
/// Details of an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
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
    /// External URL associated with the organization or ecosystem entity
    #[prost(string, tag = "4")]
    pub uri: ::prost::alloc::string::String,
    /// Configured webhooks, if any
    #[prost(message, repeated, tag = "5")]
    pub webhooks: ::prost::alloc::vec::Vec<WebhookConfig>,
}
/// Webhook configured on an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct WebhookConfig {
    /// UUID of the webhook
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    /// HTTPS URL to POST webhook calls to
    #[prost(string, tag = "2")]
    pub destination_url: ::prost::alloc::string::String,
    /// Events the webhook is subscribed to
    #[prost(string, repeated, tag = "4")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Last known status of webhook (whether or not Trinsic can successfully reach destination)
    #[prost(string, tag = "5")]
    pub status: ::prost::alloc::string::String,
}
/// A grant authorizing `actions` on a `resourceId`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct Grant {
    /// the urn of the resource
    #[prost(string, tag = "1")]
    pub resource_id: ::prost::alloc::string::String,
    /// list of actions that are allowed
    #[prost(string, repeated, tag = "2")]
    pub actions: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// any child grants
    #[prost(message, repeated, tag = "3")]
    pub child_grants: ::prost::alloc::vec::Vec<Grant>,
}
/// Request to create an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
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
    /// External URL associated with your organization or ecosystem entity
    #[prost(string, tag = "3")]
    pub uri: ::prost::alloc::string::String,
    /// The account details of the owner of the ecosystem
    #[prost(message, optional, tag = "4")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
}
/// Response to `CreateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
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
/// Request to update an ecosystem's metadata
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemRequest {
    /// New description of the ecosystem
    #[prost(string, tag = "1")]
    pub description: ::prost::alloc::string::String,
    /// New external URL associated with the organization or ecosystem entity
    #[prost(string, tag = "2")]
    pub uri: ::prost::alloc::string::String,
}
/// Response to `UpdateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemResponse {
    /// Current ecosystem metadata, post-update
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to add a webhook to an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookRequest {
    /// Destination to post webhook calls to.
    /// Must be a reachable HTTPS URL.
    #[prost(string, tag = "1")]
    pub destination_url: ::prost::alloc::string::String,
    /// Secret string used for HMAC-SHA256 signing of webhook payloads
    /// to verify that a webhook comes from Trinsic
    #[prost(string, tag = "2")]
    pub secret: ::prost::alloc::string::String,
    /// Events to subscribe to. Default is "*" (all events)
    #[prost(string, repeated, tag = "3")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Response to `AddWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookResponse {
    /// Ecosystem data with new webhook
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to delete a webhook from an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookRequest {
    /// ID of webhook to delete
    #[prost(string, tag = "1")]
    pub webhook_id: ::prost::alloc::string::String,
}
/// Response to `DeleteWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookResponse {
    /// Ecosystem data after removal of webhook
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to fetch information about an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoRequest {}
/// Response to `InfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoResponse {
    /// Ecosystem corresponding to requested `ecosystem_id`
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to generate an authentication token for the current account
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenRequest {
    /// Description to identify this token
    #[prost(string, tag = "1")]
    pub description: ::prost::alloc::string::String,
}
/// Response to `GenerateTokenRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenResponse {
    /// Account authentication profile that contains unprotected token
    #[prost(message, optional, tag = "1")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
}
/// Request to fetch the Trinsic public key used
/// to verify authentication token validity
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyRequest {}
/// Response to `GetOberonKeyRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyResponse {
    /// Oberon Public Key as RAW base64-url encoded string
    #[prost(string, tag = "1")]
    pub key: ::prost::alloc::string::String,
}
/// Generates an events token bound to the provided ed25519 public key.
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetEventTokenRequest {
    /// Raw public key to generate event token for
    #[prost(bytes = "vec", tag = "1")]
    pub pk: ::prost::alloc::vec::Vec<u8>,
}
/// Response message containing a token (JWT) that can be used
/// to connect directly to the message streaming architecture
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetEventTokenResponse {
    /// JWT bound to the public key provided in `GetEventTokenRequest`
    #[prost(string, tag = "1")]
    pub token: ::prost::alloc::string::String,
}
/// Grant permissions to a resource or path in the ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GrantAuthorizationRequest {
    /// Resource string that account is receiving permissions for.
    /// Resources are specified as a RESTful path: /{ecoId}/{resource type}/{resource id}. `ecoId` may be omitted.
    #[prost(string, tag = "3")]
    pub resource: ::prost::alloc::string::String,
    /// Action to authorize. Default is "*" (all)
    #[prost(string, tag = "4")]
    pub action: ::prost::alloc::string::String,
    #[prost(oneof = "grant_authorization_request::Account", tags = "1, 2")]
    pub account: ::core::option::Option<grant_authorization_request::Account>,
}
/// Nested message and enum types in `GrantAuthorizationRequest`.
pub mod grant_authorization_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account being granted permission.
        /// Mutually exclusive with `walletId`.
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account being granted permission.
        /// Mutually exclusive with `email`.
        #[prost(string, tag = "2")]
        WalletId(::prost::alloc::string::String),
    }
}
/// Response to `GrantAuthorizationRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GrantAuthorizationResponse {}
/// Revoke permissions to a resource or path in the ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RevokeAuthorizationRequest {
    /// Resource string that account is losing permissions for.
    /// Resources are specified as a RESTful path: /{ecoId}/{resource type}/{resource id}. `ecoId` may be omitted.
    #[prost(string, tag = "3")]
    pub resource: ::prost::alloc::string::String,
    /// Action to revoke. Default is "*" (all)
    #[prost(string, tag = "4")]
    pub action: ::prost::alloc::string::String,
    #[prost(oneof = "revoke_authorization_request::Account", tags = "1, 2")]
    pub account: ::core::option::Option<revoke_authorization_request::Account>,
}
/// Nested message and enum types in `RevokeAuthorizationRequest`.
pub mod revoke_authorization_request {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account having permission revoked.
        /// Mutually exclusive with `walletId`.
        #[prost(string, tag = "1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account having permission revoked.
        /// Mutually exclusive with `email`.
        #[prost(string, tag = "2")]
        WalletId(::prost::alloc::string::String),
    }
}
/// Response to `RevokeAuthorizationRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct RevokeAuthorizationResponse {}
/// Fetch list of grants that the current account has access to
/// in its ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetAuthorizationsRequest {}
/// Response to `GetAuthorizationsRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetAuthorizationsResponse {
    /// Grants attached to account
    #[prost(message, repeated, tag = "1")]
    pub grants: ::prost::alloc::vec::Vec<Grant>,
}
/// Type of participant being invited to ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ParticipantType {
    /// Participant is an individual
    Individual = 0,
    /// Participant is an organization
    Organization = 1,
}
impl ParticipantType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ParticipantType::Individual => "participant_type_individual",
            ParticipantType::Organization => "participant_type_organization",
        }
    }
}
/// Generated client implementations.
pub mod provider_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::http::Uri;
    use tonic::codegen::*;
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
        pub fn with_interceptor<F>(inner: T, interceptor: F) -> ProviderClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<<T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody>,
            >,
            <T as tonic::codegen::Service<http::Request<tonic::body::BoxBody>>>::Error: Into<StdError> + Send + Sync,
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
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/CreateEcosystem");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Update an existing ecosystem
        pub async fn update_ecosystem(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateEcosystemRequest>,
        ) -> Result<tonic::Response<super::UpdateEcosystemResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/UpdateEcosystem");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Grant user authorization to ecosystem resources
        pub async fn grant_authorization(
            &mut self,
            request: impl tonic::IntoRequest<super::GrantAuthorizationRequest>,
        ) -> Result<tonic::Response<super::GrantAuthorizationResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/GrantAuthorization");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Revoke user authorization to ecosystem resources
        pub async fn revoke_authorization(
            &mut self,
            request: impl tonic::IntoRequest<super::RevokeAuthorizationRequest>,
        ) -> Result<tonic::Response<super::RevokeAuthorizationResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/RevokeAuthorization");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Retreive the list of permissions for this particular account/ecosystem
        pub async fn get_authorizations(
            &mut self,
            request: impl tonic::IntoRequest<super::GetAuthorizationsRequest>,
        ) -> Result<tonic::Response<super::GetAuthorizationsResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/GetAuthorizations");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Add a webhook endpoint to the ecosystem
        pub async fn add_webhook(
            &mut self,
            request: impl tonic::IntoRequest<super::AddWebhookRequest>,
        ) -> Result<tonic::Response<super::AddWebhookResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/AddWebhook");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Delete a webhook endpoint from the ecosystem
        pub async fn delete_webhook(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteWebhookRequest>,
        ) -> Result<tonic::Response<super::DeleteWebhookResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/DeleteWebhook");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Get ecosystem information
        pub async fn ecosystem_info(
            &mut self,
            request: impl tonic::IntoRequest<super::EcosystemInfoRequest>,
        ) -> Result<tonic::Response<super::EcosystemInfoResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/EcosystemInfo");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Generates an unprotected authentication token that can be used to
        /// configure server side applications
        pub async fn generate_token(
            &mut self,
            request: impl tonic::IntoRequest<super::GenerateTokenRequest>,
        ) -> Result<tonic::Response<super::GenerateTokenResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/GenerateToken");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Invite a user to the ecosystem
        pub async fn invite(
            &mut self,
            request: impl tonic::IntoRequest<super::InviteRequest>,
        ) -> Result<tonic::Response<super::InviteResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/Invite");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Check the status of an invitation
        pub async fn invitation_status(
            &mut self,
            request: impl tonic::IntoRequest<super::InvitationStatusRequest>,
        ) -> Result<tonic::Response<super::InvitationStatusResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/InvitationStatus");
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
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/GetOberonKey");
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Generate a signed token (JWT) that can be used to connect to the message bus
        pub async fn get_event_token(
            &mut self,
            request: impl tonic::IntoRequest<super::GetEventTokenRequest>,
        ) -> Result<tonic::Response<super::GetEventTokenResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/GetEventToken");
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
