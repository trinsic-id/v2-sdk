use clap::ArgMatches;
use std::fmt::{self, Display, Formatter};
use trinsic::utils::read_line;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("create_organization") {
        create_organization(
            &args
                .subcommand_matches("create_organization")
                .expect("Error parsing request"),
        )
    } else if args.is_present("invite") {
        invite(
            &args
                .subcommand_matches("invite")
                .expect("Error parsing request"),
        )
    } else {
        panic!("Unrecognized command")
    }
}

fn create_organization<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    let mut organization = CreateOrganizationArgs {
        id: args.value_of("id"),
        name: args.value_of("name"),
        capabilities: vec![],
        members: vec![],
    };

    loop {
        println!("{:#?}", organization);
        let input = read_line(Some("Type 'member' to add a member, 'capability' to add a capability, or 'done' when your organization is ready"));

        match &input[..] {
            "member\n" => {
                organization.members.push(Member {
                    name: read_line(Some("Member name")),
                    email: read_line(Some("Member email")),
                });
            }
            "capability\n" => {
                match &read_line(Some("What capability would you like to add?\n0. verifier\n1. issuer\n2. provider\nCapability"))[..] {
                    "0" => organization.capabilities.push(0),
                    "1" => organization.capabilities.push(1),
                    "2" => organization.capabilities.push(2),
                    "verifier" => organization.capabilities.push(0),
                    "issuer" => organization.capabilities.push(1),
                    "provider" => organization.capabilities.push(2),
                    _ => println!("Invalid capability"),
                };
            }
            "done\n" => break,
            _ => println!("Unrecognized command"),
        }
    }

    Command::CreateOrganization(organization)
}

fn invite<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Invite(InviteArgs {
        participant_type: if args.is_present("organization") {
            ParticipantType::Organization
        } else {
            ParticipantType::Individual
        },
        invitation_method: if args.is_present("method-email") {
            InvitationMethod::Email(
                args.value_of("method-email")
                    .expect("Unable to parse")
                    .to_string(),
            )
        } else if args.is_present("method-email") {
            InvitationMethod::Sms(
                args.value_of("method-sms")
                    .expect("Unable to parse")
                    .to_string(),
            )
        } else {
            InvitationMethod::None
        },
        description: args.value_of("description"),
    })
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    CreateOrganization(CreateOrganizationArgs<'a>),
    Invite(InviteArgs<'a>),
    InvitationStatus,
    CreateCredentialTemplate,
    ListCredentialTemplates,
}

#[derive(Debug, PartialEq)]
pub struct CreateOrganizationArgs<'a> {
    pub id: Option<&'a str>,
    pub name: Option<&'a str>,
    pub capabilities: Vec<i32>,
    pub members: Vec<Member>,
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
