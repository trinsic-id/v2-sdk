use crate::{
    error::Error,
    grpc_channel, grpc_client_with_auth,
    parser::template::*,
    proto::services::verifiablecredentials::templates::v1::{
        credential_templates_client::CredentialTemplatesClient, CreateCredentialTemplateRequest, DeleteCredentialTemplateRequest,
        GetCredentialTemplateRequest, ListCredentialTemplatesRequest, SearchCredentialTemplatesRequest,
    },
    services::CliConfig,
    utils::{prettify_json, read_file},
    MessageFormatter,
};
use indexmap::indexmap;
use std::collections::HashMap;
use tonic::transport::Channel;

use super::Output;

pub(crate) fn execute(args: &TemplateCommand, config: &CliConfig) -> Result<Output, Error> {
    match args {
        TemplateCommand::Create(args) => create(args, config),
        TemplateCommand::Get(args) => get(args, config),
        TemplateCommand::List(args) => list(args, config),
        TemplateCommand::Search(args) => search(args, config),
        TemplateCommand::Delete(args) => delete(args, config),
    }
}

#[tokio::main]
async fn create(args: &CreateTemplateArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let fields: Result<HashMap<String, Field>, _> = match &args.fields_data {
        Some(data) => serde_json::from_str(&data),
        None => match &args.fields_file {
            Some(file) => serde_json::from_str(&read_file(file)?),
            None => return Err(Error::InvalidArgument("you must specify input fields file".to_string())),
        },
    };

    let req = CreateCredentialTemplateRequest {
        name: args.name.clone(),
        fields: to_map(fields?),
        allow_additional_fields: args.allow_additional,
    };
    let request = tonic::Request::new(req);

    let response = client.create(request).await?.into_inner();

    Ok(indexmap! {
        "template".into() => response.to_string_pretty()?
    })
}

#[tokio::main]
async fn get(args: &GetTemplateArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetCredentialTemplateRequest { id: args.id.clone() });

    let response = client.get(request).await?.into_inner();

    Ok(indexmap! {
        "template".into() => response.to_string_pretty()?
    })
}

#[tokio::main]
async fn list(args: &ListTemplatesArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(ListCredentialTemplatesRequest {
        query: args.query.clone(),
        continuation_token: args.continuation_token.clone(),
    });

    let response = client.list(request).await?.into_inner();

    Ok(indexmap! {
        "response".into() => response.to_string_pretty()?
    })
}

#[tokio::main]
async fn search(args: &SearchTemplatesArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SearchCredentialTemplatesRequest {
        query: args.query.clone(),
        continuation_token: args.continuation_token.clone(),
    });

    let response = client.search(request).await?.into_inner();

    Ok(indexmap! {
        "query".into() => args.query.clone(),
        "templates".into() => prettify_json(&response.items_json)?,
        "more results".into() => response.has_more.to_string()
    })
}

#[tokio::main]
async fn delete(args: &DeleteTemplateArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(DeleteCredentialTemplateRequest { id: args.id.clone() });

    let _response = client.delete(request).await?.into_inner();

    Ok(Output::new())
}
