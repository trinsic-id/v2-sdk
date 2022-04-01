use clap::ArgMatches;

use crate::error::Error;

pub(crate) fn parse<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    if args.is_present("login") {
        sign_in(
            &args
                .subcommand_matches("login")
                .expect("Error parsing request"),
        )
    } else if args.is_present("info") {
        info(
            &args
                .subcommand_matches("info")
                .expect("Error parsing request"),
        )
    } else {
        Err(Error::MissingArguments)
    }
}

fn sign_in<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::SignIn(SignInArgs {
        name: args.value_of("name"),
        email: args.value_of("email"),
        sms: args.value_of("sms"),
        invitation_code: args.value_of("invitation-code"),
        ecosystem: args.value_of("ecosystem").map(|x| x.into()),
    }))
}

fn info<'a>(_args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::Info(InfoArgs {}))
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
    pub email: Option<&'a str>,
    pub sms: Option<&'a str>,
    pub ecosystem: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct InfoArgs {}
