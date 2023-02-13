use super::{super::parser::vc::*, config::CliConfig, Item, Output};
use crate::proto::services::verifiablecredentials::v1::create_proof_request::Disclosure;
use crate::proto::services::verifiablecredentials::v1::RevealTemplateAttributes;
use crate::{
    grpc_client_with_auth,
    parser::vc::{IssueFromTemplateArgs, UpdateStatusArgs},
    proto::services::verifiablecredentials::v1::{
        create_proof_request::Proof, verifiable_credential_client::VerifiableCredentialClient, CheckStatusRequest, CreateProofRequest,
        IssueFromTemplateRequest, IssueRequest, UpdateStatusRequest, VerifyProofRequest,
    },
    utils::{prettify_json, read_file, to_value, write_file},
    *,
};
use tonic::transport::Channel;

pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::Issue(args) => issue(args, config),
        Command::CreateProof(args) => create_proof(args, config),
        Command::VerifyProof(args) => verify_proof(args, config),
        Command::IssueFromTemplate(args) => issue_from_template(args, config),
        Command::GetStatus(args) => get_status(args, config),
        Command::UpdateStatus(args) => update_status(args, config),
    }
}

#[tokio::main]
async fn issue(args: &IssueArgs, config: CliConfig) -> Result<Output, Error> {
    let document_json = read_file(
        args.document
            .as_ref()
            .ok_or(Error::InvalidArgument("missing document file".to_string()))?,
    )?;

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueRequest { document_json });

    let response = client.issue(request).await?.into_inner();

    match &args.out {
        Some(file) => write_file(file, &prettify_json(&response.signed_document_json)?.as_bytes())?,
        None => (),
    }

    Ok(dict! {
        "signed document".into() => Item::Json(to_value(&response.signed_document_json)?)
    })
}

#[tokio::main]
async fn issue_from_template(args: &IssueFromTemplateArgs, config: CliConfig) -> Result<Output, Error> {
    let values = match &args.values_json {
        Some(x) => x.to_owned(),
        None => match &args.values_file {
            Some(x) => read_file(x)?,
            None => {
                return Err(Error::InvalidArgument(
                    "you must specify input values as argument or specify an input file".to_string(),
                ))
            }
        },
    };

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueFromTemplateRequest {
        template_id: args.template_id.clone(),
        values_json: values,
        framework_id: args.framework_id.clone().unwrap_or_default(),
        ..Default::default()
    });

    let response = client.issue_from_template(request).await?.into_inner();

    match &args.output_file {
        Some(file) => write_file(file, &prettify_json(&response.document_json)?.as_bytes())?,
        None => (),
    }

    Ok(dict! {
        "signed document".into() => Item::Json(to_value(&response.document_json)?)
    })
}

#[tokio::main]
async fn get_status(args: &GetStatusArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CheckStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
    });

    let response = client.check_status(request).await?.into_inner();

    Ok(dict! {
        "status".into() => Item::String(response.revoked.to_string())
    })
}

#[tokio::main]
async fn update_status(args: &UpdateStatusArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(UpdateStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
        revoked: args.revoked,
    });

    let _response = client.update_status(request).await?.into_inner();

    Ok(Output::new())
}

#[tokio::main]
async fn create_proof(args: &CreateProofArgs, config: CliConfig) -> Result<Output, Error> {
    let document_json = match &args.document_file {
        Some(x) => read_file(x)?,
        None => String::default(),
    };
    let reveal_document_json = match &args.reveal_document {
        Some(x) => read_file(x)?,
        None => String::default(),
    };
    // TODO - Read the nonce in.

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CreateProofRequest {
        nonce: vec![],
        disclosure: Some(if reveal_document_json.is_empty() {
            // TODO - Support sending the list of template attributes via the command line
            Disclosure::RevealTemplate(RevealTemplateAttributes { template_attributes: vec![] })
        } else {
            Disclosure::RevealDocumentJson(reveal_document_json)
        }),
        proof: Some(if document_json.is_empty() {
            Proof::ItemId(args.item_id.as_ref().ok_or(Error::MissingArguments)?.clone())
        } else {
            Proof::DocumentJson(document_json)
        }),
        ..Default::default()
    });

    let response = client.create_proof(request).await?.into_inner();

    match &args.out {
        Some(file) => write_file(file, prettify_json(&response.proof_document_json)?.as_bytes())?,
        None => (),
    }

    Ok(dict! {
        "proof document".into() => Item::Json(to_value(&response.proof_document_json)?)
    })
}

#[tokio::main]
async fn verify_proof(args: &VerifyProofArgs, config: CliConfig) -> Result<Output, Error> {
    let proof_document_json = read_file(args.proof_document.unwrap())?;

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(VerifyProofRequest { proof_document_json });

    let response = client.verify_proof(request).await?.into_inner();

    Ok(dict! {
        "is valid".into() => Item::String(response.is_valid.to_string()),
        "validation results".into() => Item::Json(to_value(&response.validation_results)?)
    })
}
