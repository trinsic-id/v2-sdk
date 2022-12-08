/// Nonce used to generate an oberon proof
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Nonce {
    /// UTC unix millisecond timestamp the request was made
    #[prost(int64, tag="1")]
    pub timestamp: i64,
    /// blake3256 hash of the request body
    #[prost(bytes="vec", tag="2")]
    pub request_hash: ::prost::alloc::vec::Vec<u8>,
}
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ResponseStatus {
    Success = 0,
    WalletAccessDenied = 10,
    WalletExists = 11,
    ItemNotFound = 20,
    SerializationError = 200,
    UnknownError = 100,
}
impl ResponseStatus {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ResponseStatus::Success => "SUCCESS",
            ResponseStatus::WalletAccessDenied => "WALLET_ACCESS_DENIED",
            ResponseStatus::WalletExists => "WALLET_EXISTS",
            ResponseStatus::ItemNotFound => "ITEM_NOT_FOUND",
            ResponseStatus::SerializationError => "SERIALIZATION_ERROR",
            ResponseStatus::UnknownError => "UNKNOWN_ERROR",
        }
    }
}
/// Enum of all supported DID Methods
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum SupportedDidMethod {
    /// The did:key method -- all wallets use this by default
    Key = 0,
    /// The did:ion method
    Ion = 1,
}
impl SupportedDidMethod {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            SupportedDidMethod::Key => "KEY",
            SupportedDidMethod::Ion => "ION",
        }
    }
}
