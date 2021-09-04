use clap::ArgMatches;

#[derive(Debug, PartialEq)]
pub enum Command {
    Search(SearchArgs),
    RegisterIssuer(RegisterIssuerArgs),
    RegisterVerifier(RegisterVerifierArgs),
}

#[derive(Debug, PartialEq, Clone)]
pub struct SearchArgs {
    pub query: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct RegisterIssuerArgs {}

#[derive(Debug, PartialEq)]
pub struct RegisterVerifierArgs {}

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
