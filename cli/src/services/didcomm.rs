use std::fs::OpenOptions;
use std::io::{stdin, stdout, BufRead, Read, Write};

use super::super::parser::didcomm::*;
use didcommgrpc::*;

pub fn execute(args: &Command) {
    match args {
        Command::Pack(args) => pack(args),
        Command::Unpack(args) => unpack(args),
        Command::Sign(args) => sign(args),
        Command::Verify(args) => verify(args),
    }
}

fn pack(args: &PackArgs) {
    let sender_key: JsonWebKey = match args.sender_key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open sender_key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read sender_key file");
            serde_json::from_str(&key).expect("Invalid sender key")
        }
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let receiver_key: JsonWebKey = match args.receiver_key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open receiver_key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read receiver_key file");
            serde_json::from_str(&key).expect("Invalid receiver key")
        }
        None => panic!("No receiver key provided"), // should be unreachable statement
    };

    let associated_data = match args.associated_data {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open associated_data file");
            let mut buffer = Vec::new();
            file.read_to_end(&mut buffer)
                .expect("Unable to read associated data file");
            buffer
        }
        None => vec![],
    };

    let plaintext = match args.plaintext {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open plaintext file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read plaintext file");
            key.as_bytes().to_vec()
        }
        None => {
            let mut message = String::new();
            print!("Enter a message to be packed: ");
            stdout().flush().expect("Unable to flush stdout");
            stdin()
                .lock()
                .read_line(&mut message)
                .expect("Unable to read from stdin");
            message.as_bytes().to_vec()
        }
    };

    let encryption_mode = match args.encryption_mode {
        Some(mode) => match mode {
            "direct" => 0,
            "content_encryption_key" => 1,
            _ => panic!("Unrecognized encryption mode"),
        },
        None => 0,
    };

    let encryption_algorithm = match args.encryption_algorithm {
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
        algorithm: encryption_algorithm,
    };

    let res = DIDComm::pack(&req).expect("Error packing message");

    match args.out {
        Some(out) => {
            let mut file = OpenOptions::new()
                .write(true)
                .create(true)
                .open(out)
                .expect("Unable to open output file for writing");
            file.write_all(&res.message.expect("Malformed pack response").to_vec())
                .expect("Unable to write to output file");
        }
        None => std::io::stdout()
            .write_all(&res.message.expect("Malformed pack response").to_vec())
            .expect("Unable to write to stdout"),
    };
}

fn unpack(args: &UnpackArgs) {
    let sender_key: JsonWebKey = match args.sender_key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open sender_key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read sender_key file");
            serde_json::from_str(&key).expect("Invalid sender key")
        }
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let receiver_key: JsonWebKey = match args.receiver_key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open receiver_key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read receiver_key file");
            serde_json::from_str(&key).expect("Invalid receiver key")
        }
        None => panic!("No receiver key provided"), // should be unreachable statement
    };

    let encrypted_message: EncryptedMessage = match args.encrypted_message {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open encrypted_message file");
            let mut message: Vec<u8> = Vec::new();
            file.read_to_end(&mut message)
                .expect("Unable to read encrypted_message file");
            EncryptedMessage::from_vec(&message).expect("Invalid encrypted message")
        }
        None => {
            let mut message: Vec<u8> = Vec::new();
            std::io::stdin()
                .read_to_end(&mut message)
                .expect("Unable to read from stdin");
            EncryptedMessage::from_vec(&message).expect("Invalid encrypted message")
        } // should be unreachable statement
    };

    let req = UnpackRequest {
        sender_key: Some(sender_key),
        receiver_key: Some(receiver_key),
        message: Some(encrypted_message),
    };

    let res = DIDComm::unpack(&req).expect("Error unpacking message");
    let message = std::str::from_utf8(&res.plaintext)
        .expect("Unable to convert bytes to text")
        .to_string();
    println!("{}", message);
}

fn sign(args: &SignArgs) {
    let key: JsonWebKey = match args.key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("unable to open key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read key file");
            serde_json::from_str(&key).expect("Invalid key")
        }
        None => panic!("No sender key provided"), // should be unreachable statement
    };

    let payload = match args.payload {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open payload file");
            let mut payload = String::new();
            file.read_to_string(&mut payload)
                .expect("unable to read payload file");
            payload.as_bytes().to_vec()
        }
        None => {
            let mut payload = String::new();
            std::io::stdin()
                .read_to_string(&mut payload)
                .expect("Unable to read from stdin");
            payload.as_bytes().to_vec()
        }
    };

    let req = SignRequest {
        key: Some(key),
        payload: payload,
        append_to: None,
    };

    let res = DIDComm::sign(&req).expect("Unable to sign message");

    match args.out {
        Some(out) => {
            let mut file = OpenOptions::new()
                .write(true)
                .create(true)
                .open(out)
                .expect("Unable to open output file");
            file.write_all(&res.message.expect("Malformed response").to_vec())
                .expect("Unable to write to output file");
        }
        None => std::io::stdout()
            .write_all(&res.message.expect("Malformed response").to_vec())
            .expect("Unable to write to stdout"),
    };
}

fn verify(args: &VerifyArgs) {
    let key: JsonWebKey = match args.key {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open key file");
            let mut key = String::new();
            file.read_to_string(&mut key)
                .expect("Unable to read key file");
            serde_json::from_str(&key).expect("Invalid key")
        }
        None => panic!("No key provided"), // should be unreachable statement
    };

    let signed_message: SignedMessage = match args.signed_message {
        Some(input) => {
            let mut file = OpenOptions::new()
                .read(true)
                .open(input)
                .expect("Unable to open signed message file");
            let mut message: Vec<u8> = Vec::new();
            file.read_to_end(&mut message)
                .expect("Unable to read signed message file");
            SignedMessage::from_vec(&message).expect("Invalid signed message")
        }
        None => {
            let mut message: Vec<u8> = Vec::new();
            std::io::stdin()
                .read_to_end(&mut message)
                .expect("Unable to read from stdin");
            SignedMessage::from_vec(&message).expect("Invalid signed message")
        }
    };

    let req = VerifyRequest {
        message: Some(signed_message),
        key: Some(key),
    };

    let res = DIDComm::verify(&req).expect("Unable to verify message");
    let valid = &res.is_valid;
    println!("{}", valid);
}
