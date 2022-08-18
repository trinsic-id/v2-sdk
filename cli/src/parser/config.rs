use clap::ArgMatches;

#[derive(Debug, PartialEq, Default)]
pub struct ConfigArgs {
    pub options: SdkOptionsArgs,
    pub custom: Option<CustomArgs>,
}

#[derive(Debug, PartialEq, Default)]
pub struct SdkOptionsArgs {
    pub endpoint: Option<String>,
    pub port: Option<u16>,
    pub use_tls: Option<bool>,
    pub auth_token: Option<String>,
}

#[derive(Debug, PartialEq, Default)]
pub struct CustomArgs {}

#[derive(Debug, PartialEq)]
pub enum ConfigCommand {
    Print,
    Save(ConfigArgs),
}

pub fn parse(args: &ArgMatches) -> ConfigCommand {
    let mut config_args = ConfigArgs { ..Default::default() };

    if args.is_present("server-endpoint") {
        config_args.options.endpoint = args.value_of("server-endpoint").map(|x| x.into());
    }
    if args.is_present("server-port") {
        config_args.options.port = args.value_of("server-port").map(|x| x.parse().unwrap());
    }
    if args.is_present("server-use-tls") {
        config_args.options.use_tls = args.value_of("server-use-tls").map(|x| x.parse().unwrap());
    }
    if args.is_present("auth-token") {
        config_args.options.auth_token = args.value_of("auth-token").map(|x| x.into());
    }

    if config_args == ConfigArgs::default() {
        ConfigCommand::Print
    } else {
        ConfigCommand::Save(config_args)
    }
}
