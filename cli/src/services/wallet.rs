use super::super::parser::wallet::*;
use crate::services::config::*;
use didcommgrpc::*;
use okapi::proto::google_protobuf::Struct;
use okapi::proto::trinsic_services::{
    wallet_client::WalletClient, CreateWalletRequest, GetProviderConfigurationRequest,
    InsertItemRequest, SearchRequest, WalletProfile,
};
use okapi::utils::read_file_as_string;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: Config) -> Result<(), Error> {
    match args {
        Command::Create(args) => create(args, config),
        Command::Search(args) => Ok(search(args, config)),
        Command::InsertItem(args) => Ok(insert_item(args, config)),
        Command::GetProviderConfiguration => Ok(get_provider_configuration(config)),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn get_provider_configuration(config: Config) {
    let mut client = WalletClient::connect(config.server.address)
        .await
        .expect("Unable to connect to server");
    let request = tonic::Request::new(GetProviderConfigurationRequest {});
    let response = client
        .get_provider_configuration(request)
        .await
        .expect("Get Provider Configuration failed");

    println!("Received Response: {:?}", response);
}

#[tokio::main]
async fn create(args: &CreateArgs, config: Config) -> Result<(), Error> {
    let mut new_config = config.clone();

    let key = match &args.key {
        Some(filename) => {
            serde_json::from_str(&read_file_as_string(Some(filename))).expect("Unable to parse key")
        }
        None => DIDKey::generate(&GenerateKeyRequest {
            seed: vec![],
            key_type: 0,
        })
        .unwrap(),
    };

    let did_doc_bytes = &key.did_document.unwrap().to_vec();

    let description = match &args.description {
        Some(desc) => desc.to_string(),
        None => "My Cloud Wallet".to_string(),
    };

    let mut client = WalletClient::connect(config.server.address)
        .await
        .expect("Unable to connect to server");

    let request = tonic::Request::new(CreateWalletRequest {
        controller: key.key[0].kid.clone(),
        description,
        security_code: args
            .security_code
            .map_or(String::default(), |x| x.to_string()),
        ..Default::default()
    });

    let response = client
        .create_wallet(request)
        .await
        .expect("Create Wallet failed")
        .into_inner();

    use okapi::MessageFormatter;
    let profile = WalletProfile {
        wallet_id: response.wallet_id,
        did_document: Some(Struct::from_vec(&did_doc_bytes).unwrap()),
        invoker: key.key[0].kid.clone(),
        invoker_jwk: key.key[0].to_vec(),
        capability: response.capability,
    };

    new_config.save_profile(profile, args.profile_name.unwrap(), args.set_default)
}

#[tokio::main]
async fn search(args: &SearchArgs, config: Config) {
    let query = args
        .query
        .map_or("SELECT * FROM c".to_string(), |q| q.to_string());

    let channel = Channel::from_shared(config.server.address.to_string())
        .unwrap()
        .connect()
        .await
        .expect("Unable to connect to server");

    let mut client = WalletClient::with_interceptor(channel, config);

    let request = tonic::Request::new(SearchRequest {
        query: query.clone(),
    });

    let response = client
        .search(request)
        .await
        .expect("Get Provider Configuration failed")
        .into_inner();
    use colored::*;
    println!("Search results for query '{}'", query.cyan().bold());
    println!(
        "{}",
        &serde_json::to_string_pretty(&response.items)
            .unwrap()
            .yellow()
    );
}

#[tokio::main]
async fn insert_item(args: &InsertItemArgs, config: Config) {
    let item: didcommgrpc::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.item)).expect("Unable to parse Item");
    let item_bytes = item.to_vec();

    use okapi::MessageFormatter;
    let item: okapi::proto::google_protobuf::Struct =
        okapi::proto::google_protobuf::Struct::from_vec(&item_bytes).unwrap();

    //println!("{:?}", item);
    let channel = Channel::from_shared(config.server.address.to_string())
        .unwrap()
        .connect()
        .await
        .expect("Unable to connect to server");

    let mut client = WalletClient::with_interceptor(channel, config);

    let response = client
        .insert_item(InsertItemRequest {
            item: Some(item),
            item_type: args.item_type.map_or(String::default(), |x| x.to_string()),
        })
        .await
        .expect("Insert item failed")
        .into_inner();

    println!("{:?}", response);
}
