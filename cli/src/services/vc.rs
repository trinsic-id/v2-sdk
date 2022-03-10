use crate::parser::issuer::{IssueFromTemplateArgs, UpdateStatusArgs};
use crate::{
    grpc_client_with_auth,
    proto::services::{
        common::v1::ResponseStatus,
        verifiablecredentials::v1::{
            create_proof_request::Proof, verifiable_credential_client::VerifiableCredentialClient,
            CheckStatusRequest, CreateProofRequest, IssueFromTemplateRequest, IssueRequest,
            UpdateStatusRequest, VerifyProofRequest,
        },
    },
    utils::{read_file_as_string, write_file},
    *,
};

use super::{super::parser::issuer::*, config::CliConfig};

use tonic::transport::Channel;

pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<(), Error> {
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
async fn issue(args: &IssueArgs, config: CliConfig) -> Result<(), Error> {
    let document_json = read_file_as_string(args.document);

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueRequest { document_json });

    let response = client.issue(request).await?.into_inner();

    write_file(args.out, &response.signed_document_json.as_bytes());

    Ok(())
}

#[tokio::main]
async fn issue_from_template(args: &IssueFromTemplateArgs, config: CliConfig) -> Result<(), Error> {
    let values = args.values_json.as_ref().map_or_else(
        || {
            args.values_file.as_ref().map_or_else(
                || panic!("you must specify values json or input file"),
                |x| read_file_as_string(Some(&x)),
            )
        },
        |x| x.to_owned(),
    );

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueFromTemplateRequest {
        template_id: args.template_id.clone(),
        values_json: values,
    });

    let response = client.issue_from_template(request).await?.into_inner();

    // parse and format, to get pretty print *shrug*
    let json: Value = serde_json::from_str(&response.document_json).unwrap();
    println!("{}", serde_json::to_string_pretty(&json).unwrap());

    Ok(())
}

#[tokio::main]
async fn get_status(args: &GetStatusArgs, config: CliConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CheckStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
    });

    let response = client.check_status(request).await?.into_inner();

    println!("Revoked = {}", response.revoked);

    Ok(())
}

#[tokio::main]
async fn update_status(args: &UpdateStatusArgs, config: CliConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(UpdateStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
        revoked: args.revoked,
    });

    let response = client.update_status(request).await?.into_inner();

    println!("{:#?}", ResponseStatus::from_i32(response.status).unwrap());

    Ok(())
}

#[tokio::main]
async fn create_proof(args: &CreateProofArgs, config: CliConfig) -> Result<(), Error> {
    let document_id = match args.document_id {
        Some(id) => id.to_string(),
        None => panic!("Please include document id"),
    };
    let reveal_document_json = read_file_as_string(args.reveal_document);

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CreateProofRequest {
        reveal_document_json,
        proof: Some(Proof::ItemId(document_id)),
    });

    let response = client.create_proof(request).await?.into_inner();

    write_file(args.out, response.proof_document_json.as_bytes());

    Ok(())
}

#[tokio::main]
async fn verify_proof(args: &VerifyProofArgs, config: CliConfig) -> Result<(), Error> {
    let proof_document_json = read_file_as_string(args.proof_document);

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(VerifyProofRequest {
        proof_document_json,
    });

    let response = client.verify_proof(request).await?.into_inner();

    println!("{:}", response.is_valid);

    Ok(())
}
