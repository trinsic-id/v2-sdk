use super::{config::CliConfig, Item, Output};
use crate::{
    dict,
    error::Error,
    grpc_channel, grpc_client_with_auth,
    parser::trustregistry::*,
    proto::services::trustregistry::v1::{trust_registry_client::TrustRegistryClient, *},
    utils::{as_value, to_value},
};
use tonic::transport::Channel;

pub(crate) fn execute(args: &TrustRegistryCommand, config: &CliConfig) -> Result<Output, Error> {
    match args {
        TrustRegistryCommand::RegisterMember(args) => register_member(args, config),
        TrustRegistryCommand::UnregisterMember(args) => unregister_member(args, config),
        TrustRegistryCommand::GetMember(args) => get_member(args, config),
        TrustRegistryCommand::GetMembershipStatus(args) => get_status(args, config),
        TrustRegistryCommand::ListMembers(args) => list_members(args, config),
    }
}

impl TryInto<register_member_request::Member> for MemberId {
    type Error = Error;

    fn try_into(self) -> Result<register_member_request::Member, Self::Error> {
        use register_member_request::*;

        Ok(match self {
            MemberId::Email(email) => Member::Email(email),
            MemberId::WalletId(wallet) => Member::WalletId(wallet),
            MemberId::DidUri(did) => Member::DidUri(did),
            MemberId::None => return Err(Error::InvalidArgument("member not specified".to_string())),
        })
    }
}

impl TryInto<unregister_member_request::Member> for MemberId {
    type Error = Error;

    fn try_into(self) -> Result<unregister_member_request::Member, Self::Error> {
        use unregister_member_request::*;

        Ok(match self {
            MemberId::Email(email) => Member::Email(email),
            MemberId::WalletId(wallet) => Member::WalletId(wallet),
            MemberId::DidUri(did) => Member::DidUri(did),
            MemberId::None => return Err(Error::InvalidArgument("member not specified".to_string())),
        })
    }
}

impl TryInto<get_member_request::Member> for MemberId {
    type Error = Error;

    fn try_into(self) -> Result<get_member_request::Member, Self::Error> {
        use get_member_request::*;

        Ok(match self {
            MemberId::Email(email) => Member::Email(email),
            MemberId::WalletId(wallet) => Member::WalletId(wallet),
            MemberId::DidUri(did) => Member::DidUri(did),
            MemberId::None => return Err(Error::InvalidArgument("member not specified".to_string())),
        })
    }
}

#[tokio::main]
async fn list_members(args: &ListMembersArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(ListAuthorizedMembersRequest {
        schema_uri: args.schema_uri.clone(),
        continuation_token: args.continuation_token.clone(),
    });

    let response = client.list_authorized_members(request).await?.into_inner();

    Ok(dict! {
        "authorized members".into() => Item::Json(to_value(&response.authorized_members)?),
        "more results".into() => Item::String(response.has_more_results.to_string()),
        "continuation token".into() => Item::String(response.continuation_token)
    })
}

#[tokio::main]
async fn register_member(args: &RegisterMemberArgs, config: &CliConfig) -> Result<Output, Error> {
    let args = args.to_owned();
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(RegisterMemberRequest {
        member: Some(args.member_id.clone().try_into()?),
        schema_uri: args.schema_uri.clone(),
        ..Default::default()
    });

    let _response = client.register_member(request).await?.into_inner();

    Ok(Output::new())
}

#[tokio::main]
async fn unregister_member(args: &UnregisterMemberArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(UnregisterMemberRequest {
        member: Some(args.member_id.clone().try_into()?),
        schema_uri: args.schema_uri.clone(),
        ..Default::default()
    });

    let _response = client.unregister_member(request).await?.into_inner();

    Ok(Output::new())
}

#[tokio::main]
async fn get_member(args: &GetMemberArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetMemberRequest {
        member: Some(args.member_id.clone().try_into()?),
    });

    let response = client.get_member(request).await?.into_inner();

    Ok(dict! {
        "member".into() => Item::Json(to_value(&response.authorized_member)?)
    })
}

#[tokio::main]
async fn get_status(args: &GetMembershipStatusArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetMemberAuthorizationStatusRequest {
        did_uri: args.did_uri.clone(),
        schema_uri: args.schema_uri.clone(),
        ..Default::default()
    });

    let response = client.get_member_authorization_status(request).await?.into_inner();

    Ok(dict! {
        "status".into() => Item::String(format!("{:?}", RegistrationStatus::from_i32(response.status).ok_or(Error::SerializationError)?)),
    })
}
