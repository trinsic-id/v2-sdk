use clap::{App, AppSettings, Arg, ArgMatches, SubCommand};

use crate::error::Error;

#[derive(Debug, PartialEq)]
pub enum TrustRegistryCommand {
    Search(SearchArgs),
    RegisterMember(RegisterMemberArgs),
    UnregisterMember(UnregisterMemberArgs),
    AddFramework(AddFrameworkArgs),
    RemoveFramework(RemoveFrameworkArgs),
    GetMembershipStatus(GetMembershipStatusArgs),
    FetchData(FetchDataArgs),
}

#[derive(Debug, PartialEq, Clone)]
pub struct SearchArgs {
    pub query: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct RegisterMemberArgs {
    pub member_id: MemberId,
    pub framework_id: String,
    pub valid_from: Option<u64>,
    pub valid_to: Option<u64>,
    pub schema_uri: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct UnregisterMemberArgs {
    pub member_id: MemberId,
    pub framework_id: String,
    pub schema_uri: String,
}

#[derive(Debug, PartialEq)]
pub enum MemberId {
    Email(String),
    WalletId(String),
    DidUri(String),
    None,
}

impl Default for MemberId {
    fn default() -> Self {
        return MemberId::None;
    }
}

#[derive(Debug, PartialEq, Clone)]
pub struct GovernanceFrameworkArgs {
    pub governance_framework_uri: Option<String>,
    pub description: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct AddFrameworkArgs {
    pub governance_framework_uri: String,
    pub description: Option<String>,
    pub name: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct RemoveFrameworkArgs {
    pub framework_id: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct GetMembershipStatusArgs {
    pub did_uri: String,
    pub schema_uri: String,
    pub governance_framework_uri: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct FetchDataArgs {}

pub(crate) fn parse(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    if args.is_present("search") {
        search(&args.subcommand_matches("search").expect("Error parsing request"))
    } else if args.is_present("register-member") {
        register_member(&args.subcommand_matches("register-member").expect("Error parsing request"))
    } else if args.is_present("unregister-member") {
        unregister_member(&args.subcommand_matches("unregister-member").expect("Error parsing request"))
    } else if args.is_present("get-status") {
        get_status(&args.subcommand_matches("get-status").expect("Error parsing request"))
    } else if args.is_present("add-framework") {
        add_framework(&args.subcommand_matches("add-framework").expect("Error parsing request"))
    } else if args.is_present("remove-framework") {
        remove_framework(&args.subcommand_matches("remove-framework").expect("Error parsing request"))
    } else {
        Err(Error::MissingArguments)
    }
}

fn search(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::Search(SearchArgs {
        query: args
            .value_of("query")
            .map_or("SELECT * FROM _ WHERE _.type = 'FrameworkDefinition'".to_string(), |q| q.into()),
    }))
}

fn register_member(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    let command = TrustRegistryCommand::RegisterMember(RegisterMemberArgs {
        member_id: parse_member_id(args)?,
        schema_uri: args.value_of("schema").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        framework_id: args.value_of("framework-id").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        ..Default::default()
    });

    Ok(command)
}

fn parse_member_id(args: &ArgMatches) -> Result<MemberId, Error> {
    Ok(if args.is_present("did") {
        MemberId::DidUri(
            args.value_of("did")
                .map(|x| x.into())
                .ok_or(Error::InvalidArgument("invalid did".into()))?,
        )
    } else if args.is_present("email") {
        MemberId::Email(
            args.value_of("email")
                .map(|x| x.into())
                .ok_or(Error::InvalidArgument("invalid email".into()))?,
        )
    } else if args.is_present("wallet") {
        MemberId::WalletId(
            args.value_of("wallet")
                .map(|x| x.into())
                .ok_or(Error::InvalidArgument("invalid wallet".into()))?,
        )
    } else {
        return Err(Error::InvalidArgument("you must specify member using email, did, or wallet".into()));
    })
}

fn unregister_member(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::UnregisterMember(UnregisterMemberArgs {
        member_id: parse_member_id(args)?,
        framework_id: args.value_of("framework-id").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        schema_uri: args.value_of("schema").map(|q| q.into()).ok_or(Error::MissingArguments)?,
    }))
}

fn get_status(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::GetMembershipStatus(GetMembershipStatusArgs {
        did_uri: args.value_of("did").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        schema_uri: args.value_of("credential-type").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        governance_framework_uri: args.value_of("egf").map(|q| q.into()).ok_or(Error::MissingArguments)?,
    }))
}

fn add_framework(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::AddFramework(AddFrameworkArgs {
        name: args.value_of("name").map(|x| x.into()).ok_or(Error::MissingArguments)?,
        governance_framework_uri: args.value_of("uri").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        description: args.value_of("description").map(|x| x.into()),
    }))
}

fn remove_framework(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::RemoveFramework(RemoveFrameworkArgs {
        framework_id: args.value_of("framework-id").map(|x| x.into()).ok_or(Error::MissingArguments)?,
    }))
}

pub(crate) fn subcommand<'a, 'b>() -> App<'a, 'b> {
    SubCommand::with_name("trust-registry")
        .about("Manage Trust Registry membership and governance")
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(
            SubCommand::with_name("add-framework")
            .setting(AppSettings::ArgRequiredElseHelp)
            .about("Add new Ecosystem Governenace Framework (EGF)")
            .after_help("EXAMPLES:\r\n\ttrinsic trust-registry add-framework --name 'Example EGF' --uri 'https://example.com/governance'")
            .arg(Arg::from_usage("-n --name <NAME> 'Name of the ecosystem governance framework'").required(true))
            .arg(Arg::from_usage("-u --uri <URI> 'Governance framework URI'").required(true))
            .arg(Arg::from_usage("-d --description <DESCRIPTION> 'Description of the governance framework'").required(false)),
        )
        .subcommand(
            SubCommand::with_name("remove-framework")
            .setting(AppSettings::ArgRequiredElseHelp)
            .about("Remove an Ecosystem Governenace Framework (EGF)")
            .after_help("EXAMPLES:\r\n\ttrinsic trust-registry remove-framework --framework-id 'urn:egf:example'")
            .arg(Arg::from_usage("-f --framework-id <URI> 'Governance framework URI'").required(true)),
        )
        .subcommand(
            SubCommand::with_name("register-member")
            .setting(AppSettings::ArgRequiredElseHelp)
            .about("Register member as authoritative with a schema in a governance framework")
            .after_help("EXAMPLES:\r\n\ttrinsic trust-registry register-member --did <DID_URI> --schema 'https://schema.org/ExampleCredential' --framework-id 'urn:egf:example'")
            .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'Sets the schema URI'").required(true))
            .arg(Arg::from_usage("-f --framework-id <FRAMEWORK_ID> 'Sets the framework ID'").required(true))
            .arg(Arg::from_usage("-e --email <EMAIL> 'Sets the member using their email'").required(false))
            .arg(Arg::from_usage("-w --wallet <WALLET_ID> 'Sets the member using their wallet ID'").required(false))
            .arg(Arg::from_usage("-d --did <EMAIL> 'Sets the member using their public DID'").required(false)),
        )
        .subcommand(
            SubCommand::with_name("unregister-member")
            .setting(AppSettings::ArgRequiredElseHelp)
            .about("Unregister member as authoritative with a schema in a governance framework")
            .after_help("EXAMPLES:\r\n\ttrinsic trust-registry unregister-member --did <DID_URI> --schema 'https://schema.org/ExampleCredential' --framework-id 'urn:egf:example'")
            .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'Sets the schema URI'").required(true))
            .arg(Arg::from_usage("-f --framework-id <FRAMEWORK_ID> 'Sets the framework ID'").required(true))
            .arg(Arg::from_usage("-e --email <EMAIL> 'Sets the member using their email'").required(false))
            .arg(Arg::from_usage("-w --wallet <WALLET_ID> 'Sets the member using their wallet ID'").required(false))
            .arg(Arg::from_usage("-d --did <EMAIL> 'Sets the member using their public DID'").required(false)),
        )
}
