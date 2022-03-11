use std::io;

use super::super::parser::provider::*;
use crate::parser;
use crate::proto::services::account::v1::{AccountDetails, ConfirmationMethod};
use crate::proto::services::provider::v1::CreateEcosystemRequest;
use crate::proto::services::provider::v1::{provider_client::ProviderClient, InviteRequest};
use crate::services::account::unprotect;
use crate::services::config::*;
use crate::*;
use tonic::transport::Channel;

#[allow(clippy::unit_arg)]
pub(crate) fn execute(args: &Command, config: DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Invite(args) => Ok(invite(args, config)),
        Command::CreateEcosystem(args) => create_ecosystem(args, &config),
        Command::InvitationStatus => todo!(),
    }
}

#[tokio::main]
async fn invite(args: &InviteArgs, config: DefaultConfig) {
    let client = grpc_client_with_auth!(ProviderClient<Channel>, config);

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

    let response = client.create_ecosystem(request).await?.into_inner();

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
    let mut new_config = config.clone();
    let auth_token = new_config.save_profile(profile, &args.alias, true);
    println!("Auth Token: {:#?}", auth_token.unwrap());

    Ok(())
}
