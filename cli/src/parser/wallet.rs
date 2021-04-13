use clap::ArgMatches;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("get_provider_configuration") {
        return get_provider_configuration(
            &args
                .subcommand_matches("get_provider_configuration")
                .expect("Error parsing request"),
        );
    } else if args.is_present("create") {
        return create(
            &args
                .subcommand_matches("create")
                .expect("Error parsing request"),
        );
    } else if args.is_present("search") {
        return search(
            &args
                .subcommand_matches("search")
                .expect("Error parsing request"),
        );
    } else if args.is_present("insert_item") {
        return insert_item(
            &args
                .subcommand_matches("insert_item")
                .expect("Error parsing request"),
        );
    } else if args.is_present("grant_access") {
        return grant_access(
            &args
                .subcommand_matches("grant_access")
                .expect("Error parsing request"),
        );
    } else if args.is_present("revoke_access") {
        return revoke_access(
            &args
                .subcommand_matches("revoke_access")
                .expect("Error parsing request"),
        );
    } else if args.is_present("set_profile") {
        return set_profile(
            &args
                .subcommand_matches("set_profile")
                .expect("Error parsing request"),
        );
    } else {
        panic!("Unrecognized command")
    }
}

fn create<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Create(CreateArgs {
        description: args.value_of("description"),
        out: args.value_of("out"),
        encrypted: args.value_of("encrypted").is_some(),
        key: args.value_of("key"),
    })
}

fn search<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Search(SearchArgs {
        query: args.value_of("query"),
    })
}

fn insert_item<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::InsertItem(InsertItemArgs {
        item_type: args.value_of("type"),
        item: args.value_of("item"),
    })
}

fn grant_access<'a>(_args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::GrantAccess
}

fn revoke_access<'a>(_args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::RevokeAccess
}

fn set_profile<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::SetProfile(SetProfileArgs {
        out: args.value_of("out"),
        profile: args.value_of("profile"),
    })
}

fn get_provider_configuration<'a>(_args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::GetProviderConfiguration
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    Create(CreateArgs<'a>),
    Search(SearchArgs<'a>),
    InsertItem(InsertItemArgs<'a>),
    GrantAccess,
    RevokeAccess,
    SetProfile(SetProfileArgs<'a>),
    GetProviderConfiguration,
}

#[derive(Debug, PartialEq)]
pub struct CreateArgs<'a> {
    pub description: Option<&'a str>,
    pub out: Option<&'a str>,
    pub encrypted: bool,
    pub key: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct SearchArgs<'a> {
    pub query: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct InsertItemArgs<'a> {
    pub item_type: Option<&'a str>,
    pub item: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct SetProfileArgs<'a> {
    pub out: Option<&'a str>,
    pub profile: Option<&'a str>,
}
