use super::Output;
use super::{super::parser::provider::*, Item};
use crate::proto::services::provider::v1::{AddWebhookRequest, DeleteWebhookRequest, EcosystemInfoRequest, UpdateEcosystemRequest};
use crate::utils::to_value;
use crate::{
    dict,
    error::Error,
    grpc_channel, grpc_client, grpc_client_with_auth, parser,
    proto::services::{
        account::v1::AccountDetails,
        provider::v1::{provider_client::ProviderClient, CreateEcosystemRequest, InviteRequest},
    },
    services::config::*,
};
use base64::URL_SAFE_NO_PAD;
use prost::Message;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: CliConfig) -> Result<Output, Error> {
    match args {
        Command::Invite(args) => invite(args, &config),
        Command::CreateEcosystem(args) => create_ecosystem(args, &config),
        Command::UpdateEcosystem(args) => update_ecosystem(args, &config),
        Command::EcosystemInfo => ecosystem_info(&config),
        Command::AddWebhook(args) => add_webhook(args, &config),
        Command::DeleteWebhook(args) => delete_webhook(args, &config),
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

    Ok(dict! {
        "invitation id".into() => Item::String(response.invitation_id),
        "security code".into() => Item::String(response.invitation_code),
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

#[tokio::main]
async fn update_ecosystem(args: &UpdateEcosystemArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(UpdateEcosystemRequest {
        description: args.description.as_ref().map_or(String::default(), |x| x.to_owned()),
        uri: args.uri.as_ref().map_or(String::default(), |x| x.to_owned()),
        ..Default::default()
    });

    let response = client.update_ecosystem(request).await?.into_inner();

    Ok(dict! {
        "ecosystem".into() => Item::Json(to_value(
                &response.ecosystem.ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?
        )?)
    })
}

#[tokio::main]
async fn ecosystem_info(config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(EcosystemInfoRequest {});
    let response = client.ecosystem_info(request).await?.into_inner();

    Ok(dict! {
        "ecosystem".into() => Item::Json(to_value(
                &response.ecosystem.ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?
        )?)
    })
}

#[tokio::main]
async fn add_webhook(args: &AddWebhookArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(AddWebhookRequest {
        events: args.events.clone(),
        destination_url: args.url.clone(),
        secret: args.secret.clone(),
    });

    let response = client.add_webhook(request).await?.into_inner();

    Ok(dict! {
        "ecosystem".into() => Item::Json(to_value(
                &response.ecosystem.ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?
        )?)
    })
}

#[tokio::main]
async fn delete_webhook(args: &DeleteWebhookArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config.to_owned());

    let request = tonic::Request::new(DeleteWebhookRequest {
        webhook_id: args.webhook_id.clone(),
    });

    let response = client.delete_webhook(request).await?.into_inner();

    Ok(dict! {
        "ecosystem".into() => Item::Json(to_value(
                &response.ecosystem.ok_or(Error::InvalidArgument("expected ecosystem object in response".to_string()))?
        )?)
    })
}
