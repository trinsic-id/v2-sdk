use crate::proto::services::account::v1::AccountProfile;
use crate::{proto::services::common::v1::Nonce, MessageFormatter};
use bytes::Bytes;
use clap::ArgMatches;
use colored::Colorize;
use okapi::{proto::security::CreateOberonProofRequest, Oberon};
use serde::{Deserialize, Serialize};
use std::time::{SystemTime, UNIX_EPOCH};
use std::{env::var, path::Path};
use std::{fs, io::prelude::*};
use std::{fs::OpenOptions, path::PathBuf};
use tonic::service::Interceptor;
use tonic::Status;

use crate::parser::config::{Command, ProfileArgs, ServerArgs};

pub(crate) static DEFAULT_SERVER_ENDPOINT: &str = "prod.trinsic.cloud";
pub(crate) static DEFAULT_SERVER_PORT: u16 = 443;
pub(crate) static DEFAULT_SERVER_USE_TLS: bool = true;
#[cfg(not(test))]
pub static CONFIG_FILENAME: &str = "config.toml";
#[cfg(test)]
pub static CONFIG_FILENAME: &str = "config.test.toml";

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct DefaultConfig {
    pub server: ConfigServer,
    pub profile: Option<ConfigProfile>,
}

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigServer {
    pub endpoint: String,
    pub port: u16,
    pub use_tls: bool,
}

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigProfile {
    pub default: String,
}

impl Default for ConfigServer {
    fn default() -> Self {
        ConfigServer {
            endpoint: DEFAULT_SERVER_ENDPOINT.into(),
            port: DEFAULT_SERVER_PORT,
            use_tls: DEFAULT_SERVER_USE_TLS,
        }
    }
}

impl Into<Bytes> for &ConfigServer {
    fn into(self) -> Bytes {
        Bytes::from(format!(
            "{tls}://{endpoint}:{port}",
            tls = if self.use_tls { "https" } else { "http" },
            endpoint = self.endpoint,
            port = self.port
        ))
    }
}

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub enum Error {
    IOError,
    SerializationError,
    APIError(Status),
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

impl From<serde_json::Error> for Error {
    fn from(_: serde_json::Error) -> Self {
        Error::SerializationError
    }
}

impl From<prost::DecodeError> for Error {
    fn from(_: prost::DecodeError) -> Self {
        Error::SerializationError
    }
}

use crate::DEBUG;

impl From<&ArgMatches<'_>> for DefaultConfig {
    fn from(matches: &ArgMatches<'_>) -> Self {
        if matches.is_present("debug") {
            unsafe { DEBUG = true }
        }
        if matches.is_present("alias") {
            DefaultConfig {
                profile: Some(ConfigProfile {
                    default: matches.value_of("alias").unwrap().to_string(),
                }),
                ..DefaultConfig::init().unwrap()
            }
        } else {
            DefaultConfig::init().unwrap()
        }
    }
}

impl DefaultConfig {
    /// Initialize the configuration by reading the default confgiruation file.
    /// If no file is found, a new one will be created with default options.
    pub(crate) fn init() -> Result<Self, Error> {
        // Use the user's home directory to store configuration files and profile data
        let config_file = data_path().join(CONFIG_FILENAME);

        // If a default file is not found, create one with default configuration
        if !Path::new(&config_file).exists() {
            create_file(&config_file, &DefaultConfig::default())?;
        };

        let mut buffer = String::new();
        let mut file = OpenOptions::new().read(true).open(&config_file)?;
        file.read_to_string(&mut buffer)?;
        let config: DefaultConfig = match toml::from_str(&buffer) {
            Ok(x) => x,
            Err(err) => {
                let mut file = OpenOptions::new()
                    .create_new(false)
                    .read(true)
                    .truncate(true)
                    .write(true)
                    .append(false)
                    .open(config_file)?;

                let buffer = toml::to_vec(&DefaultConfig::default())?;
                file.write_all(&buffer)?;
                file.flush()?;

                DefaultConfig::default()
            }
        };

        Ok(config)
    }

