use clap::ArgMatches;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("search") {
        return search(
            &args
                .subcommand_matches("search")
                .expect("Error parsing request"),
        );
    } else if args.is_present("insert-item") {
        return insert_item(
            &args
                .subcommand_matches("insert-item")
                .expect("Error parsing request"),
        );
    } else if args.is_present("send") {
        return send(
            &args
                .subcommand_matches("send")
                .expect("Error parsing request"),
        );
    } else {
        panic!("Unrecognized command")
    }
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

fn send<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Send(SendArgs {
        email: args.value_of("email"),
        item: args.value_of("item"),
    })
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    Search(SearchArgs<'a>),
    InsertItem(InsertItemArgs<'a>),
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
pub struct SendArgs<'a> {
    pub email: Option<&'a str>,
    pub item: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct SetProfileArgs<'a> {
    pub out: Option<&'a str>,
    pub profile: Option<&'a str>,
}
