use std::default::*;

use super::super::parser::wallet::*;
use crate::proto::services::universalwallet::v1::DeleteItemRequest;
use crate::utils::read_file_as_string;
use crate::{grpc_channel, grpc_client_with_auth};
use crate::{
    proto::services::{
        universalwallet::v1::{
            universal_wallet_client::UniversalWalletClient, InsertItemRequest, SearchRequest,
        },
        verifiablecredentials::v1::{
            send_request::DeliveryMethod, verifiable_credential_client::VerifiableCredentialClient,
            SendRequest,
        },
    },
    services::config::*,
};
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Search(args) => Ok(search(args, config)),
        Command::InsertItem(args) => Ok(insert_item(args, config)),
        Command::DeleteItem(args) => Ok(delete_item(args, config)),
        Command::Send(args) => Ok(send(args, config)),
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
    let item_json = read_file_as_string(args.item);

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let response = client
        .insert_item(InsertItemRequest {
            item_json: item_json,
            item_type: args.item_type.map_or(String::default(), |x| x.to_string()),
        })
        .await
        .expect("Insert item failed")
        .into_inner();

    println!("{:#?}", response);
}

#[tokio::main]
async fn delete_item(args: &DeleteItemArgs, config: DefaultConfig) {
    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let response = client
        .delete_item(DeleteItemRequest {
            item_id: args.item_id.map_or(String::default(), |x| x.to_string()),
        })
        .await
        .expect("Delete item failed")
        .into_inner();

    println!("{:#?}", response);
}

#[tokio::main]
async fn send(args: &SendArgs, config: DefaultConfig) {
    let item = read_file_as_string(args.item);

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config.to_owned());
    let response = client
        .send(SendRequest {
            delivery_method: Some(DeliveryMethod::Email(
                args.email.expect("Email must be specified").to_string(),
            )),
            document_json: item,
        })
        .await
        .expect("Send item failed")
        .into_inner();

    println!("{:#?}", response);
}
