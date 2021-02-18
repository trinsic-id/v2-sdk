use clap::*;
use std::fs::OpenOptions;
use std::io::{Read, Write, BufRead, stdin, stdout};

use didcommgrpc::*;
use didcommgrpc::proto::didcomm_messaging::*;

pub fn pack(args: &ArgMatches<'_>) {
    let sender_key : JsonWebKey = match args.value_of("sender_key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let receiver_key : JsonWebKey = match args.value_of("receiver_key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No receiver key provided"), // should be unreachable statement
    };

    let associated_data = match args.value_of("associated_data") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut buffer = Vec::new();
            file.read_to_end(&mut buffer).unwrap();
            buffer
        },
        None => vec![],
    };

    let plaintext = match args.value_of("plaintext") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            key.as_bytes().to_vec()
        },
        None => {
            let mut message = String::new();
            print!("Enter a message to be packed: ");
            stdout().flush().unwrap();
            stdin().lock().read_line(&mut message).unwrap();
            message.as_bytes().to_vec()
        }
    };

    let encryption_mode = match args.value_of("encryption_mode") {
        Some(mode) => match mode {
            "direct" => 0,
            "content_encryption_key" => 1,
            _ => panic!("Unrecognized encryption mode"),
        },
        None => 0,
    };

    let encryption_algorithm = match args.value_of("encryption_algorithm") {
        Some(alg) => match alg {
            "xchacha20poly1305" => 0,
            "aes_gcm" => 1,
            _ => panic!("Unrecognized encryption algorithm"),
        },
        None => 0,
    };

    let req = PackRequest {
        sender_key: Some(sender_key),
        receiver_key: Some(receiver_key),
        associated_data,
        plaintext,
        mode: encryption_mode,
        algorithm: encryption_algorithm
    };

    let res = DIDComm::pack(&req);

    match args.value_of("out") {
        Some(out) => {
            let mut file = OpenOptions::new().write(true).create(true).open(out).unwrap();
            file.write_all(&res.unwrap().message.unwrap().to_vec()).unwrap();
        },
        None => panic!("please include output file"),
    };
}

pub fn unpack(args: &ArgMatches<'_>) {
    let sender_key : JsonWebKey = match args.value_of("sender_key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let receiver_key : JsonWebKey = match args.value_of("receiver_key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No receiver key provided"), // should be unreachable statement
    };

    let encrypted_message : EncryptedMessage = match args.value_of("encrypted_message") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut message : Vec::<u8> = Vec::new();
            file.read_to_end(&mut message).unwrap();
            EncryptedMessage::from_vec(&message).unwrap()
        },
        None => panic!("No receiver key provided"), // should be unreachable statement
    };

    let req = UnpackRequest {
        sender_key: Some(sender_key),
        receiver_key: Some(receiver_key),
        message: Some(encrypted_message)
    };

    let res = DIDComm::unpack(&req);
    let message = std::str::from_utf8(&res.unwrap().plaintext).unwrap().to_string();
    println!("{}", message);
}

pub fn sign(args: &ArgMatches<'_>) {
    let key : JsonWebKey = match args.value_of("key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let payload = match args.value_of("payload") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut payload = String::new();
            file.read_to_string(&mut payload).unwrap();
            payload.as_bytes().to_vec()
        },
        None => {
            let mut message = String::new();
            print!("Enter a message to be signed: ");
            stdout().flush().unwrap();
            stdin().lock().read_line(&mut message).unwrap();
            message.as_bytes().to_vec()
        }
    };

    let req = SignRequest {
        key: Some(key),
        payload: payload,
        append_to: None,
    };

    let res = DIDComm::sign(&req);

    match args.value_of("out") {
        Some(out) => {
            let mut file = OpenOptions::new().write(true).create(true).open(out).unwrap();
            file.write_all(&res.unwrap().message.unwrap().to_vec()).unwrap();
        },
        None => panic!("please include output file"),
    };
}

pub fn verify(args: &ArgMatches<'_>) {
    let key : JsonWebKey = match args.value_of("key") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut key = String::new();
            file.read_to_string(&mut key).unwrap();
            serde_json::from_str(&key).unwrap()
        },
        None => panic!("No key provided"), // should be unreachable statement
    };

    let signed_message : SignedMessage = match args.value_of("signed_message") {
        Some(input) => {
            let mut file = OpenOptions::new().read(true).open(input).unwrap();
            let mut message : Vec::<u8> = Vec::new();
            file.read_to_end(&mut message).unwrap();
            SignedMessage::from_vec(&message).unwrap()
        },
        None => panic!("No signed message provided"), // should be unreachable statement
    };

    let req = VerifyRequest {
        message: Some(signed_message),
        key: Some(key),
    };

    let res = DIDComm::verify(&req);
    let valid = &res.unwrap().is_valid;
    println!("{}", valid);
}