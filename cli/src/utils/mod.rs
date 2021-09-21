use chrono::{DateTime, Local, Utc};
use serde_json::json;
use std::fs::{create_dir_all, OpenOptions};
use std::io::{stdin, stdout, BufRead, Read, Write};
use std::path::Path;
use std::str;

pub static SERVER_URL: &str = "http://localhost:5000";
pub static SECURITY_CONTEXT_V1_URL: &str = "https://w3id.org/security/v1";
pub static SECURITY_CONTEXT_V2_URL: &str = "https://w3id.org/security/v2";
pub static SECURITY_CONTEXT_V3_URL: &str = "https://w3id.org/security/v3-unstable";
pub static SECURITY_PROOF_URL: &str = "https://w3id.org/security#proof";
pub static DID_V1_URL: &str = "https://www.w3.org/ns/did/v1";

pub fn read_file(filename: Option<&str>) -> Vec<u8> {
    match filename {
        Some(path) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(path)
                .expect("Unable to open file");
            let mut data: Vec<u8> = Vec::new();
            file.read_to_end(&mut data).expect("Unable to read file");
            data
        }
        None => {
            let mut data: Vec<u8> = Vec::new();
            stdin().read_to_end(&mut data).expect("Unable to read file");
            data
        }
    }
}

pub fn read_line(out: Option<&str>) -> String {
    let mut message = String::new();

    match out {
        Some(msg) => {
            print!("{}: ", msg);
            stdout().flush().expect("Unable to flush stdout");
            stdin()
                .lock()
                .read_line(&mut message)
                .expect("Unable to read from stdin");
            message
        }
        None => {
            stdin()
                .lock()
                .read_line(&mut message)
                .expect("Unable to read from stdin");
            message
        }
    }
}

pub fn read_file_as_string(filename: Option<&str>) -> String {
    str::from_utf8(&read_file(filename))
        .expect("Unable to read file as utf 8")
        .to_string()
}

pub fn write_file(filename: Option<&str>, data: &[u8]) {
    match filename {
        Some(out) => {
            let parent = Path::new(out)
                .parent()
                .expect("Unable to resolve parent directory of output");
            create_dir_all(parent).expect("Unable to create parent directory of output file");
            let mut file = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(out)
                .expect("Unable to open file");
            file.write_all(&data).expect("Unable to write to output file");
        }
        None => {
            stdout().write_all(&data).expect("Unable to write to stdout");
        }
    };
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
    }).to_string()
}
