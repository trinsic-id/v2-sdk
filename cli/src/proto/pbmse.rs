/// JWS
/// Protocol buffer message signing and encryption
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SignedMessage {
    #[prost(bytes = "vec", tag = "1")]
    pub payload: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, repeated, tag = "2")]
    pub signatures: ::prost::alloc::vec::Vec<Signature>,
}
/// Nested message and enum types in `SignedMessage`.
pub mod signed_message {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
    pub struct Header {
        #[prost(string, tag = "1")]
        pub algorithm: ::prost::alloc::string::String,
        #[prost(string, tag = "2")]
        pub key_id: ::prost::alloc::string::String,
        #[prost(string, tag = "3")]
        pub nonce: ::prost::alloc::string::String,
    }
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct Signature {
    #[prost(bytes = "vec", tag = "3")]
    pub signature: ::prost::alloc::vec::Vec<u8>,
    #[prost(oneof = "signature::Header", tags = "1, 2")]
    pub header: ::core::option::Option<signature::Header>,
}
/// Nested message and enum types in `Signature`.
pub mod signature {
    #[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Oneof)]
    pub enum Header {
        #[prost(bytes, tag = "1")]
        Protected(::prost::alloc::vec::Vec<u8>),
        #[prost(message, tag = "2")]
        Unprotected(super::signed_message::Header),
    }
}
// JWE

#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EncryptedMessage {
    #[prost(bytes = "vec", tag = "1")]
    pub iv: ::prost::alloc::vec::Vec<u8>,
    #[prost(bytes = "vec", tag = "2")]
    pub aad: ::prost::alloc::vec::Vec<u8>,
    #[prost(bytes = "vec", tag = "3")]
    pub ciphertext: ::prost::alloc::vec::Vec<u8>,
    #[prost(bytes = "vec", tag = "4")]
    pub tag: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, repeated, tag = "5")]
    pub recipients: ::prost::alloc::vec::Vec<EncryptionRecipient>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EncryptionHeader {
    #[prost(enumeration = "EncryptionMode", tag = "1")]
    pub mode: i32,
    #[prost(enumeration = "EncryptionAlgorithm", tag = "2")]
    pub algorithm: i32,
    #[prost(string, tag = "3")]
    pub key_id: ::prost::alloc::string::String,
    #[prost(string, tag = "4")]
    pub sender_key_id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct EncryptionRecipient {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<EncryptionHeader>,
    #[prost(bytes = "vec", tag = "2")]
    pub content_encryption_key: ::prost::alloc::vec::Vec<u8>,
}
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
pub enum EncryptionMode {
    Direct = 0,
    ContentEncryptionKey = 1,
}
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
pub enum EncryptionAlgorithm {
    Xchacha20poly1305 = 0,
    AesGcm = 1,
}
