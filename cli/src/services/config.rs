use clap::ArgMatches;
use trinsic::MessageFormatter;
use trinsic::WalletProfile;
use serde::{Deserialize, Serialize};
use std::{env::var, path::Path};
use std::{fs, io::prelude::*};
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
        T: trinsic::MessageFormatter + prost::Message + Default,
    {
        let filename = data_path().join(format!("{}.bin", self.profile.as_ref().unwrap().default));
        let mut file = OpenOptions::new().read(true).open(filename)?;

        let mut buffer: Vec<u8> = vec![];
        file.read_to_end(&mut buffer)?;

        T::from_vec(&buffer).map_err(|_| Error::SerializationError)
    }

    pub fn read_capability(&self) -> Result<String, Error> {
        let filename = data_path().join(format!("{}.json", self.profile.as_ref().unwrap().default));
        let mut file = OpenOptions::new().read(true).open(filename)?;

        let mut buffer: String = String::new();
        file.read_to_string(&mut buffer)?;

        Ok(buffer)
    }

    pub fn save_profile(
        &mut self,
        profile: WalletProfile,
        name: &str,
        default: bool,
    ) -> Result<(), Error> {
        let profile_filename = data_path().join(format!("{}.bin", name));
        let mut profile_file = OpenOptions::new()
            .create(true)
            .write(true)
            .truncate(true)
            .open(profile_filename)?;

        profile_file.write_all(&profile.to_vec())?;
        profile_file.flush()?;

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

        self.save_config()?;
        self.save_capability(&profile, name)?;

        Ok(())
    }

    fn save_capability(&self, profile: &WalletProfile, name: &str) -> Result<(), Error> {
        // Save capability invocation generated from the input profile
        use didcommgrpc::*;
        use trinsic::utils::*;
        let capability_filename = data_path().join(format!("{}.json", name));
        let capability_document = get_capability_document(&profile.wallet_id);

        let res = LdProofs::create_proof(&CreateProofRequest {
            key: Some(JsonWebKey::from_vec(&profile.invoker_jwk).expect("Invalid key")),
            document: Some(
                serde_json::from_str(&capability_document).expect("Invalid capability document"),
            ),
            suite: LdSuite::JcsEd25519Signature2020 as i32,
        })
        .expect("Error creating proof");

        let cap_invocation = base64::encode(
            serde_json::to_string(&res.signed_document)
                .expect("Unable to serialize signed document as json"),
        );
        let mut caps_file = OpenOptions::new()
            .create(true)
            .write(true)
            .truncate(true)
            .open(capability_filename)?;

        caps_file.write_all(&cap_invocation.as_bytes().to_vec())?;
        caps_file.flush()?;

        Ok(())
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
            req.metadata_mut().insert(
                "capability-invocation",
                self.read_capability()
                    .expect("couldn't read capability document")
                    .parse()
                    .expect("error parsing capability"),
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
    let path: PathBuf = match var("OKAPI_ROOT") {
        Ok(path) => path.into(),
        Err(_) => dirs::home_dir().expect(
            "Unable to locate home directory. Please set the environment variable $OKAPI_ROOT",
        ),
    }
    .join(".trinsic");
    if !path.exists() {
        fs::create_dir_all(path.clone()).unwrap();
    }
    path
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
