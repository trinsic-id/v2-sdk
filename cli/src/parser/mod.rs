use crate::{error::Error, services::Service};
use clap::ArgMatches;

pub mod config;
pub mod provider;
pub mod template;
pub mod trustregistry;
pub mod vc;
pub mod wallet;

pub(crate) fn parse(args: &ArgMatches) -> Result<Service, Error> {
    Ok(if args.subcommand_matches("wallet").is_some() {
        Service::Wallet(wallet::parse(&args.subcommand_matches("wallet").expect("Error parsing request"))?)
    } else if args.subcommand_matches("config").is_some() {
        Service::Config(config::parse(&args.subcommand_matches("config").expect("Error parsing request")))
    } else if args.subcommand_matches("vc").is_some() {
        Service::VerifiableCredential(vc::parse(&args.subcommand_matches("vc").expect("Error parsing request"))?)
    } else if args.subcommand_matches("provider").is_some() {
        Service::Provider(provider::parse(&args.subcommand_matches("provider").expect("Error parsing request"))?)
    } else if args.subcommand_matches("trust-registry").is_some() {
        Service::TrustRegistry(trustregistry::parse(
            &args.subcommand_matches("trust-registry").expect("Error parsing request"),
        )?)
    } else if args.subcommand_matches("template").is_some() {
        Service::Template(template::parse(&args.subcommand_matches("template").expect("Error parsing request"))?)
    } else {
        Service::Unknown
    })
}
