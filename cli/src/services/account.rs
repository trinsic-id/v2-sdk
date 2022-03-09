use std::io;

use crate::{
    grpc_channel, grpc_client, grpc_client_with_auth,
    proto::services::account::v1::{
        account_client::AccountClient, AccountDetails, AccountProfile, ConfirmationMethod,
        InfoRequest, SignInRequest, TokenProtection,
    },
};
use colored::Colorize;
use okapi::{proto::security::UnBlindOberonTokenRequest, Oberon};
use tonic::transport::Channel;

use crate::parser::account::{Command, InfoArgs, SignInArgs};

use super::config::{DefaultConfig, Error};

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::SignIn(args) => sign_in(args, config),
        Command::Info(args) => info(args, config),
    }
}

#[tokio::main]
async fn sign_in(args: &SignInArgs, config: DefaultConfig) -> Result<(), Error> {
    let mut new_config = config.clone();

    let name = match &args.name {
        Some(desc) => desc.to_string(),
        None => "New Wallet (from CLI)".to_string(),
    };

    let mut client = grpc_client!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SignInRequest {
        details: Some(AccountDetails {
            name: name,
            email: args.email.map_or(String::default(), |x| x.to_string()),
            sms: args.sms.map_or(String::default(), |x| x.to_string()),
        }),
        ecosystem_id: "default".into(),
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

    let pr = response.profile.unwrap();
    let protection = pr.protection.clone().unwrap();

    let profile = match ConfirmationMethod::from_i32(protection.method).unwrap() {
        ConfirmationMethod::None => pr,
        ConfirmationMethod::Email => {
            println!(
                "{}",
                "Confirmation required. Check your email for security code.".blue()
            );
            println!("{}", "Enter Code:".bold());
            let mut buffer = String::new();
            io::stdin().read_line(&mut buffer)?;

            // strips new line characters at the end
            let code = buffer.lines().next().unwrap();

            let mut p = pr.clone();
            unprotect(&mut p, code.as_bytes().to_vec());

            p
        }
        ConfirmationMethod::Sms => {
            println!("{}", "SMS confirmation is not yet supported.".red());
            pr
        }
        ConfirmationMethod::ConnectedDevice => pr,
        ConfirmationMethod::Other => pr,
    };

    // println!("Profile: {:#?}", profile);

    let auth_token = new_config.save_profile(profile, args.alias.unwrap(), args.set_default);
    println!("Auth Token: {:#?}", auth_token.unwrap());

    Ok(())
}

#[tokio::main]
async fn info(_args: &InfoArgs, config: DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client_with_auth!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(InfoRequest {});

    let response = client
        .info(request)
        .await
        .expect("Info failed")
        .into_inner();

    println!("{:#?}", response);

    Ok(())
}

pub(crate) fn unprotect(profile: &mut AccountProfile, code: Vec<u8>) {
    let request = UnBlindOberonTokenRequest {
        blinding: vec![code],
        token: profile.auth_token.clone(),
    };

    let response = Oberon::unblind(&request).unwrap();

    profile.auth_token = response.token;
    profile.protection = Some(TokenProtection {
        enabled: false,
        method: ConfirmationMethod::None as i32,
    })
}
