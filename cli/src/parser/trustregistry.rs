use clap::ArgMatches;

use crate::services::config::Error;

#[derive(Debug, PartialEq)]
pub enum Command {
    Search(SearchArgs),
    RegisterIssuer(RegistrationArgs),
    RegisterVerifier(RegistrationArgs),
    CheckIssuer(RegistrationArgs),
    CheckVerifier(RegistrationArgs),
    UnregisterIssuer(RegistrationArgs),
    UnregisterVerifier(RegistrationArgs),
    RegisterEgf(AddFrameworkArgs),
    UnregisterEgf(RemoveFrameworkArgs),
}

#[derive(Debug, PartialEq, Clone)]
pub struct SearchArgs {
    pub query: Option<String>,
}

#[derive(Debug, PartialEq, Clone)]
pub struct GovernanceFrameworkArgs {
    pub governance_framework_uri: Option<String>,
    pub description: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct RegistrationArgs {
    pub did_uri: Option<String>,
    pub type_uri: Option<String>,
    pub governance_framework_uri: Option<String>,
    pub valid_from: u64,
    pub valid_to: u64,
}

#[derive(Debug, PartialEq, Default)]
pub struct AddFrameworkArgs {
    pub governance_framework_uri: String,
    pub description: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct RemoveFrameworkArgs {
    pub governance_framework_uri: String,
}

pub(crate) fn parse(args: &ArgMatches) -> Result<Command, Error> {
    if args.is_present("search") {
        search(
            &args
                .subcommand_matches("search")
                .expect("Error parsing request"),
        )
    } else if args.is_present("register-issuer") {
        register_issuer(
            &args
                .subcommand_matches("register-issuer")
                .expect("Error parsing request"),
        )
    } else if args.is_present("register-verifier") {
        register_verifier(
            &args
                .subcommand_matches("register-verifier")
                .expect("Error parsing request"),
        )
    } else if args.is_present("unregister-issuer") {
        unregister_issuer(
            &args
                .subcommand_matches("unregister-issuer")
                .expect("Error parsing request"),
        )
    } else if args.is_present("unregister-verifier") {
        unregister_verifier(
            &args
                .subcommand_matches("unregister-verifier")
                .expect("Error parsing request"),
        )
    } else if args.is_present("check-issuer") {
        check_issuer(
            &args
                .subcommand_matches("check-issuer")
                .expect("Error parsing request"),
        )
    } else if args.is_present("check-verifier") {
        check_verifier(
            &args
                .subcommand_matches("check-verifier")
                .expect("Error parsing request"),
        )
    } else if args.is_present("register-egf") {
        add_egf(
            &args
                .subcommand_matches("register-egf")
                .expect("Error parsing request"),
        )
    } else if args.is_present("unregister-egf") {
        remove_egf(
            &args
                .subcommand_matches("unregister-egf")
                .expect("Error parsing request"),
        )
    } else {
        Err(Error::MissingArguments)
    }
}

fn search<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::Search(SearchArgs {
        query: args.value_of("query").map(|q| q.into()),
    }))
}

fn register_issuer<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::RegisterIssuer(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("credential-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn register_verifier<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::RegisterVerifier(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("presentation-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn unregister_issuer<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::UnregisterIssuer(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("credential-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn unregister_verifier<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::UnregisterVerifier(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("presentation-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn check_issuer<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::CheckIssuer(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("credential-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn check_verifier<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::CheckVerifier(RegistrationArgs {
        did_uri: args.value_of("did").map(|q| q.into()),
        type_uri: args.value_of("presentation-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    }))
}

fn add_egf<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::RegisterEgf(AddFrameworkArgs {
        governance_framework_uri: args.value_of("uri").map_or(String::default(), |q| q.into()),
        description: args.value_of("description").map(|x| x.into()),
    }))
}

fn remove_egf<'a>(args: &'a ArgMatches<'_>) -> Result<Command, Error> {
    Ok(Command::UnregisterEgf(RemoveFrameworkArgs {
        governance_framework_uri: args.value_of("uri").map_or(String::default(), |q| q.into()),
    }))
}
