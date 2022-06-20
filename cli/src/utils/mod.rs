use chrono::{DateTime, Local, Utc};
use serde::Serialize;
use serde_json::{json, Value};
use std::fs::{create_dir_all, OpenOptions};
use std::io::{stdin, stdout, BufRead, Read, Write};
use std::path::Path;
use std::str;

use crate::error::Error;

pub static SERVER_URL: &str = "http://localhost:5000";
pub static SECURITY_CONTEXT_V1_URL: &str = "https://w3id.org/security/v1";
pub static SECURITY_CONTEXT_V2_URL: &str = "https://w3id.org/security/v2";
pub static SECURITY_CONTEXT_V3_URL: &str = "https://w3id.org/security/v3-unstable";
pub static SECURITY_PROOF_URL: &str = "https://w3id.org/security#proof";
pub static DID_V1_URL: &str = "https://www.w3.org/ns/did/v1";

pub(crate) fn read_file<P: AsRef<Path>>(path: P) -> Result<String, Error> {
    let mut file = OpenOptions::new().read(true).open(path)?;
    let mut data = String::new();
    file.read_to_string(&mut data)?;
    Ok(data)
}

pub fn read_line(out: Option<&str>) -> String {
    let mut message = String::new();

    match out {
        Some(msg) => {
            print!("{}: ", msg);
            stdout().flush().expect("Unable to flush stdout");
            stdin().lock().read_line(&mut message).expect("Unable to read from stdin");
            message
        }
        None => {
            stdin().lock().read_line(&mut message).expect("Unable to read from stdin");
            message
        }
    }
}

pub(crate) fn prettify_json(json: &String) -> Result<String, Error> {
    Ok(serde_json::to_string_pretty(&serde_json::from_str::<Value>(json)?)?)
}

pub(crate) fn as_value(json: &String) -> Result<Value, Error> {
    Ok(serde_json::from_str::<Value>(json)?)
}

pub(crate) fn to_value(message: &impl Serialize) -> Result<Value, Error> {
    Ok(serde_json::from_slice::<Value>(&serde_json::to_vec(message)?)?)
}

pub(crate) fn write_file<P: AsRef<Path>>(path: P, data: &[u8]) -> Result<(), Error> {
    let parent = path.as_ref().parent().ok_or(Error::IOError)?;
    create_dir_all(parent)?;

    let mut file = OpenOptions::new().write(true).create(true).truncate(true).open(path)?;
    file.write_all(&data)?;

    Ok(())
}

pub fn get_capability_document(wallet_id: &str) -> String {
    json!({
        "@context" : SECURITY_CONTEXT_V2_URL,
        "invocationTarget" : wallet_id,
        "proof" : {
            "proofPurpose" : "capabilityInvocation",
            "created" : DateTime::<Utc>::from_utc(Local::now().naive_utc(), Utc).format("%Y-%m-%dT%H:%M:%S").to_string(),
            "capability" : wallet_id
        }
    })
    .to_string()
}
