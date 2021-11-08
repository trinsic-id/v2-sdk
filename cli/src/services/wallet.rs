use std::default::*;

use super::super::parser::wallet::*;
use crate::services::config::*;
use okapi::{proto::keys::*, DIDKey, MessageFormatter};
use tonic::codegen::Body;
use tonic::transport::Channel;
use trinsic::proto::google::protobuf::Struct;
use trinsic::proto::services::common::v1::json_payload::Json;
use trinsic::proto::services::common::v1::{JsonPayload, ServerConfig};
use trinsic::proto::services::universalwallet::v1::{
    wallet_client::WalletClient, CreateWalletRequest, InsertItemRequest, SearchRequest,
    WalletProfile,
};
use trinsic::proto::services::verifiablecredentials::v1::credential_client::CredentialClient;
use trinsic::proto::services::verifiablecredentials::v1::send_request::DeliveryMethod;
use trinsic::proto::services::verifiablecredentials::v1::SendRequest;
use trinsic::{proto::services::universalwallet::v1::*, utils::read_file_as_string};

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Create(args) => create(args, config),
        Command::Search(args) => Ok(search(args, config)),
        Command::InsertItem(args) => Ok(insert_item(args, config)),
        Command::Send(args) => Ok(send(args, config)),
        Command::GetProviderConfiguration => Ok(get_provider_configuration(config)),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn get_provider_configuration(config: DefaultConfig) {
    let mut client = WalletClient::connect(config.server.address)
        .await
        .expect("Unable to connect to server");
    let request = tonic::Request::new(GetProviderConfigurationRequest {
        ..Default::default()
    });
    let response = client
        .get_provider_configuration(request)
        .await
        .expect("Get Provider Configuration failed");

    println!("Received Response: {:?}", response);
}

#[tokio::main]
async fn create(args: &CreateArgs, config: DefaultConfig) -> Result<(), Error> {
    let mut new_config = config.clone();

    let description = match &args.description {
        Some(desc) => desc.to_string(),
        None => "New Wallet (from CLI)".to_string(),
    };

    let channel = Channel::from_shared(config.server.address)
        .unwrap()
        .connect()
        .await
        .unwrap();

    let mut client = WalletClient::new(channel);

    let request = tonic::Request::new(CreateWalletRequest {
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

    let profile = WalletProfile {
        name: args.profile_name.map_or(String::new(), |x| x.to_string()),
        auth_data: response.auth_data,
        auth_token: response.auth_token,
        is_protected: response.is_protected,
        config: Some(ServerConfig {
            ..Default::default()
        }),
    };

    new_config.save_profile(profile, args.profile_name.unwrap(), args.set_default)
}

#[tokio::main]
async fn search(args: &SearchArgs, config: DefaultConfig) {
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
        ..Default::default()
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
async fn insert_item(args: &InsertItemArgs, config: DefaultConfig) {
    let item: Struct =
        serde_json::from_str(&read_file_as_string(args.item)).expect("Unable to parse Item");
    let item_bytes = item.to_vec();

    use trinsic::MessageFormatter;
    let item: Struct = Struct::from_vec(&item_bytes).unwrap();

    //println!("{:?}", item);
    let channel = Channel::from_shared(config.server.address.to_string())
        .unwrap()
        .connect()
        .await
        .expect("Unable to connect to server");

    let mut client = WalletClient::with_interceptor(channel, config);

    let response = client
        .insert_item(InsertItemRequest {
            item: Some(JsonPayload {
                json: Some(Json::JsonStruct(item)),
            }),
            item_type: args.item_type.map_or(String::default(), |x| x.to_string()),
        })
        .await
        .expect("Insert item failed")
        .into_inner();

    println!("{:?}", response);
}

#[tokio::main]
async fn send(args: &SendArgs, config: DefaultConfig) {
    let item: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.item)).expect("Unable to parse Item");
    let item_bytes = item.to_vec();

    use trinsic::MessageFormatter;
    let item: Struct = Struct::from_vec(&item_bytes).unwrap();

    let channel = Channel::from_shared(config.server.address.to_string())
        .unwrap()
        .connect()
        .await
        .expect("Unable to connect to server");

    let mut client = CredentialClient::with_interceptor(channel, config);

    let response = client
        .send(SendRequest {
            document: Some(JsonPayload {
                json: Some(Json::JsonStruct(item)),
            }),
            delivery_method: Some(DeliveryMethod::Email(
                args.email.expect("Email must be specified").to_string(),
            )),
        })
        .await
        .expect("Send item failed")
        .into_inner();

    println!("{:?}", response);
}
