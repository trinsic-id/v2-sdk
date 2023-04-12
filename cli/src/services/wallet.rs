use super::{super::parser::wallet::*, Item, Output};
use crate::{
    dict,
    error::Error,
    grpc_channel, grpc_client_with_auth, grpc_client_with_metadata,
    proto::services::{
        universalwallet::v1::{
            universal_wallet_client::UniversalWalletClient, CreateWalletRequest, DeleteItemRequest, GetMyInfoRequest, InsertItemRequest,
            SearchRequest,
        },
        verifiablecredentials::v1::{send_request::DeliveryMethod, verifiable_credential_client::VerifiableCredentialClient, SendRequest},
    },
    services::config::*,
    utils::{as_value, read_file, to_value},
};
use std::default::*;
use std::str::FromStr;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::Search(args) => search(args, config),
        Command::InsertItem(args) => insert_item(args, config),
        Command::DeleteItem(args) => delete_item(args, config),
        Command::Send(args) => send(args, config),
        Command::CreateWallet(args) => create_wallet(args, config),
        Command::GetMyInfo => my_info(config),
    }
}

#[tokio::main]
async fn search(args: &SearchArgs, config: CliConfig) -> Result<Output, Error> {
    let query = args
        .query
        .map_or("SELECT _.data, _.id, _.type FROM _ OFFSET 0 LIMIT 100".to_string(), |q| q.to_string());

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let request = tonic::Request::new(SearchRequest {
        query: query.clone(),
        ..Default::default()
    });

    let response = client.search(request).await?.into_inner();

    // TODO: this can be implemented better
    let mut out = String::default();
    out.push_str("[");
    for item in response.items {
        out.push_str(format!("{},", &item).as_str());
    }
    out = out.trim_end_matches(",").to_string();
    out.push_str("]");

    Ok(dict! {
        "query".into() => Item::String(query),
        "items".into() => Item::Json(as_value(&out)?)
    })
}

#[tokio::main]
async fn create_wallet(args: &CreateWalletArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_metadata!(UniversalWalletClient<Channel>, config.to_owned());
    let request = tonic::Request::new(CreateWalletRequest {
        ecosystem_id: args.ecosystem.map_or(String::default(), |x| x.to_string()),
        ..Default::default()
    });

    let response = client.create_wallet(request).await?.into_inner();

    Ok(dict! {
        "auth token".into() => Item::String(response.auth_token),
        "token id".into() => Item::String(response.token_id),
        "wallet".into() => Item::Json(to_value(&response.wallet)?)
    })
}

#[tokio::main]
async fn my_info(config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let request = tonic::Request::new(GetMyInfoRequest {});

    let response = client.get_my_info(request).await?.into_inner();

    Ok(dict! {
        "wallet".into() => Item::Json(to_value(&response.wallet)?)
    })
}

#[tokio::main]
async fn insert_item(args: &InsertItemArgs, config: CliConfig) -> Result<Output, Error> {
    let item_json = read_file(args.item.ok_or(Error::InvalidArgument("input document must be specified".to_string()))?)?;

    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let response = client
        .insert_item(InsertItemRequest {
            item_json: item_json,
            item_type: args.item_type.map_or(String::default(), |x| x.to_string()),
        })
        .await?
        .into_inner();

    Ok(dict! {
        "item id".into() => Item::String(response.item_id)
    })
}

#[tokio::main]
async fn delete_item(args: &DeleteItemArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(UniversalWalletClient<Channel>, config.to_owned());
    let _response = client
        .delete_item(DeleteItemRequest {
            item_id: args.item_id.map_or(String::default(), |x| x.to_string()),
        })
        .await?
        .into_inner();

    Ok(Output::new())
}

#[tokio::main]
async fn send(args: &SendArgs, config: CliConfig) -> Result<Output, Error> {
    let item = read_file(args.item.ok_or(Error::InvalidArgument("input document must be specified".to_string()))?)?;
    let send_notification = Some(args.send_notification.map(|x| bool::from_str(x).unwrap_or(false))).unwrap();

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config.to_owned());
    let _response = client
        .send(SendRequest {
            delivery_method: Some(DeliveryMethod::Email(args.email.expect("Email must be specified").to_string())),
            send_notification: send_notification.unwrap_or_default(),
            document_json: item,
        })
        .await?
        .into_inner();

    Ok(Output::new())
}
