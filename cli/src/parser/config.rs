use clap::ArgMatches;

use crate::services::config::CliConfig;

#[derive(Debug, PartialEq, Default)]
pub struct Command<'a> {
    pub server: ServerArgs<'a>,
    pub profile: ProfileArgs<'a>,
}

#[derive(Debug, PartialEq, Default)]
pub struct ServerArgs<'a> {
    pub endpoint: Option<&'a str>,
    pub port: Option<u16>,
    pub use_tls: Option<bool>,
}

#[derive(Debug, PartialEq, Default)]
pub struct ProfileArgs<'a> {
    pub default: Option<&'a str>,
}

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    let mut command = Command {
        ..Default::default()
    };

    let mut empty = true;
    if args.is_present("show") {
        CliConfig::init().unwrap().print().unwrap();
        empty = false;
    } else {
        if args.is_present("server-endpoint") {
            command.server.endpoint = args.value_of("server-endpoint");
            empty = false;
        }
        if args.is_present("server-port") {
            command.server.port = args.value_of("server-port").map(|x| x.parse().unwrap());
            empty = false;
        }
        if args.is_present("server-use-tls") {
            command.server.use_tls = args.value_of("server-use-tls").map(|x| x.parse().unwrap());
            empty = false;
        }
        if args.is_present("profile-default") {
            command.profile.default = args.value_of("profile-default");
            empty = false;
        }
    }

    if empty {
        CliConfig::init().unwrap().print().unwrap();
    }

    command
}
