use super::config::CliConfig;
use super::Output;
use crate::parser::account::{Command, InfoArgs, SignInArgs};
use crate::MessageFormatter;
use crate::{
    error::Error,
    grpc_channel, grpc_client, grpc_client_with_auth,
    proto::services::account::v1::{
        account_client::AccountClient, AccountDetails, AccountProfile, ConfirmationMethod,
        InfoRequest, SignInRequest, TokenProtection,
    },
};
use base64::URL_SAFE_NO_PAD;
use colored::Colorize;
use okapi::{proto::security::UnBlindOberonTokenRequest, Oberon};
use prost::Message;
use std::io;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::SignIn(args) => sign_in(args, config),
        Command::Info(args) => info(args, config),
    }
}

#[tokio::main]
async fn sign_in(args: &SignInArgs, config: CliConfig) -> Result<Output, Error> {
    let name = match &args.name {
        Some(desc) => desc.to_string(),
        None => "New Wallet (from CLI)".to_string(),
    };
    let ecosystem = args
        .ecosystem
        .as_ref()
        .map_or(config.options.default_ecosystem.clone(), |x| x.to_owned());

    let mut client = grpc_client!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SignInRequest {
        details: Some(AccountDetails {
            name: name,
            email: args.email.map_or(String::default(), |x| x.to_string()),
            sms: args.sms.map_or(String::default(), |x| x.to_string()),
        }),
        ecosystem_id: ecosystem,
        invitation_code: args
            .invitation_code
            .map_or(String::default(), |x| x.to_string()),
    });

    let response = client.sign_in(request).await?.into_inner();

    let acc_profile = response.profile.unwrap();
    let protection = acc_profile.protection.clone().unwrap();

    let profile = match ConfirmationMethod::from_i32(protection.method).unwrap() {
        ConfirmationMethod::None => acc_profile,
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

            let mut p = acc_profile.clone();
            unprotect(&mut p, code.as_bytes().to_vec());

            p
        }
        ConfirmationMethod::Sms => {
            println!("{}", "SMS confirmation is not yet supported.".red());
            acc_profile
        }
        ConfirmationMethod::ConnectedDevice => acc_profile,
        ConfirmationMethod::Other => acc_profile,
    };

    let mut new_config = config.clone();
    new_config.options.auth_token = base64::encode_config(profile.encode_to_vec(), URL_SAFE_NO_PAD);

    new_config.save()?;

    let mut output = Output::new();
    output.insert("auth token".into(), new_config.options.auth_token);

    Ok(output)
}

#[tokio::main]
async fn info(_args: &InfoArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(InfoRequest {});

    let response = client.info(request).await?.into_inner();

    let mut output = Output::new();
    output.insert("account data".into(), response.to_string_pretty()?);

    Ok(output)
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
