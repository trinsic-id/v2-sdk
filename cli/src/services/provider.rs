use super::super::parser::provider::*;
use crate::parser;
use crate::services::config::*;
use tonic::transport::Channel;
use trinsic::proto::trinsic_services::{provider_client::ProviderClient, InviteRequest};
use trinsic::*;
use trinsic::{invite_request::ContactMethod, proto::trinsic_services};

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: Config) -> Result<(), Error> {
    match args {
        Command::Invite(args) => Ok(invite(args, config)),
        _ => Err(Error::UnknownCommand),
    }
}

#[tokio::main]
async fn invite(args: &InviteArgs, config: Config) {
    let mut client = grpc_client_with_auth!(ProviderClient<Channel>, config);

    let request = tonic::Request::new(InviteRequest {
        contact_method: match &args.invitation_method {
            InvitationMethod::Email(email) => Some(ContactMethod::Email(email.to_owned())),
            InvitationMethod::Sms(sms) => Some(ContactMethod::Phone(sms.to_owned())),
            InvitationMethod::None => None,
        },
        participant: match args.participant_type {
            parser::provider::ParticipantType::Individual => {
                trinsic_services::ParticipantType::Individual as i32
            }
            parser::provider::ParticipantType::Organization => {
                trinsic_services::ParticipantType::Organization as i32
            }
        },
        description: args
            .description
            .map_or(String::default(), |x| x.to_string()),
    });

    let response = client
        .invite(request)
        .await
        .expect("Invite failed")
        .into_inner();
    use colored::*;
    println!("Invitation code '{}'", response.invitation_id.cyan().bold());
}
