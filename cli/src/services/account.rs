use tonic::transport::Channel;
use trinsic::proto::services::account::v1::{
    account_service_client::AccountServiceClient, AccountDetails, AccountProfile,
    ConfirmationMethod, SignInRequest, TokenProtection,
};

use crate::parser::account::{Command, SignInArgs};

use super::config::{DefaultConfig, Error};

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::SignIn(args) => sign_in(args, config),
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

    let channel = Channel::from_shared(config.server.address)
        .unwrap()
        .connect()
        .await
        .unwrap();

    let mut client = AccountServiceClient::new(channel);

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
