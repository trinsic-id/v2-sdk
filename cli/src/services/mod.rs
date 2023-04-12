pub(crate) mod config;
mod provider;
mod template;
mod trustregistry;
mod vc;
mod wallet;

use std::collections::BTreeMap;

use serde::Serialize;
use serde_json::Value;

use self::config::CliConfig;
use crate::error::Error;

pub(crate) fn execute(args: &Service, config: CliConfig) -> Result<Output, Error> {
    match args {
        Service::Wallet(args) => wallet::execute(&args, config),
        Service::VerifiableCredential(args) => vc::execute(&args, config),
        Service::Provider(args) => provider::execute(&args, config),
        Service::Config(args) => config::execute(&args),
        Service::TrustRegistry(args) => trustregistry::execute(&args, &config),
        Service::Template(args) => template::execute(&args, &config),
        _ => Err(Error::UnknownCommand),
    }
}

#[derive(Debug, PartialEq)]
pub(crate) enum Service<'a> {
    Wallet(crate::parser::wallet::Command<'a>),
    VerifiableCredential(crate::parser::vc::Command<'a>),
    Provider(crate::parser::provider::Command<'a>),
    Config(crate::parser::config::ConfigCommand),
    TrustRegistry(crate::parser::trustregistry::TrustRegistryCommand),
    Template(crate::parser::template::TemplateCommand),
    Unknown,
}

type Output = BTreeMap<String, Item>;

#[derive(Serialize, Debug, PartialEq)]
#[serde(untagged)]
pub(crate) enum Item {
    String(String),
    Json(Value),
}
