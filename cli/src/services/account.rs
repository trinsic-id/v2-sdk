use tonic::transport::Channel;
use trinsic::{
    grpc_channel, grpc_client, grpc_client_with_auth,
    proto::services::account::v1::{
        account_service_client::AccountServiceClient, AccountDetails, ConfirmationMethod,
        InfoRequest, SignInRequest,
    },
};

use crate::parser::account::{Command, InfoArgs, SignInArgs};

use super::config::{DefaultConfig, Error};

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::SignIn(args) => sign_in(args, config),
        Command::Info(args) => info(args, config),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn sign_in(args: &SignInArgs, config: DefaultConfig) -> Result<(), Error> {
    let mut new_config = config.clone();

    let name = match &args.name {
        Some(desc) => desc.to_string(),
        None => "New Wallet (from CLI)".to_string(),
    };

    let mut client = grpc_client!(AccountServiceClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SignInRequest {
        details: Some(AccountDetails {
            name: name,
            email: String::default(),
            sms: String::default(),
        }),
        invitation_code: args
            .invitation_code
            .map_or(String::default(), |x| x.to_string()),
        ..Default::default()
    });

    let response = client
        .sign_in(request)
        .await
        .expect("Create Wallet failed")
        .into_inner();

    let protected = ConfirmationMethod::from_i32(response.confirmation_method)
        .unwrap_or(ConfirmationMethod::None);

    let profile = response.profile.unwrap();

    new_config.save_profile(profile, args.alias.unwrap(), args.set_default)
}

#[tokio::main]
async fn info(a_rgs: &InfoArgs, config: DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(AccountServiceClient<Channel>, config.to_owned());

    let request = tonic::Request::new(InfoRequest {});

    let response = client
        .info(request)
        .await
        .expect("Info failed")
        .into_inner();

    println!("{:#?}", response);

    Ok(())
}
