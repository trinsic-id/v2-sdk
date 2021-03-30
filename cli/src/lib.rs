use prost::{DecodeError, Message};

pub trait MessageFormatter {
    fn to_vec(&self) -> Vec<u8>;
    fn from_vec<T>(data: &Vec<u8>) -> Result<T, DecodeError>
    where
        T: Message + Default;
}

impl<T> MessageFormatter for T
where
    T: Message + Default,
{
    fn to_vec(&self) -> Vec<u8> {
        let mut data = vec![];
        data.reserve(self.encoded_len());
        self.encode(&mut data).unwrap();
        data
    }

    fn from_vec<U>(data: &Vec<u8>) -> Result<U, DecodeError>
    where
        U: Message + Default,
    {
        U::decode(data.as_slice())
    }
}

pub static SERVER_URL: &str = "http://localhost:5000";
pub static SECURITY_CONTEXT_V1_URL: &str = "https://w3id.org/security/v1";
pub static SECURITY_CONTEXT_V2_URL: &str = "https://w3id.org/security/v2";
pub static SECURITY_CONTEXT_V3_URL: &str = "https://w3id.org/security/v3-unstable";
pub static SECURITY_PROOF_URL: &str = "https://w3id.org/security#proof";
pub static DID_V1_URL: &str = "https://www.w3.org/ns/did/v1";

pub mod utils;
pub mod proto;
pub use proto::pbmse as pbmse;

pub mod google {
    pub mod protobuf {
        pub use crate::proto::google_protobuf::*;
    }
}

pub use proto::trinsic_services::*;
