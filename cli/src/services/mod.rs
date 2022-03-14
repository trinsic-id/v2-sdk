mod account;
pub(crate) mod config;
mod provider;
mod template;
mod trustregistry;
mod vc;
mod wallet;

use indexmap::IndexMap;

use self::config::CliConfig;
use crate::error::Error;

pub(crate) fn execute(args: &Service, config: CliConfig) -> Result<Output, Error> {
    match args {
        Service::Wallet(args) => wallet::execute(&args, config),
        Service::Account(args) => account::execute(&args, config),
        Service::VerifiableCredential(args) => vc::execute(&args, config),
        Service::Provider(args) => provider::execute(&args, config),
        Service::Config(args) => Ok(config::execute(&args)).map(|_| Output::new()),
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
    Account(crate::parser::account::Command<'a>),
    TrustRegistry(crate::parser::trustregistry::Command),
    Template(crate::parser::template::TemplateCommand),
    Unknown,
}

// type Output = BTreeMap<String, String>;
type Output = IndexMap<String, String>;
