use clap::ArgMatches;
use cli::proto::trinsic_services::{wallet_client::WalletClient, CreateWalletRequest, WalletProfile, GetProviderConfigurationRequest, SearchRequest, InsertItemRequest};
use cli::SERVER_URL;
use serde_json::json;
use chrono::{DateTime, Local, Utc};
use cli::utils::{read_file, read_file_as_string, write_file};
use tonic::{Request, transport::Channel};
use cli::proto::google_protobuf::Struct;

use std::io::{stdin, stdout};

use didcommgrpc::*;

pub fn wallet(args: &ArgMatches<'_>) {
    if args.is_present("get_provider_configuration") {
        get_provider_configuration(&args.subcommand_matches("get_provider_configuration").expect("Unable to get provider configuration"));
    }
    else if args.is_present("create") {
        create(&args.subcommand_matches("create").expect("Unable to create wallet"));
    }
    else if args.is_present("search") {
        search(&args.subcommand_matches("search").expect("Unable to search"));
    }
    else if args.is_present("insert_item") {
        insert_item(&args.subcommand_matches("insert_item").expect("Unable to insert item"));
    }
    else if args.is_present("grant_access") {
        grant_access(&args.subcommand_matches("grant_access").expect("Unable to grant access"));
    }
    else if args.is_present("revoke_access") {
        revoke_access(&args.subcommand_matches("revoke_access").expect("Unable to revoke access"));
    }
    else if args.is_present("set_profile") {
        set_profile(&args.subcommand_matches("set_profile").expect("Unable to set profile"));
    }
}

#[tokio::main]
async fn get_provider_configuration(_args: &ArgMatches<'_>) {
    let mut client = WalletClient::connect(SERVER_URL).await.expect("Unable to connect to server");
    let request = tonic::Request::new(GetProviderConfigurationRequest {});
    let response = client.get_provider_configuration(request).await.expect("Get Provider Configuration failed");
    println!("Received Response: {:?}", &response);
}

#[tokio::main]
async fn create(args: &ArgMatches<'_>) {
    let key = match args.value_of("key") {
        Some(filename) => serde_json::from_str(&read_file_as_string(Some(filename))).expect("Unable to parse key"),
        None => {
            DIDKey::generate(&GenerateKeyRequest {
                seed: vec![],
                key_type: 0,
            }).unwrap()
        },
    };

    let did_doc_bytes = &key.did_document.unwrap().to_vec();

    let description = match args.value_of("description") {
        Some(desc) => desc.to_string(),
        None => "My Cloud Wallet".to_string(),
    };

    let mut client = WalletClient::connect(SERVER_URL).await.expect("Unable to connect to server");
    let request = tonic::Request::new(CreateWalletRequest {
        controller: key.key[0].kid.clone(),
        description,
    });

    let response = client.create_wallet(request).await.expect("Create Wallet failed").into_inner();

    let profile = WalletProfile {
        wallet_id: response.wallet_id,
        did_document: Some(Struct::from_vec(&did_doc_bytes).unwrap()),
        invoker: key.key[0].kid.clone(),
        invoker_jwk: key.key[0].to_vec(),
        capability: response.capability,
    };

    use cli::MessageFormatter;

    write_file(args.value_of("out"), &profile.to_vec());
}

#[tokio::main]
async fn search(args: &ArgMatches<'_>) {
    let query = match args.value_of("query") {
        Some(query) => query.to_string(),
        None => {
            let mut query = String::new();
            print!("Enter a query to be searched: ");
            //stdout().flush().expect("Unable to flush stdout");
            stdin().read_line(&mut query).expect("Unable to read from stdin");
            query
        },
    };

    let channel = Channel::from_static(SERVER_URL).connect().await.expect("Unable to connect to server");

    let mut client = WalletClient::with_interceptor(channel, move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert("capability-invocation", capability_invocation.parse().unwrap());
        Ok(req)
    });
    let request = tonic::Request::new(SearchRequest {
        query,
    });
    let response = client.search(request).await.expect("Get Provider Configuration failed").into_inner();
    println!("{}", &serde_json::to_string_pretty(&response.items).unwrap());
}

#[tokio::main]
async fn insert_item(args: &ArgMatches<'_>) {
    let item_type = args.value_of("type").expect("Please include item type").to_string();
    let item: didcommgrpc::proto::google_protobuf::Struct = serde_json::from_str(&read_file_as_string(args.value_of("item"))).expect("Unable to parse Item");
    let item_bytes = item.to_vec();

    use cli::MessageFormatter;
    let item: Struct = Struct::from_vec(&item_bytes).unwrap();

    let channel = Channel::from_static(SERVER_URL).connect().await.expect("Unable to connect to server");

    let mut client = WalletClient::with_interceptor(channel, move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert("capability-invocation", capability_invocation.parse().unwrap());
        Ok(req)
    });

    let request = InsertItemRequest {
        item: Some(item),
        item_type,
    };
    

    let response = client.insert_item(request).await.expect("Insert item failed").into_inner();

    println!("{:?}", response);
}

#[tokio::main]
async fn grant_access(_args: &ArgMatches<'_>) {
    println!("Not yet implemented");
}

#[tokio::main]
async fn revoke_access(_args: &ArgMatches<'_>) {
    println!("Not yet implemented");
}

fn set_profile(args: &ArgMatches<'_>) {

    use cli::MessageFormatter;

    let wallet_profile: WalletProfile = WalletProfile::from_vec(&read_file(args.value_of("profile"))).expect("Invalid wallet profile");

    let capability_document = json!({
        "@context" : cli::SECURITY_CONTEXT_V2_URL,
        "target" : wallet_profile.wallet_id,
        "proof" : {
            "proofPurpose" : "capabilityInvocation",
            "created" : DateTime::<Utc>::from_utc(Local::now().naive_utc(), Utc).format("%Y-%m-%dT%H:%M:%S").to_string(),
            "capability" : wallet_profile.wallet_id
        }
    });

    let res = LdProofs::create_proof(&CreateProofRequest {
        key: Some(JsonWebKey::from_vec(&wallet_profile.invoker_jwk).expect("Invalid key")),
        document: Some(serde_json::from_str(&capability_document.to_string()).expect("Invalid capability document")),
        suite: LdSuite::JcsEd25519Signature2020 as i32,
    }).expect("Error creating proof");

    let cap_invocation = base64::encode(serde_json::to_string(&res.signed_document).expect("Unable to serialize signed document as json"));

    write_file(args.value_of("out"), &cap_invocation.as_bytes().to_vec());
}