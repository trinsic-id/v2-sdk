pub mod parser;
pub mod proto;
pub mod services;
pub mod utils;
#[macro_use]
pub(crate) mod macros;

#[macro_use]
extern crate clap;
use std::fmt::Display;

use crate::proto::services::common::v1::{json_payload, JsonPayload};
use crate::services::config::Error;
use clap::{App, AppSettings, ArgMatches};
use colored::Colorize;
use parser::template;
use prost::{DecodeError, Message};
use serde_json::Value;
use services::{config::DefaultConfig, Service};
use yaml_rust::Yaml;

pub static mut DEBUG: bool = false;

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

#[allow(unused_must_use)]
fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml)
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(template::subcommand())
        .get_matches();

    let config = DefaultConfig::from(&matches);
    let service = parser::parse(&matches);

    match services::execute(&service, config) {
        Ok(_) => {}
        Err(err) => match err {
            services::config::Error::IOError => println!("{}", format!("io error").red()),
            services::config::Error::SerializationError => {
                println!("{}", format!("serialization error").red())
            }
            services::config::Error::UnknownCommand => app.print_help().unwrap(),
            Error::APIError(grpc_status) => println!(
                "api error: [{}] {}",
                format!("{}", grpc_status.code()).red(),
                format!("{}", grpc_status.message()).red()
            ),
        },
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn run_custom_command() {
        let yaml = load_yaml!("cli.yaml");
        let matches = App::from_yaml(yaml)
            .get_matches_from_safe(vec![
                "trinsic",
                "config",
                "--server-endpoint",
                "example.com",
            ])
            .unwrap();

        process(yaml, matches)
    }
}
