use clap::ArgMatches;

#[derive(Debug, PartialEq, Default)]
pub struct Command<'a> {
    pub server: ServerArgs<'a>,
    pub profile: ProfileArgs<'a>,
}

#[derive(Debug, PartialEq, Default)]
pub struct ServerArgs<'a> {
    pub address: Option<&'a str>,
}

#[derive(Debug, PartialEq, Default)]
pub struct ProfileArgs<'a> {
    pub default: Option<&'a str>,
}

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    let mut command = Command {
        ..Default::default()
    };

    if args.is_present("server-address") {
        command.server.address = args.value_of("server-address")
    }

    command
}
