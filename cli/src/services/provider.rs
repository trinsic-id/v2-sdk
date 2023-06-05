use super::Output;
use super::{super::parser::provider::*, Item};
use crate::proto::services::common::v1::SupportedDidMethod;
use crate::proto::services::provider::v1::ion_options::IonNetwork;
use crate::proto::services::provider::v1::{
    upgrade_did_request, IonOptions, UpgradeDidRequest,
};
use crate::utils::to_value;
use crate::{
    dict,
    error::Error,
    grpc_channel, grpc_client, grpc_client_with_auth, parser,
    proto::services::{
        account::v1::AccountDetails,
        provider::v1::{provider_client::ProviderClient, CreateEcosystemRequest},
    },
    services::config::*,
};
use base64::URL_SAFE_NO_PAD;
use prost::Message;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::CreateEcosystem(args) => create_ecosystem(args, &config),
        Command::UpgradeDid(args) => upgrade_did(args, &config),
    }
}

#[tokio::main]
async fn upgrade_did(args: &UpgradeDidArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(UpgradeDidRequest {
        method: match args.method.as_str() {
            "ion" => SupportedDidMethod::Ion as i32,
            "key" => SupportedDidMethod::Key as i32,
            _ => return Err(Error::InvalidArgument("Unsupported did method".into())),
        },
        account: Some(match &args.email {
            Some(email) => upgrade_did_request::Account::Email(email.clone()),
            None => upgrade_did_request::Account::WalletId(args.wallet_id.as_ref().expect("wallet id missing").into()),
        }),
        options: args.method_options.as_ref().map(|x| {
            upgrade_did_request::Options::IonOptions(IonOptions {
                network: match x.as_str() {
                    "testnet" => IonNetwork::TestNet as i32,
                    "mainnet" => IonNetwork::MainNet as i32,
                    _ => panic!("Unsupported network"),
                },
            })
        }),
    });

    let response = client.upgrade_did(request).await?.into_inner();
    Ok(dict! {
        "did".into() => Item::String(response.did),
    })
}

#[tokio::main]
async fn create_ecosystem(args: &CreateEcosystemArgs, config: &CliConfig) -> Result<Output, Error> {
    let req = CreateEcosystemRequest {
        name: args.name.as_ref().map_or(String::default(), |x| x.to_owned()),
        details: Some(AccountDetails {
            email: args.email.as_ref().map_or(String::default(), |x| x.to_owned()),
            ..Default::default()
        }),
        ..Default::default()
    };
    let request = tonic::Request::new(req);

    let response = if args.name.is_some() || args.email.is_some() {
        let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());
        client.create_ecosystem(request).await?.into_inner()
    } else {
        let mut client = grpc_client!(ProviderClient<Channel>, config.to_owned());
        client.create_ecosystem(request).await?.into_inner()
    };

    let profile = response.profile.unwrap();
    let auth_token = base64::encode_config(profile.encode_to_vec(), URL_SAFE_NO_PAD);

    Ok(dict! {
        "ecosystem".into() => Item::Json(to_value(&response.ecosystem
            .ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?)?),
        "auth token".into() => Item::String(auth_token)
    })
}
