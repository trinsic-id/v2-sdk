pub mod parser;
pub mod proto;
pub mod services;
pub mod utils;
#[macro_use]
pub(crate) mod macros;
pub(crate) mod error;

#[macro_use]
extern crate clap;
use crate::error::Error;
use clap::{App, AppSettings};
use colored::Colorize;
use parser::template;
use prost::{DecodeError, Message};
use serde::Serialize;
use serde_json::Value;
use services::config::CliConfig;

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

#[allow(unused_must_use)]
fn main() {
    let yaml = load_yaml!("cli.yaml");
    let app = App::from_yaml(yaml)
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(template::subcommand());
    let matches = app.get_matches();

    let config = CliConfig::from(&matches);

    match parser::parse(&matches) {
        Ok(service) => match services::execute(&service, config) {
            Ok(output) => {
                println!("{}", "ok".bold().green());
                for (key, value) in output.iter() {
                    println!("{}", format!("[{}]", key).bold());
                    println!("{}", value.italic());
                    println!();
                }
            }
            Err(err) => match err {
                Error::IOError => println!("{}", format!("io error").red()),
                Error::SerializationError => {
                    println!("{}", format!("serialization error").red())
                }
                Error::UnknownCommand => unimplemented!("should not be hit"),
                Error::APIError { code, message } => {
                    println!(
                        "{}: {}: {}",
                        format!("error").red().bold(),
                        format!("{}", code.to_lowercase()).bold(),
                        format!("{}", message.to_lowercase())
                    );
                }
                Error::MissingArguments => todo!(),
            },
        },
        Err(err) => {
            println!(
                "{}: {}: {}",
                format!("error").red().bold(),
                format!("command error").bold(),
                format!("{}", err)
            );
            println!();
            println!(
                "{}",
                format!("For more information try {}", format!("--help").green()).italic()
            )
        }
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

        // process(yaml, matches)
    }
}
