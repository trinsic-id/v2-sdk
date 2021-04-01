mod authentication;
mod didcomm;
mod didkey;
mod issuer;
mod wallet;

use super::parser::Service;

pub fn execute(args: &Service) {
    match args {
        Service::Wallet(args) => wallet::execute(&args),
        Service::DIDKey(args) => didkey::execute(&args),
        Service::DIDComm(args) => didcomm::execute(&args),
        _ => println!("Not yet implemented"),
    }
}
