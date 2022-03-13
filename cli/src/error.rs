use std::fmt::Display;

use serde::{Deserialize, Serialize};
use tonic::Status;

#[derive(Debug, PartialEq, Clone, Serialize, Deserialize)]
pub(crate) enum Error {
    IOError,
    SerializationError,
    APIError { code: String, message: String },
    MissingArguments,
    InvalidArgument(String),
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

impl From<Status> for Error {
    fn from(status: Status) -> Self {
        Error::APIError {
            code: status.code().to_string(),
            message: status.message().to_string(),
        }
    }
}

impl Display for Error {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_fmt(format_args!("{:#?}", self))
    }
}
