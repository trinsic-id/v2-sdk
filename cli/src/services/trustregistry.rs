use tonic::transport::Channel;
use trinsic::{trust_registry_client::TrustRegistryClient, SearchRegistryRequest, *};

use crate::parser::trustregistry::*;

use super::config::{Config, Error};

pub(crate) fn execute(args: &Command, config: Config) -> Result<(), Error> {
    match args {
        Command::Search(args) => Ok(search(args, config)),
        Command::RegisterIssuer(args) => Ok(register_issuer(args, config)),
        Command::RegisterVerifier(args) => Ok(register_verifier(args, config)),
        Command::UnregisterIssuer(args) => Ok(unregister_issuer(args, config)),
        Command::UnregisterVerifier(args) => Ok(unregister_verifier(args, config)),
    }
}

#[tokio::main]
async fn search(args: &SearchArgs, config: Config) {
    let query = args
        .query
        .as_ref()
        .map_or("SELECT * FROM c".to_string(), |q| q.to_owned());

    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config);

    let request = tonic::Request::new(SearchRegistryRequest {
        query: query.clone(),
        ..Default::default()
    });

    let response = client
        .search_registry(request)
        .await
        .expect("search registry command failed")
        .into_inner();
}

fn register_issuer(args: &RegistrationArgs, config: Config) {
    todo!()
}

fn unregister_issuer(args: &RegistrationArgs, config: Config) {
    todo!()
}

fn register_verifier(args: &RegistrationArgs, config: Config) {
    todo!()
}

fn unregister_verifier(args: &RegistrationArgs, config: Config) {
    todo!()
}
