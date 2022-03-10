use std::collections::HashMap;

use crate::parser::template::*;

use crate::proto::services::verifiablecredentials::templates::v1::{
    credential_templates_client::CredentialTemplatesClient, CreateCredentialTemplateRequest,
    DeleteCredentialTemplateRequest, GetCredentialTemplateRequest, ListCredentialTemplatesRequest,
    SearchCredentialTemplatesRequest,
};
use crate::services::config::Error;
use crate::services::DefaultConfig;
use crate::utils::read_file_as_string;
use crate::{grpc_channel, grpc_client_with_auth};
use colored::Colorize;
use tonic::transport::Channel;

pub(crate) fn execute(args: &TemplateCommand, config: &DefaultConfig) -> Result<(), Error> {
    match args {
        TemplateCommand::Create(args) => create(args, config),
        TemplateCommand::Get(args) => get(args, config),
        TemplateCommand::List(args) => list(args, config),
        TemplateCommand::Search(args) => search(args, config),
        TemplateCommand::Delete(args) => delete(args, config),
    }
}

#[tokio::main]
async fn create(args: &CreateTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let fields: Result<HashMap<String, Field>, _> = match &args.fields_data {
        Some(data) => serde_json::from_str(&data),
        None => match &args.fields_file {
            Some(file) => serde_json::from_str(&read_file_as_string(Some(&file))),
            None => panic!("you must specify fields data or file"),
        },
    };

    let req = CreateCredentialTemplateRequest {
        name: args.name.clone(),
        fields: to_map(fields?),
        allow_additional_fields: args.allow_additional,
    };
    let request = tonic::Request::new(req);

    let response = client.create(request).await?.into_inner();

    println!("{:#?}", response);

    Ok(())
}

#[tokio::main]
async fn get(args: &GetTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetCredentialTemplateRequest {
        id: args.id.clone(),
    });

    let response = client.get(request).await?.into_inner();

    println!("{:#?}", response.template);

    Ok(())
}

#[tokio::main]
async fn list(args: &ListTemplatesArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(ListCredentialTemplatesRequest {
        query: args.query.clone(),
        continuation_token: args.continuation_token.clone(),
    });

    let response = client.list(request).await?.into_inner();

    println!("{:#?}", response.templates);

    if response.has_more_results {
        println!(
            "More results available. Use argument '{}'",
            format!("--continuation-token {}", response.continuation_token).cyan()
        )
    }

    Ok(())
}

#[tokio::main]
async fn search(args: &SearchTemplatesArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SearchCredentialTemplatesRequest {
        query: args.query.clone(),
        continuation_token: args.continuation_token.clone(),
    });

    let response = client.search(request).await?.into_inner();

    println!("{:#?}", response.items_json);

    if response.has_more {
        println!(
            "More results available. Use argument '{}'",
            format!("--continuation-token {}", response.continuation_token).cyan()
        )
    }

    Ok(())
}

#[tokio::main]
async fn delete(args: &DeleteTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(DeleteCredentialTemplateRequest {
        id: args.id.clone(),
    });

    let response = client.delete(request).await?.into_inner();

    println!("{:#?}", response);

    Ok(())
}
