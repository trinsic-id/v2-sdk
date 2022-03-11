use clap::ArgMatches;

use crate::services::config::CliConfig;

#[derive(Debug, PartialEq, Default)]
pub struct ConfigCommand {
    pub options: SdkOptionsArgs,
    pub custom: Option<CustomArgs>,
}

#[derive(Debug, PartialEq, Default)]
pub struct SdkOptionsArgs {
    pub endpoint: Option<String>,
    pub port: Option<u16>,
    pub use_tls: Option<bool>,
    pub auth_token: Option<String>,
    pub default_ecosystem: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct CustomArgs {}

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> ConfigCommand {
    let mut command = ConfigCommand {
        ..Default::default()
    };

    let mut empty = true;
    if args.is_present("show") {
        CliConfig::init().unwrap().print().unwrap();
        empty = false;
    } else {
        if args.is_present("server-endpoint") {
            command.options.endpoint = args.value_of("server-endpoint").map(|x| x.into());
            empty = false;
        }
        if args.is_present("server-port") {
            command.options.port = args.value_of("server-port").map(|x| x.parse().unwrap());
            empty = false;
        }
        if args.is_present("server-use-tls") {
            command.options.use_tls = args.value_of("server-use-tls").map(|x| x.parse().unwrap());
            empty = false;
        }
        if args.is_present("auth-token") {
            command.options.auth_token = args.value_of("auth-token").map(|x| x.into());
            empty = false;
        }
        if args.is_present("default-ecosystem") {
            command.options.default_ecosystem =
                args.value_of("default-ecosystem").map(|x| x.into());
            empty = false;
        }
    }

    if empty {
        CliConfig::init().unwrap().print().unwrap();
    }

    command
}
