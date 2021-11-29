use std::io;

use colored::Colorize;
use okapi::{proto::security::UnBlindOberonTokenRequest, Oberon};
use tonic::transport::Channel;
use trinsic::{
    grpc_channel, grpc_client, grpc_client_with_auth,
    proto::services::account::v1::{
        account_service_client::AccountServiceClient, AccountDetails, AccountProfile,
        ConfirmationMethod, InfoRequest, SignInRequest,
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

    println!("Config: {:?}", new_config);

    let name = match &args.name {
        Some(desc) => desc.to_string(),
        None => "New Wallet (from CLI)".to_string(),
    };

    let mut client = grpc_client!(AccountServiceClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SignInRequest {
        details: Some(AccountDetails {
            name: name,
            email: args.email.map_or(String::default(), |x| x.to_string()),
            sms: args.sms.map_or(String::default(), |x| x.to_string()),
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

    let profile = response.profile.unwrap();
    let protection = profile.protection.clone().unwrap();

    let profile = match ConfirmationMethod::from_i32(protection.method).unwrap() {
        ConfirmationMethod::None => profile,
        ConfirmationMethod::Email => {
            println!(
                "{}",
                "Confirmation required. Check your email for security code.".blue()
            );
            println!("{}", "Enter Code:".bold());
            let mut buffer = String::new();
            io::stdin().read_line(&mut buffer)?;

            let mut profile = profile.clone();
            unprotect(&mut profile, buffer.as_bytes().to_vec());

            profile
        }
        ConfirmationMethod::Sms => {
            println!("{}", "SMS confirmation is not yet supported.".red());
            profile
        }
        ConfirmationMethod::ConnectedDevice => profile,
        ConfirmationMethod::Other => profile,
    };

    new_config.save_profile(profile, args.alias.unwrap(), args.set_default)
}

#[tokio::main]
async fn info(_args: &InfoArgs, config: DefaultConfig) -> Result<(), Error> {
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

fn unprotect(profile: &mut AccountProfile, code: Vec<u8>) {
    let request = UnBlindOberonTokenRequest {
        blinding: vec![code],
        token: profile.auth_token.clone(),
    };

    let response = Oberon::unblind(&request).unwrap();

    profile.auth_token = response.token;
}
