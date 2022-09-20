use crate::error::Error;
use clap::ArgMatches;
use std::fmt::{self, Display, Formatter};

pub(crate) fn parse(args: &ArgMatches) -> Result<Command, Error> {
    if args.subcommand_matches("create-ecosystem").is_some() {
        create_ecosystem(args.subcommand_matches("create-ecosystem").ok_or(Error::MissingArguments)?)
    } else if args.subcommand_matches("update-ecosystem").is_some() {
        update_ecosystem(args.subcommand_matches("update-ecosystem").ok_or(Error::MissingArguments)?)
    } else if args.subcommand_matches("ecosystem-info").is_some() {
        ecosystem_info()
    } else if args.subcommand_matches("invite").is_some() {
        invite(args.subcommand_matches("invite").ok_or(Error::MissingArguments)?)
    } else if args.subcommand_matches("add-webhook").is_some() {
        add_webhook(args.subcommand_matches("add-webhook").ok_or(Error::MissingArguments)?)
    } else if args.subcommand_matches("delete-webhook").is_some() {
        delete_webhook(args.subcommand_matches("delete-webhook").ok_or(Error::MissingArguments)?)
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

fn update_ecosystem(args: &ArgMatches) -> Result<Command, Error> {
    if !args.is_present("description") && !args.is_present("uri") {
        return Err(Error::MissingArguments);
    }

    let args = UpdateEcosystemArgs {
        description: args.value_of("description").map(|x| x.into()),
        uri: args.value_of("uri").map(|x| x.into()),
    };

    Ok(Command::UpdateEcosystem(args))
}

fn ecosystem_info<'a>() -> Result<Command<'a>, Error> {
    Ok(Command::EcosystemInfo)
}

fn add_webhook<'a>(args: &'a ArgMatches) -> Result<Command<'a>, Error> {
    // Get the events arg
    let events_val: &'a str = args.value_of("events").unwrap_or("*");

    // Split on comma
    let split = events_val.split(",");

    // Fill a Vec<String> with the split contents
    let mut events = vec![];
    events.extend(split.into_iter().map(|x| x.into()));

    Ok(Command::AddWebhook(AddWebhookArgs {
        url: args.value_of("url").map(|x| x.into()).unwrap(),
        secret: args.value_of("secret").map(|x| x.into()).unwrap(),
        events,
    }))
}

fn delete_webhook(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::DeleteWebhook(DeleteWebhookArgs {
        webhook_id: args.value_of("webhook-id").map(|x| x.into()).unwrap(),
    }))
}

fn invite(args: &ArgMatches) -> Result<Command, Error> {
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
pub enum Command<'a> {
    CreateEcosystem(CreateEcosystemArgs),
    UpdateEcosystem(UpdateEcosystemArgs),
    EcosystemInfo,
    AddWebhook(AddWebhookArgs),
    DeleteWebhook(DeleteWebhookArgs),
    Invite(InviteArgs<'a>),
    UpgradeDid(UpgradeDidArgs),
    InvitationStatus,
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
pub struct UpdateEcosystemArgs {
    pub description: Option<String>,
    pub uri: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct AddWebhookArgs {
    pub url: String,
    pub secret: String,
    pub events: Vec<String>,
}

#[derive(Debug, PartialEq)]
pub struct DeleteWebhookArgs {
    pub webhook_id: String,
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
