use crate::parser::template::*;
use crate::services::config::Error;
use crate::DefaultConfig;
use tonic::transport::Channel;
use trinsic::proto::services::verifiablecredentials::templates::v1::credential_templates_client::CredentialTemplatesClient;
use trinsic::proto::services::verifiablecredentials::templates::v1::{CreateCredentialTemplateRequest, FieldType, GetTemplateRequest, ListTemplatesRequest, TemplateField};
use trinsic::{grpc_channel, grpc_client_with_auth};
use trinsic::proto::services::trustregistry::v1::SearchRegistryRequest;

pub(crate) fn execute(args: &TemplateCommand, config: &DefaultConfig) -> Result<(), Error> {
    match args {
        TemplateCommand::Create(args) => create(args, config),
        TemplateCommand::Get(args) => get(args, config),
        TemplateCommand::List(args) => list(args, config),
        TemplateCommand::Search(args) => search(args, config),
    }
}

#[tokio::main]
async fn create(args: &CreateTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let mut req = CreateCredentialTemplateRequest {
        name: "".to_string(),
        fields: Default::default(),
        allow_additional_fields: false,
    };
    req.fields.insert(
        "asd".to_string(),
        TemplateField {
            r#type: FieldType::String as i32,
            optional: true,
            description: "sample field".to_string(),
        },
    );
    let request = tonic::Request::new(CreateCredentialTemplateRequest {
        name: "".to_string(),
        fields: Default::default(),
        allow_additional_fields: false,
    });

    let response = client
        .create(request)
        .await
        .expect("create template failed")
        .into_inner();

    println!("{:#?}", response);

    Ok(())
}

#[tokio::main]
async fn get(args: &GetTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetTemplateRequest {
        id: args.id.clone(),
    });

    let response = client
        .get(request)
        .await
        .expect("create template failed")
        .into_inner();

    println!("{:#?}", response.template.unwrap());

    Ok(())
}

#[tokio::main]
async fn list(args: &ListTemplatesArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(ListTemplatesRequest {});

    let response = client
        .list(request)
        .await
        .expect("create template failed")
        .into_inner();

    println!("{:#?}", response.template.unwrap());

    Ok(())
}

#[tokio::main]
async fn search(args: &SearchTemplatesArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SearchRegistryRequest {
        query: "SELECT * FROM c".to_string(),
        continuation_token: "".to_string(),
        options: None
    });

    let response = client
        .search(request)
        .await
        .expect("search templates failed")
        .into_inner();

    println!("{:#?}", response.template.unwrap());

    Ok(())
}
