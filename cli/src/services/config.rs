use crate::{
    dict,
    error::Error,
    parser::config::ConfigCommand,
    proto::{
        sdk::options::v1::ServiceOptions,
        services::{account::v1::AccountProfile, common::v1::Nonce},
    },
    MessageFormatter,
};
use bytes::Bytes;
use clap::ArgMatches;
use colored::Colorize;
use okapi::{proto::security::CreateOberonProofRequest, Oberon};
use prost::Message;
use serde::{Deserialize, Serialize};
use std::{
    env::var,
    fmt::Debug,
    fs::{self, OpenOptions},
    io::prelude::*,
    path::PathBuf,
    time::{SystemTime, UNIX_EPOCH},
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
    pub options: ServiceOptions,
    pub defaults: Option<ConfigDefaults>,
}

#[derive(Debug, Default, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) struct ConfigDefaults {
    pub profile: String,
}

impl Default for CliConfig {
    fn default() -> Self {
        CliConfig {
            options: ServiceOptions {
                server_endpoint: DEFAULT_SERVER_ENDPOINT.into(),
                server_port: DEFAULT_SERVER_PORT,
                server_use_tls: DEFAULT_SERVER_USE_TLS,
                default_ecosystem: "default".into(),
                auth_token: "".into(),
            },
            defaults: None,
        }
    }
}

impl Into<Bytes> for &ServiceOptions {
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

impl From<&ArgMatches<'_>> for CliConfig {
    fn from(matches: &ArgMatches<'_>) -> Self {
        if matches.is_present("debug") {
            unsafe { DEBUG = true }
        }
        CliConfig::init().unwrap()
    }
}

impl CliConfig {
    /// Initialize the configuration by reading the default confgiruation file.
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

        // read the currently configured profile
        let profile_data = base64::decode_config(&self.options.auth_token, base64::URL_SAFE)
            .map_err(|_| tonic::Status::internal("unable to deserialize auth token"))?;
        let profile: AccountProfile =
            AccountProfile::from_vec(&profile_data).map_err(|_| tonic::Status::internal("unable to deserialize auth token"))?;

        // generate nonce by combining the current unix epoch timestamp
        // and a hash of the request payload
        let nonce = Nonce {
            timestamp: SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_millis() as i64,
            request_hash: blake3::hash(&request.get_ref().encode_to_vec()).as_bytes().to_vec(),
        };

        // generate proof of knowledge using the stored token and the generated nonce
        let proof = Oberon::proof(&CreateOberonProofRequest {
            data: profile.auth_data.clone(),
            token: profile.auth_token,
            nonce: nonce.encode_to_vec(),
            blinding: vec![],
        })
        .map_err(|e| tonic::Status::internal(format!("{:?}", e)))?;

        let header = format!(
            "Oberon data={data},proof={proof},nonce={nonce},ver=1",
            data = base64::encode_config(profile.auth_data, base64::URL_SAFE_NO_PAD),
            proof = base64::encode_config(proof.proof, base64::URL_SAFE_NO_PAD),
            nonce = base64::encode_config(nonce.encode_to_vec(), base64::URL_SAFE_NO_PAD)
        );

        unsafe {
            if crate::DEBUG {
                println!("DEBUG: Authorization: {}", header.purple())
            }
        }

        // append auhtorization header
        request.metadata_mut().insert("authorization", header.parse().unwrap());
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
        "auth token".into() => Item::String(config.auth_token),
        "default ecosystem".into() => Item::String(config.default_ecosystem)
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
    if args.default_ecosystem.is_some() {
        config.options.default_ecosystem = args.default_ecosystem.as_ref().unwrap().to_string();
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
    use crate::proto::sdk::options::v1::ServiceOptions;

    use super::*;

    #[test]
    fn open_default_config() {
        let config = CliConfig::init();

        assert!(matches!(config, Ok(_)));
    }

    #[test]
    fn serde_service_options() {
        let options = ServiceOptions {
            server_endpoint: "example.com".into(),
            server_port: 443,
            server_use_tls: true,
            default_ecosystem: "default".into(),
            ..Default::default()
        };

        let toml = ::toml::to_string_pretty(&options);

        println!("{:#?}", &toml);
    }
}
