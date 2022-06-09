#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
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
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InviteResponse {
    /// ID of created invitation
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
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusRequest {
    /// ID of invitation
    #[prost(string, tag = "1")]
    pub invitation_id: ::prost::alloc::string::String,
}
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
}
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
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct WebhookConfig {
    /// UUID of the webhook
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    /// Destination to post webhook calls to
    #[prost(string, tag = "2")]
    pub destination_url: ::prost::alloc::string::String,
    /// Events the webhook is subscribed to
    #[prost(string, repeated, tag = "4")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemRequest {
    /// Globally unique name for the Ecosystem. This name will be
    /// part of the ecosystem specific URLs and namespaces.
    /// Allowed characters are lowercase letters, numbers, underscore and hyphen.
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
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemResponse {
    /// Details of the created ecosystem
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
    /// Account profile for auth of the owner of the ecosystem
    #[prost(message, optional, tag = "2")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
    /// Indicates if confirmation of account is required.
    /// This setting is configured globally by the server administrator.
    #[prost(enumeration = "super::super::account::v1::ConfirmationMethod", tag = "3")]
    pub confirmation_method: i32,
}
/// Request to update an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemRequest {
    /// ID of the ecosystem to update
    #[prost(string, tag = "1")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// Description of the ecosystem
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    /// External URL associated with the organization or ecosystem entity
    #[prost(string, tag = "3")]
    pub uri: ::prost::alloc::string::String,
}
/// Response to `UpdateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemResponse {
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to add a webhook to an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookRequest {
    /// ID of ecosystem to add webhook to
    #[prost(string, tag = "1")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// Destination to post webhook calls to
    #[prost(string, tag = "2")]
    pub destination_url: ::prost::alloc::string::String,
    /// HMAC secret for webhook validation
    #[prost(string, tag = "3")]
    pub secret: ::prost::alloc::string::String,
    /// Events to subscribe to. Default is "*" (all events)
    #[prost(string, repeated, tag = "4")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Response to `AddWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookResponse {
    /// Ecosystem with new webhook
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to delete a webhook from an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookRequest {
    /// ID of ecosystem from which to delete webhook
    #[prost(string, tag = "1")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// ID of webhook to delete
    #[prost(string, tag = "2")]
    pub webhook_id: ::prost::alloc::string::String,
}
/// Response to `DeleteWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookResponse {
    /// Ecosystem after removal of webhook
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to fetch information about an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoRequest {
    /// ID of ecosystem to fetch information about
    #[prost(string, tag = "1")]
    pub ecosystem_id: ::prost::alloc::string::String,
}
/// Response to `InfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoResponse {
    /// Ecosystem corresponding to requested `ecosystem_id`
    #[prost(message, optional, tag = "1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenRequest {
    /// Description to identify this token
    #[prost(string, tag = "1")]
    pub description: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GenerateTokenResponse {
    /// Account authentication profile that contains unprotected token
    #[prost(message, optional, tag = "1")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
}
/// request message for GetOberonKey
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyRequest {}
/// response message for GetOberonKey
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyResponse {
    /// Oberon Public Key as RAW base64 URL encoded string
    #[prost(string, tag = "1")]
    pub key: ::prost::alloc::string::String,
}
/// generates an events token bound to the provided ed25519 pk
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetEventTokenRequest {
    ///
    #[prost(bytes = "vec", tag = "1")]
    pub pk: ::prost::alloc::vec::Vec<u8>,
}
/// response message containing a token (JWT) that can be used
/// to connect directly to the message streaming architecture
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetEventTokenResponse {
    /// a JWT bound to the PK provided in the request
    #[prost(string, tag = "1")]
    pub token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
        pub fn with_interceptor<F>(inner: T, interceptor: F) -> ProviderClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<<T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody>,
            >,
            <T as tonic::codegen::Service<http::Request<tonic::body::BoxBody>>>::Error: Into<StdError> + Send + Sync,
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
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/CreateEcosystem");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Update an existing ecosystem"]
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
        #[doc = " Add a webhook endpoint to the ecosystem"]
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
        #[doc = " Delete a webhook endpoint from the ecosystem"]
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
        #[doc = " Get ecosystem information"]
        pub async fn info(
            &mut self,
            request: impl tonic::IntoRequest<super::EcosystemInfoRequest>,
        ) -> Result<tonic::Response<super::EcosystemInfoResponse>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| tonic::Status::new(tonic::Code::Unknown, format!("Service was not ready: {}", e.into())))?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static("/services.provider.v1.Provider/Info");
            self.inner.unary(request.into_request(), path, codec).await
        }
        #[doc = " Generates an unprotected authentication token that can be used to"]
        #[doc = " configure server side applications"]
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
        #[doc = " Invite a user to the ecosystem"]
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
        #[doc = " Check the invitation status"]
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
        #[doc = " Returns the public key being used to create/verify oberon tokens"]
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
        #[doc = " Generate a signed token (JWT) that can be used to connect to the message bus"]
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
