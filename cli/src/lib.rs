use error::Error;
use prost::{DecodeError, Message};
use serde::Serialize;

pub mod parser;
pub mod proto;
pub mod services;
pub mod utils;
#[macro_use]
pub(crate) mod macros;
pub(crate) mod error;

pub static mut DEBUG: bool = false;

pub(crate) trait MessageFormatter {
    fn to_vec(&self) -> Vec<u8>;
    fn from_vec<T>(data: &Vec<u8>) -> Result<T, DecodeError>
    where
        T: Message + Default;
    fn to_string_pretty(&self) -> Result<String, Error>;
}

impl<T> MessageFormatter for T
where
    T: Message + Default + Serialize,
{
    fn to_vec(&self) -> Vec<u8> {
        let mut data = vec![];
        data.reserve(self.encoded_len());
        self.encode(&mut data).unwrap();
        data
    }

    fn to_string_pretty(&self) -> Result<String, Error> {
        Ok(serde_json::to_string_pretty(self)?)
    }

    fn from_vec<U>(data: &Vec<u8>) -> Result<U, DecodeError>
    where
        U: Message + Default,
    {
        U::decode(data.as_slice())
    }
}
