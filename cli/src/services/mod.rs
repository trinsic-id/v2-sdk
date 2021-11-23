mod account;
pub(crate) mod config;
mod didcomm;
mod didkey;
mod issuer;
mod provider;
mod trustregistry;
mod wallet;

use self::config::{DefaultConfig, Error};
use super::parser::Service;

pub(crate) fn execute(args: &Service, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Service::Wallet(args) => wallet::execute(&args, config),
        Service::Account(args) => account::execute(&args, config),
        Service::VerifiableCredential(args) => Ok(issuer::execute(&args, config)),
        Service::Provider(args) => provider::execute(&args, config),
        Service::Config(args) => Ok(config::execute(&args)),
        Service::TrustRegistry(args) => trustregistry::execute(&args, &config),
        _ => Err(Error::UnknownCommand),
    }
}
