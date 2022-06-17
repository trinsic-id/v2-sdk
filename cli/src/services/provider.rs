use std::io;

use super::super::parser::provider::*;
use super::Output;
use crate::{
    error::Error,
    grpc_channel, grpc_client, grpc_client_with_auth, parser,
    proto::services::{
        account::v1::{AccountDetails, ConfirmationMethod},
        provider::v1::{provider_client::ProviderClient, CreateEcosystemRequest, InviteRequest},
    },
    services::{account::unprotect, config::*},
    MessageFormatter,
};
use base64::URL_SAFE_NO_PAD;
use colored::Colorize;
use indexmap::indexmap;
use prost::Message;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::Invite(args) => invite(args, &config),
        Command::CreateEcosystem(args) => create_ecosystem(args, &config),
        Command::InvitationStatus => todo!(),
    }
}

#[tokio::main]
async fn invite(args: &InviteArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(InviteRequest {
        participant: match args.participant_type {
            parser::provider::ParticipantType::Individual => crate::proto::services::provider::v1::ParticipantType::Individual as i32,
            parser::provider::ParticipantType::Organization => crate::proto::services::provider::v1::ParticipantType::Organization as i32,
        },
        description: args.description.map_or(String::default(), |x| x.to_string()),
        details: Some(AccountDetails { ..Default::default() }),
    });

    let response = client.invite(request).await?.into_inner();

    Ok(indexmap! {
        "invitation id".into() => response.invitation_id,
        "security code".into() => response.invitation_code,
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

    Ok(indexmap! {
        "ecosystem".into() => response.ecosystem
            .ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?
            .to_string_pretty()?,
        "auth token".into() => auth_token
    })
}
