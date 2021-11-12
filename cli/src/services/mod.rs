pub(crate) mod config;
mod didcomm;
mod didkey;
mod issuer;
mod provider;
mod trustregistry;
mod wallet;

use self::config::DefaultConfig;
use super::parser::Service;

pub(crate) fn execute(args: &Service, config: DefaultConfig) {
    match args {
        Service::Wallet(args) => wallet::execute(&args, config).unwrap(),
        Service::DIDKey(args) => didkey::execute(&args),
        Service::DIDComm(args) => didcomm::execute(&args),
        Service::Issuer(args) => issuer::execute(&args, config),
        Service::Provider(args) => provider::execute(&args, config).unwrap(),
        Service::Config(args) => config::execute(&args),
        Service::TrustRegistry(args) => trustregistry::execute(&args, &config).unwrap(),
        _ => println!("Not yet implemented"),
    }
}
