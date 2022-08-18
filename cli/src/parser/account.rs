use clap::ArgMatches;

use crate::error::Error;

pub(crate) fn parse<'a>(args: &'a ArgMatches) -> Result<Command<'a>, Error> {
    if args.is_present("login") {
        sign_in(&args.subcommand_matches("login").expect("Error parsing request"))
    } else if args.is_present("info") {
        info(&args.subcommand_matches("info").expect("Error parsing request"))
    } else if args.is_present("authorize-webhook") {
        authorize_webhook(&args.subcommand_matches("authorize-webhook").expect("Error parsing request"))
    } else {
        Err(Error::MissingArguments)
    }
}

fn sign_in<'a>(args: &'a ArgMatches) -> Result<Command<'a>, Error> {
    Ok(Command::SignIn(SignInArgs {
        email: args.value_of("email"),
        invitation_code: args.value_of("invitation-code"),
        ecosystem: args.value_of("ecosystem").map(|x| x.into()),
    }))
}

fn info<'a>(_args: &'a ArgMatches) -> Result<Command<'a>, Error> {
    Ok(Command::Info(InfoArgs {}))
}

fn authorize_webhook<'a>(args: &'a ArgMatches) -> Result<Command<'a>, Error> {
    // Get the events arg
    let events_val: &'a str = args.value_of("events").unwrap();

    // Split on comma
    let split = events_val.split(",");

    // Fill a Vec<String> with the split contents
    let mut events = vec![];
    events.extend(split.into_iter().map(|x| x.into()));

    Ok(Command::AuthorizeWebhook(AuthorizeWebhookArgs { events }))
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    SignIn(SignInArgs<'a>),
    Info(InfoArgs),
    AuthorizeWebhook(AuthorizeWebhookArgs),
}

#[derive(Debug, PartialEq)]
pub struct SignInArgs<'a> {
    pub invitation_code: Option<&'a str>,
    pub email: Option<&'a str>,
    pub ecosystem: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct InfoArgs {}

#[derive(Debug, PartialEq)]
pub struct AuthorizeWebhookArgs {
    pub events: Vec<String>,
}
