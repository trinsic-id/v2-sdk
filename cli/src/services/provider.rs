use std::thread::AccessError;

use super::super::parser::provider::*;
use crate::parser;
use crate::proto::services::account::v1::AccountDetails;
use crate::proto::services::provider::v1::CreateEcosystemRequest;
use crate::proto::services::provider::v1::{provider_client::ProviderClient, InviteRequest};
use crate::services::config::*;
use crate::*;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Invite(args) => Ok(invite(args, config)),
        Command::CreateEcosystem(args) => create_ecosystem(args, &config),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn invite(args: &InviteArgs, config: DefaultConfig) {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config);

    let request = tonic::Request::new(InviteRequest {
        // contact_method: match &args.invitation_method {
        //     InvitationMethod::Email(email) => Some(ContactMethod::Email(email.to_owned())),
        //     InvitationMethod::Sms(sms) => Some(ContactMethod::Phone(sms.to_owned())),
        //     InvitationMethod::None => None,
        // },
        participant: match args.participant_type {
            parser::provider::ParticipantType::Individual => {
                crate::proto::services::provider::v1::ParticipantType::Individual as i32
            }
            parser::provider::ParticipantType::Organization => {
                crate::proto::services::provider::v1::ParticipantType::Organization as i32
            }
        },
        description: args
            .description
            .map_or(String::default(), |x| x.to_string()),
        details: Some(AccountDetails {
            name: todo!(),
            email: todo!(),
            sms: todo!(),
        }),
    });

    let response = client
        .invite(request)
        .await
        .expect("Invite failed")
        .into_inner();
    use colored::*;
    println!("Invitation code '{}'", response.invitation_id.cyan().bold());
}

#[tokio::main]
async fn create_ecosystem(args: &CreateEcosystemArgs, config: &DefaultConfig) -> Result<(), Error> {
    let mut client = grpc_client!(ProviderClient<Channel>, config.to_owned());

    let req = CreateEcosystemRequest {
        name: args
            .name
            .as_ref()
            .map_or(String::default(), |x| x.to_owned()),
        details: Some(AccountDetails {
            email: args
                .email
                .as_ref()
                .map_or(String::default(), |x| x.to_owned()),
            ..Default::default()
        }),
        ..Default::default()
    };
    let request = tonic::Request::new(req);

    let response = client
        .create_ecosystem(request)
        .await
        .expect("create ecosystem failed")
        .into_inner();

    println!("{:#?}", response);

    Ok(())
}
