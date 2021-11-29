use trinsic::proto::services::common::v1::{json_payload::Json, JsonPayload};
use trinsic::proto::services::verifiablecredentials::v1::{
    verifiable_credential_client::VerifiableCredentialClient, CreateProofRequest, IssueRequest,
    VerifyProofRequest,
};
use trinsic::proto::JsonPretty;
use trinsic::utils::{read_file_as_string, write_file};
use trinsic::{grpc_client_with_auth, *};

use super::{super::parser::issuer::*, config::DefaultConfig};
use okapi::MessageFormatter;
use tonic::transport::Channel;

pub(crate) fn execute(args: &Command, config: DefaultConfig) {
    match args {
        Command::Issue(args) => issue(args, config),
        Command::CreateProof(args) => create_proof(args, config),
        Command::VerifyProof(args) => verify_proof(args, config),
    }
}

#[tokio::main]
async fn issue(args: &IssueArgs, config: DefaultConfig) {
    let document: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.document)).expect("Unable to parse Item");
    let document = document.to_vec();

    use trinsic::MessageFormatter;
    let document: trinsic::proto::google::protobuf::Struct =
        trinsic::proto::google::protobuf::Struct::from_vec(&document).unwrap();

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
async fn create_proof(args: &CreateProofArgs, config: DefaultConfig) {
    let document_id = match args.document_id {
        Some(id) => id.to_string(),
        None => panic!("Please include document id"),
    };
    let document: okapi::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.reveal_document))
            .expect("Unable to parse Item");
    let document = document.to_vec();

    use trinsic::MessageFormatter;
    let document: trinsic::proto::google::protobuf::Struct =
        trinsic::proto::google::protobuf::Struct::from_vec(&document).unwrap();

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

    use trinsic::MessageFormatter;
    let document: trinsic::proto::google::protobuf::Struct =
        trinsic::proto::google::protobuf::Struct::from_vec(&document).unwrap();

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
