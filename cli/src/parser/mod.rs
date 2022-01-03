use crate::services::Service;
use clap::ArgMatches;

pub mod account;
pub mod config;
pub mod didcomm;
pub mod didkey;
pub mod issuer;
pub mod provider;
pub mod template;
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
    } else if args.is_present("vc") {
        return Service::VerifiableCredential(issuer::parse(
            &args
                .subcommand_matches("vc")
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
    } else if args.is_present("template") {
        return Service::Template(template::parse(
            &args
                .subcommand_matches("template")
                .expect("Error parsing request"),
        ));
    } else {
        Service::Unknown
    }
}
