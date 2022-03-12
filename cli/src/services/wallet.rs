use std::default::*;

use super::super::parser::wallet::*;
use super::Output;
use crate::error::Error;
use crate::proto::services::universalwallet::v1::DeleteItemRequest;
use crate::utils::read_file_as_string;
use crate::{grpc_channel, grpc_client_with_auth, MessageFormatter};
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
use serde_json::Value;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::Search(args) => search(args, config),
        Command::InsertItem(args) => insert_item(args, config),
        Command::DeleteItem(args) => delete_item(args, config),
        Command::Send(args) => send(args, config),
    }
}

#[tokio::main]
async fn search(args: &SearchArgs, config: CliConfig) -> Result<Output, Error> {
    let query = args
        .query
        .map_or("SELECT * FROM c".to_string(), |q| q.to_string());

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let request = tonic::Request::new(SearchRequest {
        query: query.clone(),
        ..Default::default()
    });

    let response = client.search(request).await?.into_inner();

    // TODO: this can be implemented better
    let mut out = String::default();
    out.push_str("[");
    for key in response.items {
        out.push_str(&key);
        out.push_str(",");
    }
    out = out.trim_end_matches(",").to_string();
    out.push_str("]");

    let mut output = Output::new();
    output.insert("query".into(), query);
    output.insert(
        "items".into(),
        // serde back and forth to get pretty print
        serde_json::to_string_pretty(
            &serde_json::from_str::<Value>(&out).map_err(|_| Error::SerializationError)?,
        )?,
    );

    Ok(output)
}

#[tokio::main]
async fn insert_item(args: &InsertItemArgs, config: CliConfig) -> Result<Output, Error> {
    let item_json = read_file_as_string(args.item);

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let response = client
        .insert_item(InsertItemRequest {
            item_json: item_json,
            item_type: args.item_type.map_or(String::default(), |x| x.to_string()),
        })
        .await?
        .into_inner();

    let mut output = Output::new();
    output.insert("item_id".into(), response.item_id);

    Ok(output)
}

#[tokio::main]
async fn delete_item(args: &DeleteItemArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let response = client
        .delete_item(DeleteItemRequest {
            item_id: args.item_id.map_or(String::default(), |x| x.to_string()),
        })
        .await?
        .into_inner();

    println!("{:#?}", response);

    Ok(Output::new())
}

#[tokio::main]
async fn send(args: &SendArgs, config: CliConfig) -> Result<Output, Error> {
    let item = read_file_as_string(args.item);

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config.to_owned());
    let response = client
        .send(SendRequest {
            delivery_method: Some(DeliveryMethod::Email(
                args.email.expect("Email must be specified").to_string(),
            )),
            document_json: item,
        })
        .await?
        .into_inner();

    Ok(Output::new())
}
