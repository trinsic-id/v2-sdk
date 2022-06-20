use super::config::CliConfig;
use super::Output;
use crate::parser::account::{Command, InfoArgs, SignInArgs};
use crate::proto::services::account::v1::login_response::Response;
use crate::MessageFormatter;
use crate::{
    error::Error,
    grpc_channel, grpc_client, grpc_client_with_auth,
    proto::services::account::v1::{
        account_client::AccountClient, AccountInfoRequest, AccountProfile, ConfirmationMethod, LoginConfirmRequest, LoginRequest, TokenProtection,
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
    let ecosystem = args.ecosystem.as_ref().map_or(config.options.default_ecosystem.clone(), |x| x.to_owned());

    let mut client = grpc_client!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(LoginRequest {
        email: args.email.map_or(String::default(), |x| x.to_string()),
        ecosystem_id: ecosystem,
        invitation_code: args.invitation_code.map_or(String::default(), |x| x.to_string()),
    });

    // Send initial login request
    let response = client.login(request).await?.into_inner().response.unwrap();

    // If challenge returned, we must confirm login -- otherwise, just use profile
    let profile = match response {
        Response::Challenge(challenge) => login_confirm(&mut client, challenge).await?,
        Response::Profile(profile) => profile,
    };

    // Save auth token to config
    let mut new_config = config.clone();
    new_config.options.auth_token = base64::encode_config(profile.encode_to_vec(), URL_SAFE_NO_PAD);
    new_config.save()?;

    let mut output = Output::new();
    output.insert("auth token".into(), new_config.options.auth_token);

    Ok(output)
}

async fn login_confirm(client: &mut AccountClient<Channel>, challenge: Vec<u8>) -> Result<AccountProfile, Error> {
    println!("{}", "Confirmation required. Check your email for security code.".blue());
    println!("{}", "Enter Code:".bold());
    let mut buffer = String::new();
    io::stdin().read_line(&mut buffer)?;

    // strips new line characters at the end
    let code = buffer.lines().next().unwrap();
    let code_bytes = code.as_bytes().to_vec();
    let code_hashed = blake3::hash(&code_bytes).as_bytes().to_vec();

    let request = tonic::Request::new(LoginConfirmRequest {
        challenge: challenge,
        confirmation_code_hashed: code_hashed,
    });

    let response = client.login_confirm(request).await?.into_inner();
    let mut profile = response.profile.unwrap();

    if profile.protection.as_ref().unwrap().enabled {
        unprotect(&mut profile, code_bytes);
    }

    Ok(profile)
}

#[tokio::main]
async fn info(_args: &InfoArgs, config: CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(AccountClient<Channel>, config.to_owned());

    let request = tonic::Request::new(AccountInfoRequest {});

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
