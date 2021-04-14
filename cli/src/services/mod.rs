pub(crate) mod config;
mod didcomm;
mod didkey;
mod issuer;
mod wallet;

use self::config::Config;
use super::parser::Service;

pub(crate) fn execute(args: &Service, config: Config) {
    match args {
        Service::Wallet(args) => wallet::execute(&args, config).unwrap(),
        Service::DIDKey(args) => didkey::execute(&args),
        Service::DIDComm(args) => didcomm::execute(&args),
        Service::Issuer(args) => issuer::execute(&args),
        Service::Config(args) => config::execute(&args),
        _ => println!("Not yet implemented"),
    }
}
