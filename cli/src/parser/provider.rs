use clap::ArgMatches;
use okapi::utils::read_line;
use std::fmt::{self, Formatter, Display};

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("create_organization") {
        return create_organization(
            &args
                .subcommand_matches("create_organization")
                .expect("Error parsing request"),
        );
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
        println!("{}", organization);
        let input = read_line(Some("Type 'member' to add a member, 'capability' to add a capability, or 'done' when your organization is ready"));

        match &input[..] {
            "member\n" => {
                organization.members.push(Member {
                    name: read_line(Some("Member name")),
                    email: read_line(Some("Member email")),
                });
            },
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

            },
            "done\n" => break,
            _ => println!("Unrecognized command"),
        }
    };

    Command::CreateOrganization(organization)
}



#[derive(Debug)]
pub enum Command<'a> {
    CreateOrganization(CreateOrganizationArgs<'a>),
    Invite,
    InvitationStatus,
    CreateCredentialTemplate,
    ListCredentialTemplates,
}

#[derive(Debug)]
pub struct CreateOrganizationArgs<'a> {
    pub id: Option<&'a str>,
    pub name: Option<&'a str>,
    pub capabilities: Vec<i32>,
    pub members: Vec<Member>,
}

impl Display for CreateOrganizationArgs<'_> {
    fn fmt(&self, f: &mut Formatter) -> fmt::Result {
        let name = match &self.name {
            Some(n) => n,
            None => "none"
        };
        let id = match &self.id {
            Some(i) => i,
            None => "none"
        };

        write!(f, "ID: {}\nName: {}\nCapabilities: {}\nMembers: {}", id, name, self.capabilities, self.members)
    }
}


#[derive(Debug)]
pub struct Member {
    pub name: String,
    pub email: String,
}

impl Display for Member {
    fn fmt(&self, f: &mut Formatter) -> fmt::Result {
        write!(f, "name: {}\nemail: {}", self.name, self.email)
    }
}