use clap::{App, AppSettings, Arg, ArgMatches, SubCommand};

use crate::error::Error;

#[derive(Debug, PartialEq)]
pub enum TrustRegistryCommand {
    RegisterMember(RegisterMemberArgs),
    UnregisterMember(UnregisterMemberArgs),
    GetMember(GetMemberArgs),
    GetMembershipStatus(GetMembershipStatusArgs),
    ListMembers(ListMembersArgs),
}

#[derive(Debug, PartialEq, Clone)]
pub struct ListMembersArgs {
    pub schema_uri: Option<String>,
    pub continuation_token: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct RegisterMemberArgs {
    pub member_id: MemberId,
    pub valid_from: Option<u64>,
    pub valid_to: Option<u64>,
    pub schema_uri: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct UnregisterMemberArgs {
    pub member_id: MemberId,
    pub schema_uri: String,
}

#[derive(Debug, PartialEq, Clone)]
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

#[derive(Debug, PartialEq, Default)]
pub struct GetMembershipStatusArgs {
    pub did_uri: String,
    pub schema_uri: String,
}

#[derive(Debug, PartialEq, Default)]
pub struct GetMemberArgs {
    pub member_id: MemberId,
}

pub(crate) fn parse(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    if args.subcommand_matches("register-member").is_some() {
        register_member(&args.subcommand_matches("register-member").expect("Error parsing request"))
    } else if args.subcommand_matches("unregister-member").is_some() {
        unregister_member(&args.subcommand_matches("unregister-member").expect("Error parsing request"))
    } else if args.subcommand_matches("get-member").is_some() {
        get_member(&args.subcommand_matches("get-member").expect("Error parsing request"))
    } else if args.subcommand_matches("get-membership-status").is_some() {
        get_status(&args.subcommand_matches("get-membership-status").expect("Error parsing request"))
    } else if args.subcommand_matches("list-members").is_some() {
        list_members(&args.subcommand_matches("list-members").expect("Error parsing request"))
    } else {
        Err(Error::MissingArguments)
    }
}

fn register_member(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    let command = TrustRegistryCommand::RegisterMember(RegisterMemberArgs {
        member_id: parse_member_id(args)?,
        schema_uri: args.value_of("schema").map(|q| q.into()).ok_or(Error::MissingArguments)?,
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
        schema_uri: args.value_of("schema").map(|q| q.into()).ok_or(Error::MissingArguments)?,
    }))
}

fn get_member(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::GetMember(GetMemberArgs {
        member_id: parse_member_id(args)?,
    }))
}

fn get_status(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::GetMembershipStatus(GetMembershipStatusArgs {
        did_uri: args.value_of("did").map(|q| q.into()).ok_or(Error::MissingArguments)?,
        schema_uri: args.value_of("schema").map(|q| q.into()).ok_or(Error::MissingArguments)?,
    }))
}

fn list_members(args: &ArgMatches) -> Result<TrustRegistryCommand, Error> {
    Ok(TrustRegistryCommand::ListMembers(ListMembersArgs {
        schema_uri: args.value_of("schema").map(|x| x.to_string()),
        continuation_token: args.value_of("continuation-token").map(|x| x.to_string()),
    }))
}

pub(crate) fn subcommand<'a, 'b>() -> App<'a> {
    SubCommand::with_name("trust-registry")
        .about("Manage Trust Registry membership and governance")
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(
            SubCommand::with_name("register-member")
                .setting(AppSettings::ArgRequiredElseHelp)
                .about("Register member as authoritative with a schema in the current ecosystem")
                .after_help("EXAMPLES:\r\n\ttrinsic trust-registry register-member --did <DID_URI> --schema 'https://schema.org/ExampleCredential'")
                .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'Sets the schema URI'").required(true))
                .arg(Arg::from_usage("-e --email <EMAIL> 'Sets the member using their email'").required(false))
                .arg(Arg::from_usage("-w --wallet <WALLET_ID> 'Sets the member using their wallet ID'").required(false))
                .arg(Arg::from_usage("-d --did <EMAIL> 'Sets the member using their public DID'").required(false)),
        )
        .subcommand(
            SubCommand::with_name("unregister-member")
                .setting(AppSettings::ArgRequiredElseHelp)
                .about("Unregister member as authoritative with a schema in a Trust Registry")
                .after_help("EXAMPLES:\r\n\ttrinsic trust-registry unregister-member --did <DID_URI> --schema 'https://schema.org/ExampleCredential'")
                .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'Sets the schema URI'").required(true))
                .arg(Arg::from_usage("-e --email <EMAIL> 'Sets the member using their email'").required(false))
                .arg(Arg::from_usage("-w --wallet <WALLET_ID> 'Sets the member using their wallet ID'").required(false))
                .arg(Arg::from_usage("-d --did <DID> 'Sets the member using their public DID'").required(false)),
        )
        .subcommand(
            SubCommand::with_name("get-member")
                .setting(AppSettings::ArgRequiredElseHelp)
                .about("Get full membership data of a given DID")
                .arg(Arg::from_usage("-e --email <EMAIL> 'Gets the member using their email'").required(false))
                .arg(Arg::from_usage("-w --wallet <WALLET_ID> 'Gets the member using their wallet ID'").required(false))
                .arg(Arg::from_usage("-d --did <DID> 'Gets the member using their public DID'").required(false)),
        )
        .subcommand(
            SubCommand::with_name("get-membership-status")
                .setting(AppSettings::ArgRequiredElseHelp)
                .about("Get the membership status (authorized / not authorized) of a given DID for a given schema")
                .arg(Arg::from_usage("-d --did <DID> 'The DID of the member'"))
                .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'The schema URI'")),
        )
        .subcommand(
            SubCommand::with_name("list-members")
                .about("List the authorized issuers in the ecosystem")
                .arg(Arg::from_usage("-s --schema <SCHEMA_URI> 'The schema URI to filter against").required(false))
                .arg(Arg::from_usage("-t --continuation-token <TOKEN> 'The continuation token of a previous result set'").required(false)),
        )
}
