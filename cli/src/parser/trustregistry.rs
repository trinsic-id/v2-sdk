use clap::ArgMatches;

#[derive(Debug, PartialEq)]
pub enum Command {
    Search(SearchArgs),
    RegisterIssuer(RegistrationArgs),
    RegisterVerifier(RegistrationArgs),
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

#[derive(Debug, PartialEq)]
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
    } else {
        panic!("Unrecognized command")
    }
}

fn search<'a>(args: &'a ArgMatches<'_>) -> Command {
    Command::Search(SearchArgs {
        query: args.value_of("query").map(|q| q.into()),
    })
}
