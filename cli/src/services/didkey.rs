use clap::*;
use std::fs::OpenOptions;
use std::io::Write;

use didcommgrpc::DIDKey;
use didcommgrpc::proto::didcomm_messaging::{GenerateKeyRequest, ResolveRequest};

pub fn didkey(args: &ArgMatches<'_>) {
    if args.is_present("generate") {
        generate_key(&args.subcommand_matches("generate").expect("Error generating key"));
    }

    else if args.is_present("resolve") {
        resolve(&args.subcommand_matches("resolve").expect("Error resolving DID"));
    }
}

fn generate_key(args: &ArgMatches<'_>) {
    let key_type = match args.value_of("kty") {
        Some(kty) => match kty {
            "Ed25519" => 0,
            "X25519" => 1,
            "P-256" => 2,
            "Bls12381_G2" => 3,
            "Secp256k1" => 4,
            _ => panic!("Unrecognized key type"), // This line should be unreachable. Should be caught by clap, but rust doesn't like if you don't match all cases
        },
        None => 1,
    };

    let request = GenerateKeyRequest {
        seed: vec![],
        key_type: key_type,
    };

    let res = DIDKey::generate(&request).expect("Error Generating DIDKey");
    let key = serde_json::to_string_pretty(&res.key[0]).expect("Error serializing DIDKey response to JSON") + "\n";

    match args.value_of("out") {
        Some(out) => {
            let mut file = OpenOptions::new().write(true).create(true).open(out).expect("Unable to open output file for writing");
            file.write_all(key.as_bytes()).expect("Unable to write to ouput file");
        },
        None => println!("{}", key),
    };
}

fn resolve(args: &ArgMatches<'_>) {
    let uri = match args.value_of("uri") {
        Some(uri) => uri,
        None => panic!("No uri provided")
    };

    let req = ResolveRequest {
        did: uri.to_string(),
    };

    let res = DIDKey::resolve(&req).expect("Error resolving DID");

    println!("{}", serde_json::to_string_pretty(&res.did_document).expect("Error serializing DID document to JSON"));
    println!("{}", serde_json::to_string_pretty(&res.keys[0]).expect("Error serializing key to JSON"));
}

