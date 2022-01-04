use std::default::*;

use super::super::parser::wallet::*;
use crate::proto::google::protobuf::Struct;
use crate::proto::services::common::v1::json_payload::Json;
use crate::proto::services::common::v1::{JsonPayload, ServerConfig};
use crate::proto::services::universalwallet::v1::{
    universal_wallet_client::UniversalWalletClient, InsertItemRequest, SearchRequest,
};
use crate::proto::services::verifiablecredentials::v1::send_request::DeliveryMethod;
use crate::proto::services::verifiablecredentials::v1::verifiable_credential_client::VerifiableCredentialClient;
use crate::proto::services::verifiablecredentials::v1::SendRequest;
use crate::services::config::*;
use crate::utils::read_file_as_string;
use crate::{grpc_channel, grpc_client_with_auth};
use okapi::MessageFormatter;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Search(args) => Ok(search(args, config)),
        Command::InsertItem(args) => Ok(insert_item(args, config)),
        Command::Send(args) => Ok(send(args, config)),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn search(args: &SearchArgs, config: DefaultConfig) {
    let query = args
        .query
        .map_or("SELECT * FROM c".to_string(), |q| q.to_string());

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let request = tonic::Request::new(SearchRequest {
        query: query.clone(),
        ..Default::default()
    });

    let response = client
        .search(request)
        .await
        .expect("Search failed")
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

    use crate::MessageFormatter;
    let item: Struct = Struct::from_vec(&item_bytes).unwrap();

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
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

    println!("{:#?}", response);
}

#[tokio::main]
async fn send(args: &SendArgs, config: DefaultConfig) {
    let item: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.item)).expect("Unable to parse Item");
    let item_bytes = item.to_vec();

    use crate::MessageFormatter;
    let item: Struct = Struct::from_vec(&item_bytes).unwrap();

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config.to_owned());
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

    println!("{:#?}", response);
}
