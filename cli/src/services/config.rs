use clap::ArgMatches;
use serde::{Deserialize, Serialize};
use std::io::prelude::*;
use std::path::Path;
use std::{fs::OpenOptions, path::PathBuf};
use tonic::{Interceptor, Request};

use crate::parser::config::{Command, ProfileArgs, ServerArgs};

pub(crate) static DEFAULT_SERVER_ADDRESS: &str = "http://localhost:5000/";

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct Config {
    pub server: ConfigServer,
    pub profile: Option<ConfigProfile>,
}

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigServer {
    pub address: String,
}

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigProfile {
    default: String,
}

impl Default for ConfigServer {
    fn default() -> Self {
        ConfigServer {
            address: DEFAULT_SERVER_ADDRESS.into(),
        }
    }
}

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub enum Error {
    IOError,
    SerializationError,
}

impl From<toml::ser::Error> for Error {
    fn from(_: toml::ser::Error) -> Self {
        Error::SerializationError
    }
}

impl From<toml::de::Error> for Error {
    fn from(_: toml::de::Error) -> Self {
        Error::SerializationError
    }
}

impl From<std::io::Error> for Error {
    fn from(_: std::io::Error) -> Self {
        Error::IOError
    }
}

impl From<&ArgMatches<'_>> for Config {
    fn from(matches: &ArgMatches<'_>) -> Self {
        if matches.is_present("profile") {
            Config {
                profile: Some(ConfigProfile {
                    default: matches.value_of("profile").unwrap().to_string(),
                }),
                ..Config::init().unwrap()
            }
        } else {
            Config::init().unwrap()
        }
    }
}

impl Config {
    /// Initialize the configuration by reading the default confgiruation file.
    /// If no file is found, a new one will be created with default options.
    pub(crate) fn init() -> Result<Self, Error> {
        // Use the user's home directory to store configuration files and profile data
        let config_file = data_path().join("okapi.yaml");

        // If a default file is not found, create one with default configuration
        if !Path::new(&config_file).exists() {
            create_file(&config_file, &Config::default())?;
        };

        let mut buffer = String::new();
        let mut file = OpenOptions::new().read(true).open(&config_file)?;
        file.read_to_string(&mut buffer)?;
        let config: Config = toml::from_str(&buffer)?;

        Ok(config)
    }

    pub fn save(&self) -> Result<(), Error> {
        let config_file = data_path().join("okapi.yaml");

        update_file(&config_file, self)
    }
}

impl Into<Interceptor> for Config {
    fn into(self) -> Interceptor {
        Interceptor::new(move |mut req: Request<()>| {
            let profile = match self.profile.as_ref() {
                Some(profile) => format!("{}.json", profile.default),
                None => panic!("Default profile not set"),
            };
            let filename = data_path().join(profile);
            let mut file = OpenOptions::new()
                .read(true)
                .open(filename)
                .expect("Unable to open file");

            let mut capability_invocation = String::new();
            file.read_to_string(&mut capability_invocation).unwrap();

            req.metadata_mut().insert(
                "capability-invocation",
                capability_invocation.parse().unwrap(),
            );
            Ok(req)
        })
    }
}

pub fn execute(args: &Command) {
    set_server_attr(&args.server);
    set_profile_attr(&args.profile);
}

fn set_profile_attr(_args: &ProfileArgs) {}

fn set_server_attr(args: &ServerArgs) {
    let mut config = Config::init().unwrap();
    if args.address.is_some() {
        config.server.address = args.address.unwrap().to_string();
    }

    config.save().unwrap()
}

fn data_path() -> PathBuf {
    dirs::home_dir().unwrap().join(".trinsic")
}

fn create_file(config_dir: &PathBuf, config: &Config) -> Result<(), Error> {
    let mut file = OpenOptions::new()
        .create_new(true)
        .read(true)
        .write(true)
        .append(false)
        .open(config_dir)?;

    let buffer = toml::to_vec(config)?;
    file.write_all(&buffer)?;
    file.flush()?;

    Ok(())
}

fn update_file(config_dir: &PathBuf, config: &Config) -> Result<(), Error> {
    let mut file = OpenOptions::new()
        .truncate(true)
        .read(true)
        .write(true)
        .append(false)
        .open(config_dir)?;

    let buffer = toml::to_vec(config)?;
    file.write_all(&buffer)?;
    file.flush()?;

    Ok(())
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn open_default_config() {
        let config = Config::init();

        assert!(matches!(config, Ok(_)));
    }
}
