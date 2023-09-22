/// Account registration details
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AccountDetails {
    /// Account name
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    /// Email address of account.
    #[deprecated]
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
    /// SMS number including country code
    #[deprecated]
    #[prost(string, tag = "3")]
    pub sms: ::prost::alloc::string::String,
}
/// Token protection info
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TokenProtection {
    /// Indicates if token is protected using a PIN,
    /// security code, HSM secret, etc.
    #[prost(bool, tag = "1")]
    pub enabled: bool,
    /// The method used to protect the token
    #[prost(enumeration = "ConfirmationMethod", tag = "2")]
    pub method: i32,
}
/// Device profile containing sensitive authentication data.
/// This information should be stored securely
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
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
/// Information about authentication tokens for a wallet
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WalletAuthToken {
    /// Unique identifier for the token.
    /// This field will match the `DeviceId` in the WalletAuthData
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    /// Device name/description
    #[prost(string, optional, tag = "2")]
    pub description: ::core::option::Option<::prost::alloc::string::String>,
    /// Date when the token was created in ISO 8601 format
    #[prost(string, tag = "3")]
    pub date_created: ::prost::alloc::string::String,
}
/// Confirmation method type for two-factor workflows
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
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
    /// Third-party method of confirmation is required
    Other = 10,
}
impl ConfirmationMethod {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ConfirmationMethod::None => "None",
            ConfirmationMethod::Email => "Email",
            ConfirmationMethod::Sms => "Sms",
            ConfirmationMethod::ConnectedDevice => "ConnectedDevice",
            ConfirmationMethod::Other => "Other",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "None" => Some(Self::None),
            "Email" => Some(Self::Email),
            "Sms" => Some(Self::Sms),
            "ConnectedDevice" => Some(Self::ConnectedDevice),
            "Other" => Some(Self::Other),
            _ => None,
        }
    }
}
