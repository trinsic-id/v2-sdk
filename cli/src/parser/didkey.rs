use clap::ArgMatches;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("generate") {
        return generate_key(
            &args
                .subcommand_matches("generate")
                .expect("Error parsing request"),
        );
    } else if args.is_present("resolve") {
        return resolve(
            &args
                .subcommand_matches("resolve")
                .expect("Error parsing request"),
        );
    } else {
        panic!("Unrecognized command");
    }
}

fn generate_key<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Generate(GenerateArgs {
        out: args.value_of("out"),
        kty: args.value_of("kty"),
    })
}

fn resolve<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Resolve(ResolveArgs {
        uri: args.value_of("uri"),
    })
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    Generate(GenerateArgs<'a>),
    Resolve(ResolveArgs<'a>),
}

#[derive(Debug, PartialEq)]
pub struct GenerateArgs<'a> {
    pub out: Option<&'a str>,
    pub kty: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct ResolveArgs<'a> {
    pub uri: Option<&'a str>,
}
