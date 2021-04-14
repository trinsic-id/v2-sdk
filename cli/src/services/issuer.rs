use okapi::proto::trinsic_services::{
    credential_client::CredentialClient, CreateProofRequest, IssueRequest, VerifyProofRequest,
};
use okapi::utils::{read_file_as_string, write_file, SERVER_URL};

use super::super::parser::issuer::*;
use didcommgrpc::*;
use std::fs::OpenOptions;
use tonic::{transport::Channel, Request};

pub fn execute(args: &Command) {
    match args {
        Command::Issue(args) => issue(args),
        Command::CreateProof(args) => create_proof(args),
        Command::VerifyProof(args) => verify_proof(args),
    }
}

#[tokio::main]
async fn issue(args: &IssueArgs) {
    let channel = Channel::from_static(SERVER_URL)
        .connect()
        .await
        .expect("Unable to connect to server");
    let document: didcommgrpc::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.document)).expect("Unable to parse Item");
    let document = document.to_vec();

    use okapi::MessageFormatter;
    let document: okapi::proto::google_protobuf::Struct =
        okapi::proto::google_protobuf::Struct::from_vec(&document).unwrap();

    let mut client = CredentialClient::with_interceptor(channel, move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert(
            "capability-invocation",
            capability_invocation.parse().unwrap(),
        );
        Ok(req)
    });

    let request = tonic::Request::new(IssueRequest {
        document: Some(document),
    });

    let response = client
        .issue(request)
        .await
        .expect("Issue failed")
        .into_inner();
    write_file(
        args.out,
        &serde_json::to_string(&response.document)
            .unwrap()
            .as_bytes()
            .to_vec(),
    );
}

#[tokio::main]
async fn create_proof(args: &CreateProofArgs) {
    let channel = Channel::from_static(SERVER_URL)
        .connect()
        .await
        .expect("Unable to connect to server");
    let document_id = match args.document_id {
        Some(id) => id.to_string(),
        None => panic!("Please include document id"),
    };
    let document: didcommgrpc::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.reveal_document))
            .expect("Unable to parse Item");
    let document = document.to_vec();

    use okapi::MessageFormatter;
    let document: okapi::proto::google_protobuf::Struct =
        okapi::proto::google_protobuf::Struct::from_vec(&document).unwrap();

    let mut client = CredentialClient::with_interceptor(channel, move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert(
            "capability-invocation",
            capability_invocation.parse().unwrap(),
        );
        Ok(req)
    });

    let request = tonic::Request::new(CreateProofRequest {
        reveal_document: Some(document),
        document_id: document_id,
    });

    let response = client
        .create_proof(request)
        .await
        .expect("Create proof failed")
        .into_inner();
    write_file(
        args.out,
        &serde_json::to_string(&response.proof_document)
            .unwrap()
            .as_bytes()
            .to_vec(),
    );
}

#[tokio::main]
async fn verify_proof(args: &VerifyProofArgs) {
    let channel = Channel::from_static(SERVER_URL)
        .connect()
        .await
        .expect("Unable to connect to server");
    let document: didcommgrpc::proto::google_protobuf::Struct =
        serde_json::from_str(&read_file_as_string(args.proof_document))
            .expect("Unable to parse Item");
    let document = document.to_vec();

    use okapi::MessageFormatter;
    let document: okapi::proto::google_protobuf::Struct =
        okapi::proto::google_protobuf::Struct::from_vec(&document).unwrap();

    let mut client = CredentialClient::with_interceptor(channel, move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert(
            "capability-invocation",
            capability_invocation.parse().unwrap(),
        );
        Ok(req)
    });

    let request = tonic::Request::new(VerifyProofRequest {
        proof_document: Some(document),
    });

    let response = client
        .verify_proof(request)
        .await
        .expect("Verify proof failed")
        .into_inner();

    println!("{:}", response.valid);
}
