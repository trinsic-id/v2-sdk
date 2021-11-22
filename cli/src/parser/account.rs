use clap::ArgMatches;

use crate::services::config::Error;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("sign-in") {
        return sign_in(
            &args
                .subcommand_matches("sign-in")
                .expect("Error parsing request"),
        );
    } else if args.is_present("info") {
        return info(
            &args
                .subcommand_matches("info")
                .expect("Error parsing request"),
        );
    } else {
        panic!("Unrecognized command")
    }
}

fn sign_in<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::SignIn(SignInArgs {
        name: args.value_of("name"),
        email: args.value_of("email"),
        sms: args.value_of("sms"),
        invitation_code: args.value_of("invitation-code"),
        alias: args.value_of("alias"),
        set_default: args.is_present("default"),
    })
}

fn info<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Info(InfoArgs {})
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    SignIn(SignInArgs<'a>),
    Info(InfoArgs),
}

#[derive(Debug, PartialEq)]
pub struct SignInArgs<'a> {
    pub invitation_code: Option<&'a str>,
    pub name: Option<&'a str>,
    pub alias: Option<&'a str>,
    pub set_default: bool,
    pub email: Option<&'a str>,
    pub sms: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct InfoArgs {}
