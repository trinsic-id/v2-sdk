use crate::{error::Error, services::Service};
use clap::ArgMatches;

pub mod account;
pub mod config;
pub mod provider;
pub mod template;
pub mod trustregistry;
pub mod vc;
pub mod wallet;

pub(crate) fn parse<'a>(args: &'a ArgMatches) -> Result<Service<'a>, Error> {
    Ok(if args.is_present("wallet") {
        Service::Wallet(wallet::parse(&args.subcommand_matches("wallet").expect("Error parsing request"))?)
    } else if args.is_present("config") {
        Service::Config(config::parse(&args.subcommand_matches("config").expect("Error parsing request")))
    } else if args.is_present("vc") {
        Service::VerifiableCredential(vc::parse(&args.subcommand_matches("vc").expect("Error parsing request"))?)
    } else if args.is_present("account") {
        Service::Account(account::parse(&args.subcommand_matches("account").expect("Error parsing request"))?)
    } else if args.is_present("provider") {
        Service::Provider(provider::parse(&args.subcommand_matches("provider").expect("Error parsing request"))?)
    } else if args.is_present("trust-registry") {
        Service::TrustRegistry(trustregistry::parse(
            &args.subcommand_matches("trust-registry").expect("Error parsing request"),
        )?)
    } else if args.is_present("template") {
        Service::Template(template::parse(&args.subcommand_matches("template").expect("Error parsing request"))?)
    } else {
        Service::Unknown
    })
}
