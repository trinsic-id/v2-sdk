use clap::ArgMatches;

#[derive(Debug, PartialEq)]
pub enum Command {
    Search(SearchArgs),
    RegisterIssuer(RegistrationArgs),
    RegisterVerifier(RegistrationArgs),
    CheckIssuer(RegistrationArgs),
    CheckVerifier(RegistrationArgs),
    UnregisterIssuer(RegistrationArgs),
    UnregisterVerifier(RegistrationArgs),
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

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command {
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
    } else {
        panic!("Unrecognized command")
    }
}

fn search<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::Search(SearchArgs {
        query: args.value_of("query").map(|q| q.into()),
    })
}

fn register_issuer<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::RegisterIssuer(RegistrationArgs {
        did_uri: args.value_of("did-uri").map(|q| q.into()),
        type_uri: args.value_of("credential-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    })
}

fn register_verifier<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::RegisterVerifier(RegistrationArgs {
        did_uri: args.value_of("did-uri").map(|q| q.into()),
        type_uri: args.value_of("presentation-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    })
}

fn check_issuer<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::CheckIssuer(RegistrationArgs {
        did_uri: args.value_of("did-uri").map(|q| q.into()),
        type_uri: args.value_of("credential-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    })
}

fn check_verifier<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::CheckVerifier(RegistrationArgs {
        did_uri: args.value_of("did-uri").map(|q| q.into()),
        type_uri: args.value_of("presentation-type").map(|q| q.into()),
        governance_framework_uri: args.value_of("egf").map(|q| q.into()),
        ..Default::default()
    })
}
