use crate::{dict, error::Error, parser::config::ConfigCommand, proto::sdk::options::v1::TrinsicOptions};
use bytes::Bytes;
use clap::ArgMatches;
use colored::Colorize;
use serde::{Deserialize, Serialize};
use std::{
    env::var,
    fmt::Debug,
    fs::{self, OpenOptions},
    io::prelude::*,
    path::PathBuf,
};
use tonic::service::Interceptor;

use crate::parser::config::SdkOptionsArgs;

pub(crate) static DEFAULT_SERVER_ENDPOINT: &str = "prod.trinsic.cloud";
pub(crate) static DEFAULT_SERVER_PORT: i32 = 443;
pub(crate) static DEFAULT_SERVER_USE_TLS: bool = true;
#[cfg(not(test))]
pub static CONFIG_FILENAME: &str = "config.toml";
#[cfg(test)]
pub static CONFIG_FILENAME: &str = "config.test.toml";

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct CliConfig {
    pub options: TrinsicOptions,
    pub defaults: Option<ConfigDefaults>,
}

pub(crate) struct MetadataVersion {
    // This space left blank for future expansion - but needed for the second interceptor trait
}

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigDefaults {
    pub profile: String,
}

impl Default for CliConfig {
    fn default() -> Self {
        CliConfig {
            options: TrinsicOptions {
                server_endpoint: DEFAULT_SERVER_ENDPOINT.into(),
                server_port: DEFAULT_SERVER_PORT,
                server_use_tls: DEFAULT_SERVER_USE_TLS,
                auth_token: "".into(),
            },
            defaults: None,
        }
    }
}

impl Default for MetadataVersion {
    fn default() -> Self {
        MetadataVersion {}
    }
}

impl Into<Bytes> for &TrinsicOptions {
    fn into(self) -> Bytes {
        Bytes::from(format!(
            "{tls}://{endpoint}:{port}",
            tls = if self.server_use_tls { "https" } else { "http" },
            endpoint = self.server_endpoint,
            port = self.server_port
        ))
    }
}

use crate::DEBUG;

use super::{Item, Output};

impl From<&ArgMatches> for CliConfig {
    fn from(matches: &ArgMatches) -> Self {
        if matches.is_present("debug") {
            unsafe { DEBUG = true }
        }
        CliConfig::init().unwrap()
    }
}

impl CliConfig {
    /// Initialize the configuration by reading the default configuration file.
    /// If no file is found, a new one will be created with default options.
    pub(crate) fn init() -> Result<Self, Error> {
        let config_file = data_path()?.join(CONFIG_FILENAME);

        let config = match OpenOptions::new().read(true).open(config_file) {
            Ok(mut file) => {
                let mut buffer = String::new();
                file.read_to_string(&mut buffer)?;

                match toml::from_str(&buffer) {
                    Ok(buffer) => buffer,
                    Err(_) => {
                        let config = CliConfig::default();
                        config.save()?;

                        config
                    }
                }
            }
            Err(_) => {
                let config = CliConfig::default();
                config.save()?;

                config
            }
        };

        Ok(config)
    }

    pub fn save(&self) -> Result<(), Error> {
        let config_file = data_path()?.join(CONFIG_FILENAME);

        let mut file = OpenOptions::new().create(true).truncate(true).read(true).write(true).open(config_file)?;

        let buffer = toml::to_vec(self)?;
        file.write_all(&buffer)?;
        file.flush()?;

        Ok(())
    }
}

impl Interceptor for CliConfig {
    fn call(&mut self, mut request: tonic::Request<()>) -> Result<tonic::Request<()>, tonic::Status> {
        if self.options.auth_token.is_empty() {
            return Err(tonic::Status::invalid_argument("missing auth token"));
        }

        let header = format!("Bearer {token}", token = self.options.auth_token);

        unsafe {
            if DEBUG {
                println!("DEBUG: Authorization: {}", header.purple())
            }
        }

        // append authorization header
        request.metadata_mut().insert("authorization", header.parse().unwrap());

        // Add caller metadata
        request = add_version_metadata(request).expect("Metadata should be added");

        Ok(request)
    }
}

pub(crate) fn add_version_metadata(mut request: tonic::Request<()>) -> Result<tonic::Request<()>, tonic::Status> {
    // append authorization header
    request.metadata_mut().insert("trinsicsdklanguage", "rust-cli".parse().unwrap()); // TODO - Rust crate?
    request.metadata_mut().insert(
        "trinsicsdkversion",
        option_env!("CARGO_PKG_VERSION").unwrap_or_default().to_string().parse().unwrap(),
    );
    Ok(request)
}

impl Interceptor for MetadataVersion {
    fn call(&mut self, mut request: tonic::Request<()>) -> Result<tonic::Request<()>, tonic::Status> {
        request = add_version_metadata(request).expect("Metadata to be set");
        Ok(request)
    }
}

pub(crate) fn execute(args: &ConfigCommand) -> Result<Output, Error> {
    match args {
        ConfigCommand::Print => print(),
        ConfigCommand::Save(x) => save(&x.options),
    }
}

fn print() -> Result<Output, Error> {
    let config = CliConfig::init()?.options;

    Ok(dict! {
        "path".into() => Item::String(data_path()?.join(CONFIG_FILENAME).to_string_lossy().into()),
        "server endpoint".into() => Item::String(config.server_endpoint),
        "server port".into() => Item::String(config.server_port.to_string()),
        "server use tls".into() => Item::String(config.server_use_tls.to_string()),
        "auth token".into() => Item::String(config.auth_token)
    })
}

fn save(args: &SdkOptionsArgs) -> Result<Output, Error> {
    let mut config = CliConfig::init().unwrap();
    if args.endpoint.is_some() {
        config.options.server_endpoint = args.endpoint.as_ref().unwrap().to_string();
    }
    if args.port.is_some() {
        config.options.server_port = args.port.unwrap() as i32;
    }
    if args.use_tls.is_some() {
        config.options.server_use_tls = args.use_tls.unwrap();
    }
    if args.auth_token.is_some() {
        config.options.auth_token = args.auth_token.as_ref().unwrap().to_string();
    }

    config.save()?;

    Ok(Output::new())
}

fn data_path() -> Result<PathBuf, Error> {
    let path: PathBuf = match var("TRINSIC_ROOT") {
        Ok(path) => path.into(),
        Err(_) => dirs::home_dir().ok_or(Error::IOError)?,
    }
    .join(".trinsic");
    if !path.exists() {
        fs::create_dir_all(path.clone())?;
    }
    Ok(path)
}

#[cfg(test)]
mod test {
    use crate::proto::sdk::options::v1::TrinsicOptions;

    use super::*;

    #[test]
    fn open_default_config() {
        let config = CliConfig::init();

        assert!(matches!(config, Ok(_)));
    }

    #[test]
    fn serde_service_options() {
        let options = TrinsicOptions {
            server_endpoint: "example.com".into(),
            server_port: 443,
            server_use_tls: true,
            ..Default::default()
        };

        let toml = ::toml::to_string_pretty(&options);

        println!("{:#?}", &toml);
    }
}
