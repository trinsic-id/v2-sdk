use super::{super::parser::vc::*, config::CliConfig, Output};
use crate::{
    grpc_client_with_auth,
    parser::vc::{IssueFromTemplateArgs, UpdateStatusArgs},
    proto::services::verifiablecredentials::v1::{
        create_proof_request::Proof, verifiable_credential_client::VerifiableCredentialClient,
        CheckStatusRequest, CreateProofRequest, IssueFromTemplateRequest, IssueRequest,
        UpdateStatusRequest, VerifyProofRequest,
    },
    utils::{prettify_json, read_file, write_file},
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
        Some(file) => write_file(
            file,
            &prettify_json(&response.signed_document_json)?.as_bytes(),
        )?,
        None => (),
    }

    let mut output = Output::default();
    output.insert(
        "signed document".into(),
        prettify_json(&response.signed_document_json)?,
    );
    Ok(output)
}

#[tokio::main]
async fn issue_from_template(
    args: &IssueFromTemplateArgs,
    config: CliConfig,
) -> Result<Output, Error> {
    let values = match &args.values_json {
        Some(x) => x.to_owned(),
        None => match &args.values_file {
            Some(x) => read_file(x)?,
            None => {
                return Err(Error::InvalidArgument(
                    "you must specify input values as argument or specify an input file"
                        .to_string(),
                ))
            }
        },
    };

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueFromTemplateRequest {
        template_id: args.template_id.clone(),
        values_json: values,
        ..Default::default()
    });

    let response = client.issue_from_template(request).await?.into_inner();

    match &args.output_file {
        Some(file) => write_file(file, &prettify_json(&response.document_json)?.as_bytes())?,
        None => (),
    }

    let mut output = Output::default();
    output.insert(
        "signed document".into(),
        prettify_json(&response.document_json)?,
    );
    Ok(output)
}

#[tokio::main]
async fn get_status(args: &GetStatusArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CheckStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
    });

    let response = client.check_status(request).await?.into_inner();

    let mut output = Output::default();
    output.insert("revoked".into(), response.revoked.to_string());
    Ok(output)
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

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CreateProofRequest {
        reveal_document_json,
        proof: Some(if document_json.is_empty() {
            Proof::ItemId(
                args.item_id
                    .as_ref()
                    .ok_or(Error::MissingArguments)?
                    .clone(),
            )
        } else {
            Proof::DocumentJson(document_json)
        }),
    });

    let response = client.create_proof(request).await?.into_inner();

    match &args.out {
        Some(file) => write_file(
            file,
            prettify_json(&response.proof_document_json)?.as_bytes(),
        )?,
        None => (),
    }

    let mut output = Output::default();
    output.insert(
        "proof document".into(),
        prettify_json(&response.proof_document_json)?,
    );
    Ok(output)
}

#[tokio::main]
async fn verify_proof(args: &VerifyProofArgs, config: CliConfig) -> Result<Output, Error> {
    let proof_document_json = read_file(args.proof_document.unwrap())?;

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(VerifyProofRequest {
        proof_document_json,
    });

    let response = client.verify_proof(request).await?.into_inner();

    let mut output = Output::default();
    output.insert("is valid".into(), response.is_valid.to_string());
    output.insert("validation results".into(), serde_json::to_string_pretty(&response.validation_results)?);
    Ok(output)
}
