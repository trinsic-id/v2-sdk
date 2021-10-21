use std::fmt::Display;

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

impl Display for JsonPayload {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_fmt(format_args!(
            "{}",
            match self.json.as_ref().unwrap() {
                json_payload::Json::JsonStruct(x) =>
                    serde_json::to_string_pretty(&x).unwrap_or_default(),
                json_payload::Json::JsonString(x) => serde_json::to_string_pretty(
                    &serde_json::from_str::<Value>(&x).unwrap_or_default()
                )
                .unwrap_or_default(),
                json_payload::Json::JsonBytes(x) => serde_json::to_string_pretty(
                    &serde_json::from_slice::<Value>(&x).unwrap_or_default()
                )
                .unwrap_or_default(),
            }
        ))
    }
}

pub mod proto;
pub mod utils;
#[macro_use]
pub(crate) mod macros;

// pub mod google {
//     pub mod protobuf {
//         pub use crate::proto::google::protobuf::*;
//     }
// }

use proto::services::common::v1::json_payload;
use proto::services::common::v1::JsonPayload;
use serde_json::Value;
