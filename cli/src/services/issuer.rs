use crate::parser::issuer::{IssueFromTemplateArgs, UpdateStatusArgs};
use crate::proto::services::common::v1::ResponseStatus;
use crate::proto::{
    services::{
        common::v1::{json_payload::Json, JsonPayload},
        verifiablecredentials::v1::{
            verifiable_credential_client::VerifiableCredentialClient, CheckStatusRequest,
            CreateProofRequest, IssueFromTemplateRequest, IssueRequest, UpdateStatusRequest,
            VerifyProofRequest,
        },
    },
    JsonPretty,
};
use crate::utils::{read_file_as_string, write_file};
use crate::{grpc_client_with_auth, *};

use super::{super::parser::issuer::*, config::DefaultConfig};
use okapi::MessageFormatter;
use tonic::transport::Channel;

pub(crate) fn execute(args: &Command, config: DefaultConfig) {
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
async fn issue(args: &IssueArgs, config: DefaultConfig) {
    let document: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.document)).expect("Unable to parse Item");
    let document = document.to_vec();

    use crate::MessageFormatter;
    let document: crate::proto::google::protobuf::Struct =
        crate::proto::google::protobuf::Struct::from_vec(&document).unwrap();

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(IssueRequest {
        document: Some(JsonPayload {
            json: Some(Json::JsonStruct(document)),
        }),
    });

    let response = client
        .issue(request)
        .await
        .expect("Issue failed")
        .into_inner();
    write_file(
        args.out,
        &response.document.unwrap().to_string_pretty().as_bytes(),
    );
}

#[tokio::main]
async fn issue_from_template(args: &IssueFromTemplateArgs, config: DefaultConfig) {
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

    let response = client
        .issue_from_template(request)
        .await
        .expect("Issue failed")
        .into_inner();

    // parse and format, to get pretty print *shrug*
    let json: Value = serde_json::from_str(&response.document_json).unwrap();
    println!("{}", serde_json::to_string_pretty(&json).unwrap())
}

#[tokio::main]
async fn get_status(args: &GetStatusArgs, config: DefaultConfig) {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CheckStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
    });

    let response = client
        .check_status(request)
        .await
        .expect("get status failed")
        .into_inner();

    println!("Revoked = {}", response.revoked)
}

#[tokio::main]
async fn update_status(args: &UpdateStatusArgs, config: DefaultConfig) {
    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(UpdateStatusRequest {
        credential_status_id: args.credential_status_id.clone(),
        revoked: args.revoked,
    });

    let response = client
        .update_status(request)
        .await
        .expect("update status failed")
        .into_inner();

    println!("{:#?}", ResponseStatus::from_i32(response.status).unwrap())
}

#[tokio::main]
async fn create_proof(args: &CreateProofArgs, config: DefaultConfig) {
    let document_id = match args.document_id {
        Some(id) => id.to_string(),
        None => panic!("Please include document id"),
    };
    let document: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.reveal_document))
            .expect("Unable to parse Item");
    let document = document.to_vec();

    use crate::MessageFormatter;
    let document: crate::proto::google::protobuf::Struct =
        crate::proto::google::protobuf::Struct::from_vec(&document).unwrap();

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(CreateProofRequest {
        reveal_document: Some(JsonPayload {
            json: Some(Json::JsonStruct(document)),
        }),
        document_id,
    });

    let response = client
        .create_proof(request)
        .await
        .expect("Create proof failed")
        .into_inner();
    write_file(
        args.out,
        response
            .proof_document
            .unwrap()
            .to_string_pretty()
            .as_bytes(),
    );
}

#[tokio::main]
async fn verify_proof(args: &VerifyProofArgs, config: DefaultConfig) {
    let document: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.proof_document))
            .expect("Unable to parse Item");
    let document = document.to_vec();

    use crate::MessageFormatter;
    let document: crate::proto::google::protobuf::Struct =
        crate::proto::google::protobuf::Struct::from_vec(&document).unwrap();

    let mut client = grpc_client_with_auth!(VerifiableCredentialClient<Channel>, config);

    let request = tonic::Request::new(VerifyProofRequest {
        proof_document: Some(JsonPayload {
            json: Some(Json::JsonStruct(document)),
        }),
    });

    let response = client
        .verify_proof(request)
        .await
        .expect("Verify proof failed")
        .into_inner();

    println!("{:}", response.valid);
}
