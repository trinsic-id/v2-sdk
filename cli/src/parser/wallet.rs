use crate::error::Error;
use clap::ArgMatches;

pub(crate) fn parse(args: &ArgMatches) -> Result<Command, Error> {
    if args.subcommand_matches("search").is_some() {
        return search(&args.subcommand_matches("search").expect("Error parsing request"));
    } else if args.subcommand_matches("insert-item").is_some() {
        return insert_item(&args.subcommand_matches("insert-item").expect("Error parsing request"));
    } else if args.subcommand_matches("delete-item").is_some() {
        return delete_item(&args.subcommand_matches("delete-item").expect("Error parsing request"));
    } else if args.subcommand_matches("send").is_some() {
        return send(&args.subcommand_matches("send").expect("Error parsing request"));
    } else {
        Err(Error::MissingArguments)
    }
}

fn search(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::Search(SearchArgs {
        query: args.value_of("query"),
    }))
}

fn insert_item(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::InsertItem(InsertItemArgs {
        item_type: args.value_of("type"),
        item: args.value_of("item"),
    }))
}

fn delete_item(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::DeleteItem(DeleteItemArgs {
        item_id: args.value_of("item-id"),
    }))
}

fn send(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::Send(SendArgs {
        email: args.value_of("email"),
        item: args.value_of("item"),
        send_notification: args.value_of("send_notification")
    }))
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    Search(SearchArgs<'a>),
    InsertItem(InsertItemArgs<'a>),
    DeleteItem(DeleteItemArgs<'a>),
    Send(SendArgs<'a>),
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
pub struct DeleteItemArgs<'a> {
    pub item_id: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct SendArgs<'a> {
    pub email: Option<&'a str>,
    pub item: Option<&'a str>,
    pub send_notification: Option<&'a str>
}

#[derive(Debug, PartialEq)]
pub struct SetProfileArgs<'a> {
    pub out: Option<&'a str>,
    pub profile: Option<&'a str>,
}