    pub fn save_config(&self) -> Result<(), Error> {
        let config_file = data_path().join(CONFIG_FILENAME);

        update_file(&config_file, self)
    }
    #[allow(dead_code)]
    pub fn read_profile<T>(&self) -> Result<T, Error>
    where
        T: crate::MessageFormatter + prost::Message + Default,
    {
        let filename = data_path().join(format!("{}.bin", self.profile.as_ref().unwrap().default));
        let mut file = OpenOptions::new().read(true).open(filename)?;

        let mut buffer: Vec<u8> = vec![];
        file.read_to_end(&mut buffer)?;

        T::from_vec(&buffer).map_err(|_| Error::SerializationError)
    }

    pub fn save_profile(
        &mut self,
        profile: AccountProfile,
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

        Ok(())
    }

    pub fn print(&self) -> Result<(), Error> {
        let config_file = data_path().join(CONFIG_FILENAME);
        let mut file = OpenOptions::new().read(true).open(config_file.clone())?;

        let mut buffer: String = String::new();
        file.read_to_string(&mut buffer)?;

        use colored::*;
        println!("{}", "Path:".bold());
        println!("{}", config_file.to_string_lossy().yellow());
        println!("{}", "Contents:".bold());
        buffer
            .lines()
            .into_iter()
            .for_each(|x| println!("{}", x.yellow()));

        Ok(())
    }
}

// #[allow(clippy::from_over_into)]
// impl Into<Interceptor> for Config {
//     fn into(self) -> Interceptor {
//         Interceptor::new(move |mut req: Request<()>| {
//             req.metadata_mut().insert(
//                 "capability-invocation",
//                 self.read_capability()
//                     .expect("couldn't read capability document")
//                     .parse()
//                     .expect("error parsing capability"),
//             );
//             Ok(req)
//         })
//     }
// }

impl Interceptor for DefaultConfig {
    fn call(
        &mut self,
        mut request: tonic::Request<()>,
    ) -> Result<tonic::Request<()>, tonic::Status> {
        // read the currently configured profile
        let profile: AccountProfile = self.read_profile().unwrap();

        // generate nonce by combining the current unix epoch timestam
        // and a hash of the request payload
        let nonce = Nonce {
            timestamp: SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_millis() as i64,
            request_hash: blake3::hash(&request.get_ref().to_vec())
                .as_bytes()
                .to_vec(),
        };

        // generate proof of knowledge using the stored token and the generated nonce
        let proof = Oberon::proof(&CreateOberonProofRequest {
            data: profile.auth_data.clone(),
            token: profile.auth_token,
            nonce: nonce.to_vec(),
            blinding: vec![],
        })
        .unwrap();

        let header = format!(
            "Oberon data={data},proof={proof},nonce={nonce},ver=1",
            data = base64::encode_config(profile.auth_data, base64::URL_SAFE_NO_PAD),
            proof = base64::encode_config(proof.proof, base64::URL_SAFE_NO_PAD),
            nonce = base64::encode_config(nonce.to_vec(), base64::URL_SAFE_NO_PAD)
        );

        unsafe {
            if crate::DEBUG {
                println!("DEBUG: Authorization: {}", header.purple())
            }
        }

        // append auhtorization header
        request
            .metadata_mut()
            .insert("authorization", header.parse().unwrap());
        Ok(request)
    }
}

pub fn execute(args: &Command) {
    set_server_attr(&args.server);
    set_profile_attr(&args.profile);
}

fn set_profile_attr(args: &ProfileArgs) {
    let mut config = DefaultConfig::init().unwrap();
    if args.default.is_some() {
        config.profile = Some(ConfigProfile {
            default: args.default.unwrap().to_string(),
        });
    }

    config.save_config().unwrap()
}

fn set_server_attr(args: &ServerArgs) {
    let mut config = DefaultConfig::init().unwrap();
    if args.endpoint.is_some() {
        config.server.endpoint = args.endpoint.unwrap().to_string();
    }
    if args.port.is_some() {
        config.server.port = args.port.unwrap();
    }
    if args.use_tls.is_some() {
        config.server.use_tls = args.use_tls.unwrap();
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

fn create_file(config_dir: &Path, config: &DefaultConfig) -> Result<(), Error> {
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

fn update_file(config_dir: &Path, config: &DefaultConfig) -> Result<(), Error> {
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
        let config = DefaultConfig::init();

        assert!(matches!(config, Ok(_)));
    }
}
