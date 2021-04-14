use clap::ArgMatches;
use okapi::MessageFormatter;
use okapi::WalletProfile;
use serde::{ser::Impossible, Deserialize, Serialize};
use std::io::prelude::*;
use std::path::Path;
use std::{fs::OpenOptions, path::PathBuf};
use tonic::{Interceptor, Request};

use crate::parser::config::{Command, ProfileArgs, ServerArgs};

pub(crate) static DEFAULT_SERVER_ADDRESS: &str = "http://localhost:5000/";
#[cfg(not(test))]
pub static CONFIG_FILENAME: &str = "okapi.toml";
#[cfg(test)]
pub static CONFIG_FILENAME: &str = "okapi.test.toml";

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
    pub default: String,
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
    UnknownCommand,
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

impl From<prost::DecodeError> for Error {
    fn from(_: prost::DecodeError) -> Self {
        Error::SerializationError
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
        let config_file = data_path().join(CONFIG_FILENAME);

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

    pub fn save_config(&self) -> Result<(), Error> {
        let config_file = data_path().join(CONFIG_FILENAME);

        update_file(&config_file, self)
    }

    pub fn read_profile<T>(&self) -> Result<T, Error>
    where
        T: okapi::MessageFormatter + prost::Message + Default,
    {
        let filename = data_path().join(format!("{}.bin", self.profile.as_ref().unwrap().default));
        let mut file = OpenOptions::new().read(true).open(filename)?;

        let mut buffer: Vec<u8> = vec![];
        file.read_to_end(&mut buffer)?;

        T::from_vec(&buffer).map_err(|_| Error::SerializationError)
    }

    pub fn save_profile<T>(&mut self, profile: T, name: &str, default: bool) -> Result<(), Error>
    where
        T: okapi::MessageFormatter,
    {
        let filename = data_path().join(format!("{}.bin", name));
        let mut file = OpenOptions::new()
            .create(true)
            .write(true)
            .truncate(true)
            .open(filename)?;

        file.write_all(&profile.to_vec())?;

        // If default is `true`, set this profile as default in the
        // main configuration file
        if default || self.profile.is_none() {
            self.profile = Some(match self.profile.as_ref() {
                Some(profile) => ConfigProfile {
                    default: name.to_string(),
                    ..*profile
                },
                None => ConfigProfile {
                    default: name.to_string(),
                    ..Default::default()
                },
            });
        }
        self.save_config()
    }

    pub fn print(&self) -> Result<(), Error> {
        let config_file = data_path().join(CONFIG_FILENAME);
        let mut file = OpenOptions::new().read(true).open(config_file.clone())?;

        let mut buffer: String = String::new();
        file.read_to_string(&mut buffer)?;

        use colored::*;
        println!("{}", config_file.to_string_lossy().cyan());
        println!("{}", buffer.yellow());

        Ok(())
    }
}

#[allow(clippy::from_over_into)]
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

    config.save_config().unwrap()
}

fn data_path() -> PathBuf {
    dirs::home_dir().unwrap().join(".trinsic")
}

fn create_file(config_dir: &Path, config: &Config) -> Result<(), Error> {
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

fn update_file(config_dir: &Path, config: &Config) -> Result<(), Error> {
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
