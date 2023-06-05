use crate::error::Error;
use clap::ArgMatches;
use std::fmt::{self, Display, Formatter};

pub(crate) fn parse(args: &ArgMatches) -> Result<Command, Error> {
    if args.subcommand_matches("create-ecosystem").is_some() {
        create_ecosystem(args.subcommand_matches("create-ecosystem").ok_or(Error::MissingArguments)?)
    } else if args.subcommand_matches("upgrade-did").is_some() {
        upgrade_did(args.subcommand_matches("upgrade-did").ok_or(Error::MissingArguments)?)
    } else {
        Err(Error::MissingArguments)
    }
}

fn create_ecosystem(args: &ArgMatches) -> Result<Command, Error> {
    let ecosystem = CreateEcosystemArgs {
        name: args.value_of("name").map(|x| x.into()),
        email: args.value_of("email").map(|x| x.into()),
        alias: args.value_of("alias").map_or("default".to_string(), |x| x.into()),
    };

    Ok(Command::CreateEcosystem(ecosystem))
}

fn upgrade_did(args: &ArgMatches) -> Result<Command, Error> {
    let ecosystem = UpgradeDidArgs {
        method: args.value_of("method").ok_or_else(|| Error::MissingArguments)?.into(),
        email: args.value_of("email").map(|x| x.into()),
        wallet_id: args.value_of("wallet-id").map(|x| x.into()),
        method_options: args.value_of("method-options").map(|x| x.into()),
    };

    Ok(Command::UpgradeDid(ecosystem))
}

#[derive(Debug, PartialEq)]
pub enum Command {
    CreateEcosystem(CreateEcosystemArgs),
    UpgradeDid(UpgradeDidArgs),
}

#[derive(Debug, PartialEq)]
pub struct CreateEcosystemArgs {
    pub name: Option<String>,
    pub email: Option<String>,
    pub alias: String,
}

#[derive(Debug, PartialEq)]
pub struct UpgradeDidArgs {
    pub method: String,
    pub method_options: Option<String>,
    pub email: Option<String>,
    pub wallet_id: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct Member {
    pub name: String,
    pub email: String,
}

impl Display for Member {
    fn fmt(&self, f: &mut Formatter) -> fmt::Result {
        write!(f, "name: {}\nemail: {}", self.name, self.email)
    }
}
