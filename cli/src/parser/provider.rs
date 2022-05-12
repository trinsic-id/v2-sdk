use crate::error::Error;
use clap::ArgMatches;
use std::fmt::{self, Display, Formatter};

pub(crate) fn parse<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    if args.is_present("create-ecosystem") {
        create_ecosystem(&args.subcommand_matches("create-ecosystem").expect("Error parsing request"))
    } else if args.is_present("invite") {
        invite(&args.subcommand_matches("invite").expect("Error parsing request"))
    } else {
        Err(Error::MissingArguments)
    }
}

fn create_ecosystem<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    let ecosystem = CreateEcosystemArgs {
        name: args.value_of("name").map(|x| x.into()),
        email: args.value_of("email").map(|x| x.into()),
        alias: args.value_of("alias").map_or("default".to_string(), |x| x.into()),
    };

    Ok(Command::CreateEcosystem(ecosystem))
}

fn invite<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::Invite(InviteArgs {
        participant_type: if args.is_present("organization") {
            ParticipantType::Organization
        } else {
            ParticipantType::Individual
        },
        invitation_method: if args.is_present("method-email") {
            InvitationMethod::Email(args.value_of("method-email").expect("Unable to parse").to_string())
        } else if args.is_present("method-email") {
            InvitationMethod::Sms(args.value_of("method-sms").expect("Unable to parse").to_string())
        } else {
            InvitationMethod::None
        },
        description: args.value_of("description"),
    }))
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    CreateEcosystem(CreateEcosystemArgs),
    Invite(InviteArgs<'a>),
    InvitationStatus,
}

#[derive(Debug, PartialEq)]
pub struct CreateEcosystemArgs {
    pub name: Option<String>,
    pub email: Option<String>,
    pub alias: String,
}

#[derive(Debug, PartialEq)]
pub struct InviteArgs<'a> {
    pub participant_type: ParticipantType,
    pub invitation_method: InvitationMethod,
    pub description: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub enum ParticipantType {
    Individual,
    Organization,
}

#[derive(Debug, PartialEq)]
pub enum InvitationMethod {
    Email(String),
    Sms(String),
    None,
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
