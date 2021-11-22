use clap::ArgMatches;

pub mod account;
pub mod config;
pub mod didcomm;
pub mod didkey;
pub mod issuer;
pub mod provider;
pub mod trustregistry;
pub mod wallet;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Service<'a> {
    if args.is_present("didkey") {
        Service::DIDKey(didkey::parse(
            &args
                .subcommand_matches("didkey")
                .expect("Error parsing request"),
        ))
    } else if args.is_present("didcomm") {
        Service::DIDComm(didcomm::parse(
            &args
                .subcommand_matches("didcomm")
                .expect("Error parsing request"),
        ))
    } else if args.is_present("wallet") {
        Service::Wallet(wallet::parse(
            &args
                .subcommand_matches("wallet")
                .expect("Error parsing request"),
        ))
    } else if args.is_present("config") {
        Service::Config(config::parse(
            &args
                .subcommand_matches("config")
                .expect("Error parsing request"),
        ))
    } else if args.is_present("issuer") {
        return Service::Issuer(issuer::parse(
            &args
                .subcommand_matches("issuer")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("account") {
        return Service::Account(account::parse(
            &args
                .subcommand_matches("account")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("provider") {
        return Service::Provider(provider::parse(
            &args
                .subcommand_matches("provider")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("trust-registry") {
        return Service::TrustRegistry(trustregistry::parse(
            &args
                .subcommand_matches("trust-registry")
                .expect("Error parsing request"),
        ));
    } else {
        Service::Unknown
    }
}

#[derive(Debug, PartialEq)]
pub enum Service<'a> {
    DIDComm(didcomm::Command<'a>),
    DIDKey(didkey::Command<'a>),
    Wallet(wallet::Command<'a>),
    Issuer(issuer::Command<'a>),
    Provider(provider::Command<'a>),
    Config(config::Command<'a>),
    Account(account::Command<'a>),
    TrustRegistry(trustregistry::Command),
    Unknown,
}
