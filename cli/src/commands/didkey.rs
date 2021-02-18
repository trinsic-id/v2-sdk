use clap::*;
use std::fs::OpenOptions;
use std::io::Write;

use didcommgrpc::DIDKey;
use didcommgrpc::proto::didcomm_messaging::GenerateKeyRequest;

pub fn generate_key(args: &ArgMatches<'_>) {
    let key_type = match args.value_of("kty") {
        Some(kty) => match kty {
            "Ed25519" => 0,
            "X25519" => 1,
            "P256" => 2,
            "Bls12381_G2" => 3,
            "secp256k1" => 4,
            _ => panic!("Unrecognized key type"), // This line should be unreachable. Should be caught by clap, but rust doesn't like if you don't match all cases
        },
        None => 1,
    };

    let request = GenerateKeyRequest {
        seed: vec![],
        key_type: key_type,
    };

    let res = DIDKey::generate(&request);
    let key = serde_json::to_string_pretty(&res.unwrap().key.unwrap()).unwrap() + "\n";

    match args.value_of("out") {
        Some(out) => {
            let mut file = OpenOptions::new().write(true).create(true).open(out).unwrap();
            file.write_all(key.as_bytes()).unwrap();
        },
        None => println!("{}", key),
    };
}

