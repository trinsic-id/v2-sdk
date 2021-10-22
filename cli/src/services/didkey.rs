use super::super::parser::didkey::*;
use okapi::proto::keys::{GenerateKeyRequest, ResolveRequest};
use okapi::DIDKey;
use trinsic::utils::write_file;

pub fn execute(args: &Command) {
    match args {
        Command::Resolve(args) => resolve(args),
        Command::Generate(args) => generate_key(args),
    }
}

fn generate_key(args: &GenerateArgs) {
    let key_type = match args.kty {
        Some(kty) => match kty {
            "Ed25519" => 0,
            "X25519" => 1,
            "P-256" => 2,
            "Bls12381_G2" => 3,
            "Secp256k1" => 4,
            _ => panic!("Unrecognized key type"),
        },
        None => 1,
    };

    let res = DIDKey::generate(&GenerateKeyRequest {
        seed: vec![],
        key_type,
    })
    .expect("Error Generating DIDKey");
    let key = serde_json::to_string_pretty(&res.key[0])
        .expect("Error serializing DIDKey response to JSON")
        + "\n";

    write_file(args.out, &key.as_bytes());
}

fn resolve(args: &ResolveArgs) {
    let uri = match args.uri {
        Some(uri) => uri,
        None => panic!("No uri provided"),
    };

    let req = ResolveRequest {
        did: uri.to_string(),
    };

    let res = DIDKey::resolve(&req).expect("Error resolving DID");

    println!(
        "{}",
        serde_json::to_string_pretty(&res.did_document)
            .expect("Error serializing DID document to JSON")
    );
    println!(
        "{}",
        serde_json::to_string_pretty(&res.keys[0]).expect("Error serializing key to JSON")
    );
}
