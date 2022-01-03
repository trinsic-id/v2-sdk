use trinsic::{grpc_client_with_auth, grpc_channel};
use tonic::transport::Channel;
use trinsic::proto::services::verifiablecredentials::templates::v1::{CreateCredentialTemplateRequest, FieldType, TemplateField};
use trinsic::proto::services::verifiablecredentials::templates::v1::credential_templates_client::CredentialTemplatesClient;
use crate::parser::template::*;
use crate::services::config::Error;
use crate::DefaultConfig;

pub(crate) fn execute(args: &Command, config: &DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Create(args) => create(args, config),
    }
}

#[tokio::main]
async fn create(args: &CreateTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(CredentialTemplatesClient<Channel>, config.to_owned());

    let mut req = CreateCredentialTemplateRequest{
        name: "".to_string(),
        fields: Default::default(),
        allow_additional_fields: false
    };
    req.fields.insert("asd".to_string(), TemplateField{
        r#type: FieldType::String as i32,
        optional: true,
        description: "sample field".to_string()
    });
    let request = tonic::Request::new(CreateCredentialTemplateRequest {
        name: "".to_string(),
        fields: Default::default(),
        allow_additional_fields: false
    });

    let response = client
        .create(request)
        .await
        .expect("create template failed")
        .into_inner();

    println!("{:#?}", response);

    Ok(())
}
