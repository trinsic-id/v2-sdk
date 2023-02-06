/// Request to invite a participant to an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteRequest {
    /// Type of participant being invited (individual/organization)
    #[prost(enumeration="ParticipantType", tag="1")]
    pub participant: i32,
    /// Description of invitation
    #[prost(string, tag="2")]
    pub description: ::prost::alloc::string::String,
    /// Account details of invitee
    #[prost(message, optional, tag="3")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
}
/// Nested message and enum types in `InviteRequest`.
pub mod invite_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct DidCommInvitation {
    }
}
/// Response to `InviteRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InviteResponse {
    /// ID of created invitation
    #[prost(string, tag="10")]
    pub invitation_id: ::prost::alloc::string::String,
    /// Invitation code -- must be passed back in `LoginRequest`
    #[prost(string, tag="11")]
    pub invitation_code: ::prost::alloc::string::String,
}
/// Request details for the status of an invitation
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusRequest {
    /// ID of invitation, received from `InviteResponse`
    #[prost(string, tag="1")]
    pub invitation_id: ::prost::alloc::string::String,
}
/// Response to `InvitationStatusRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvitationStatusResponse {
    /// Status of invitation
    #[prost(enumeration="invitation_status_response::Status", tag="1")]
    pub status: i32,
    /// Human-readable string with details about invitation status
    #[prost(string, tag="2")]
    pub status_details: ::prost::alloc::string::String,
}
/// Nested message and enum types in `InvitationStatusResponse`.
pub mod invitation_status_response {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
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
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Ecosystem {
    /// URN of the ecosystem
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
    /// Globally unique name for the ecosystem
    #[prost(string, tag="2")]
    pub name: ::prost::alloc::string::String,
    /// Ecosystem description
    #[prost(string, tag="3")]
    pub description: ::prost::alloc::string::String,
    /// External URL associated with the organization or ecosystem entity
    #[deprecated]
    #[prost(string, tag="4")]
    pub uri: ::prost::alloc::string::String,
    /// Configured webhooks, if any
    #[prost(message, repeated, tag="5")]
    pub webhooks: ::prost::alloc::vec::Vec<WebhookConfig>,
    /// Display details
    #[prost(message, optional, tag="6")]
    pub display: ::core::option::Option<EcosystemDisplay>,
    /// Domain
    #[prost(string, tag="7")]
    pub domain: ::prost::alloc::string::String,
}
/// Webhook configured on an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WebhookConfig {
    /// UUID of the webhook
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
    /// HTTPS URL to POST webhook calls to
    #[prost(string, tag="2")]
    pub destination_url: ::prost::alloc::string::String,
    /// Events the webhook is subscribed to
    #[prost(string, repeated, tag="4")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// Last known status of webhook (whether or not Trinsic can successfully reach destination)
    #[prost(string, tag="5")]
    pub status: ::prost::alloc::string::String,
}
/// A grant authorizing `actions` on a `resourceId`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Grant {
    /// the urn of the resource
    #[prost(string, tag="1")]
    pub resource_id: ::prost::alloc::string::String,
    /// list of actions that are allowed
    #[prost(string, repeated, tag="2")]
    pub actions: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// any child grants
    #[prost(message, repeated, tag="3")]
    pub child_grants: ::prost::alloc::vec::Vec<Grant>,
}
/// Request to create an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemRequest {
    /// Globally unique name for the Ecosystem. This name will be
    /// part of the ecosystem-specific URLs and namespaces.
    /// Allowed characters are lowercase letters, numbers, underscore and hyphen.
    /// If not passed, ecosystem name will be auto-generated.
    #[prost(string, tag="1")]
    pub name: ::prost::alloc::string::String,
    /// Ecosystem description
    #[prost(string, tag="2")]
    pub description: ::prost::alloc::string::String,
    /// External URL associated with your organization or ecosystem entity
    #[deprecated]
    #[prost(string, tag="3")]
    pub uri: ::prost::alloc::string::String,
    /// The account details of the owner of the ecosystem
    #[prost(message, optional, tag="4")]
    pub details: ::core::option::Option<super::super::account::v1::AccountDetails>,
    /// New domain URL
    #[prost(string, tag="5")]
    pub domain: ::prost::alloc::string::String,
}
/// Response to `CreateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateEcosystemResponse {
    /// Details of the created ecosystem
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
    /// Account profile for auth of the owner of the ecosystem
    #[prost(message, optional, tag="2")]
    pub profile: ::core::option::Option<super::super::account::v1::AccountProfile>,
    /// Indicates if confirmation of account is required.
    #[prost(enumeration="super::super::account::v1::ConfirmationMethod", tag="3")]
    pub confirmation_method: i32,
}
/// Request to update an ecosystem's metadata
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemRequest {
    /// New description of the ecosystem
    #[prost(string, tag="1")]
    pub description: ::prost::alloc::string::String,
    /// New external URL associated with the organization or ecosystem entity
    #[deprecated]
    #[prost(string, tag="2")]
    pub uri: ::prost::alloc::string::String,
    /// New domain URL
    #[prost(string, tag="3")]
    pub domain: ::prost::alloc::string::String,
    /// New name
    /// string name = 4;
    /// Display details
    #[deprecated]
    #[prost(message, optional, tag="5")]
    pub display: ::core::option::Option<EcosystemDisplayRequest>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemDisplayRequest {
    /// Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform.
    /// EcosystemDisplayDetailsRequest dark = 1;
    #[prost(message, optional, tag="2")]
    pub light: ::core::option::Option<EcosystemDisplayDetailsRequest>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemDisplayDetailsRequest {
    /// string id = 1;
    /// string name = 2;
    ///     string logo_url = 3;
    #[prost(string, tag="4")]
    pub color: ::prost::alloc::string::String,
    #[prost(bytes="vec", tag="5")]
    pub logo_data: ::prost::alloc::vec::Vec<u8>,
    /// MIME type of the file
    #[prost(string, tag="6")]
    pub logo_format: ::prost::alloc::string::String,
}
/// Response to `UpdateEcosystemRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateEcosystemResponse {
    /// Current ecosystem metadata, post-update
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemDisplay {
    ///     Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform.
    ///     EcosystemDisplayDetails dark = 1;
    #[prost(message, optional, tag="2")]
    pub light: ::core::option::Option<EcosystemDisplayDetails>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemDisplayDetails {
    /// string id = 1;
    /// string name = 2;
    #[prost(string, tag="3")]
    pub logo_url: ::prost::alloc::string::String,
    #[prost(string, tag="4")]
    pub color: ::prost::alloc::string::String,
}
/// Request to add a webhook to an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookRequest {
    /// Destination to post webhook calls to.
    /// Must be a reachable HTTPS URL.
    #[prost(string, tag="1")]
    pub destination_url: ::prost::alloc::string::String,
    /// Secret string used for HMAC-SHA256 signing of webhook payloads
    /// to verify that a webhook comes from Trinsic
    #[prost(string, tag="2")]
    pub secret: ::prost::alloc::string::String,
    /// Events to subscribe to. Default is "*" (all events)
    #[prost(string, repeated, tag="3")]
    pub events: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Response to `AddWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddWebhookResponse {
    /// Ecosystem data with new webhook
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to delete a webhook from an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookRequest {
    /// ID of webhook to delete
    #[prost(string, tag="1")]
    pub webhook_id: ::prost::alloc::string::String,
}
/// Response to `DeleteWebhookRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteWebhookResponse {
    /// Ecosystem data after removal of webhook
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to fetch information about an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoRequest {
}
/// Response to `InfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EcosystemInfoResponse {
    /// Ecosystem corresponding to current ecosystem in the account token
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<Ecosystem>,
}
/// Request to fetch information about an ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPublicEcosystemInfoRequest {
    #[prost(string, tag="1")]
    pub ecosystem_id: ::prost::alloc::string::String,
}
/// Response to `InfoRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPublicEcosystemInfoResponse {
    /// Ecosystem corresponding to requested `ecosystem_id`
    #[prost(message, optional, tag="1")]
    pub ecosystem: ::core::option::Option<PublicEcosystemInformation>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PublicEcosystemInformation {
    /// Public name of this ecosystem
    #[prost(string, tag="1")]
    pub name: ::prost::alloc::string::String,
    /// Public domain for the owner of this ecosystem
    #[prost(string, tag="2")]
    pub domain: ::prost::alloc::string::String,
    /// Trinsic verified the domain is owned by the owner of this ecosystem
    #[prost(bool, tag="3")]
    pub domain_verified: bool,
    /// Style display information
    #[prost(message, optional, tag="4")]
    pub style_display: ::core::option::Option<EcosystemDisplay>,
    /// Description of the ecosystem
    #[prost(string, tag="5")]
    pub description: ::prost::alloc::string::String,
}
/// Request to fetch the Trinsic public key used
/// to verify authentication token validity
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyRequest {
}
/// Response to `GetOberonKeyRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetOberonKeyResponse {
    /// Oberon Public Key as RAW base64-url encoded string
    #[prost(string, tag="1")]
    pub key: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RetrieveDomainVerificationRecordRequest {
}
/// Response message containing a TXT record content for domain url verification
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RetrieveDomainVerificationRecordResponse {
    /// TXT record name to use for domain verification
    #[prost(string, tag="1")]
    pub verification_record_name: ::prost::alloc::string::String,
    /// TXT code for domain verification
    #[prost(string, tag="2")]
    pub verification_record_value: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshDomainVerificationStatusRequest {
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshDomainVerificationStatusResponse {
    /// Domain URL verified
    #[prost(string, tag="1")]
    pub domain: ::prost::alloc::string::String,
    /// Specifies if the above `domain` was successfully verified
    #[prost(bool, tag="2")]
    pub domain_verified: bool,
}
/// Search for issuers/holders/verifiers
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchWalletConfigurationsRequest {
    /// SQL filter to execute. `SELECT * FROM _ WHERE \[**queryFilter**\]`
    #[prost(string, tag="1")]
    pub query_filter: ::prost::alloc::string::String,
    /// Token provided by previous `SearchResponse`
    /// if more data is available for query
    #[prost(string, tag="2")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchWalletConfigurationResponse {
    /// Results matching the search query
    #[prost(message, repeated, tag="1")]
    pub results: ::prost::alloc::vec::Vec<WalletConfiguration>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag="2")]
    pub has_more: bool,
    /// Token to fetch next set of results via `SearchRequest`
    #[prost(string, tag="4")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Strongly typed information about wallet configurations
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WalletConfiguration {
    #[prost(string, tag="1")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub email: ::prost::alloc::string::String,
    #[prost(string, tag="3")]
    pub sms: ::prost::alloc::string::String,
    #[prost(string, tag="4")]
    pub wallet_id: ::prost::alloc::string::String,
    #[prost(string, tag="5")]
    pub public_did: ::prost::alloc::string::String,
    #[prost(string, tag="6")]
    pub config_type: ::prost::alloc::string::String,
}
/// Options for creation of DID on the ION network
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IonOptions {
    /// ION network on which DID should be published
    #[prost(enumeration="ion_options::IonNetwork", tag="1")]
    pub network: i32,
}
/// Nested message and enum types in `IonOptions`.
pub mod ion_options {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
    }
}
/// Options for creation of DID on the SOV network
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IndyOptions {
    /// SOV network on which DID should be published
    #[prost(enumeration="indy_options::IndyNetwork", tag="1")]
    pub network: i32,
}
/// Nested message and enum types in `IndyOptions`.
pub mod indy_options {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
    }
}
/// Request to upgrade a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpgradeDidRequest {
    /// DID Method to which wallet should be upgraded
    #[prost(enumeration="super::super::common::v1::SupportedDidMethod", tag="3")]
    pub method: i32,
    #[prost(oneof="upgrade_did_request::Account", tags="1, 2, 6")]
    pub account: ::core::option::Option<upgrade_did_request::Account>,
    #[prost(oneof="upgrade_did_request::Options", tags="4, 5")]
    pub options: ::core::option::Option<upgrade_did_request::Options>,
}
/// Nested message and enum types in `UpgradeDidRequest`.
pub mod upgrade_did_request {
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Account {
        /// Email address of account to upgrade.
        /// Mutually exclusive with `walletId` and `didUri`.
        #[prost(string, tag="1")]
        Email(::prost::alloc::string::String),
        /// Wallet ID of account to upgrade.
        /// Mutually exclusive with `email` and `didUri`.
        #[prost(string, tag="2")]
        WalletId(::prost::alloc::string::String),
        /// DID URI of the account to upgrade.
        /// Mutually exclusive with `email` and `walletId`.
        #[prost(string, tag="6")]
        DidUri(::prost::alloc::string::String),
    }
    #[derive(::serde::Serialize, ::serde::Deserialize)]
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Options {
        /// Configuration for creation of DID on ION network
        #[prost(message, tag="4")]
        IonOptions(super::IonOptions),
        /// Configuration for creation of DID on INDY network
        #[prost(message, tag="5")]
        IndyOptions(super::IndyOptions),
    }
}
/// Response to `UpgradeDIDRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpgradeDidResponse {
    /// New DID of wallet
    #[prost(string, tag="1")]
    pub did: ::prost::alloc::string::String,
}
/// Type of participant being invited to ecosystem
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
        /// Update an existing ecosystem
        pub async fn update_ecosystem(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateEcosystemRequest>,
        ) -> Result<tonic::Response<super::UpdateEcosystemResponse>, tonic::Status> {
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
                "/services.provider.v1.Provider/UpdateEcosystem",
            );
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
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/AddWebhook",
            );
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
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/DeleteWebhook",
            );
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
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/EcosystemInfo",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Get public ecosystem information about *any* ecosystem
        pub async fn get_public_ecosystem_info(
            &mut self,
            request: impl tonic::IntoRequest<super::GetPublicEcosystemInfoRequest>,
        ) -> Result<
            tonic::Response<super::GetPublicEcosystemInfoResponse>,
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
                "/services.provider.v1.Provider/GetPublicEcosystemInfo",
            );
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
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.provider.v1.Provider/Invite",
            );
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
                .map_err(|e| {
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
        /// Retrieve a random hash TXT that can be used to verify domain ownership
        pub async fn retrieve_domain_verification_record(
            &mut self,
            request: impl tonic::IntoRequest<
                super::RetrieveDomainVerificationRecordRequest,
            >,
        ) -> Result<
            tonic::Response<super::RetrieveDomainVerificationRecordResponse>,
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
                "/services.provider.v1.Provider/RetrieveDomainVerificationRecord",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Call to verify domain
        pub async fn refresh_domain_verification_status(
            &mut self,
            request: impl tonic::IntoRequest<
                super::RefreshDomainVerificationStatusRequest,
            >,
        ) -> Result<
            tonic::Response<super::RefreshDomainVerificationStatusResponse>,
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
                "/services.provider.v1.Provider/RefreshDomainVerificationStatus",
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
