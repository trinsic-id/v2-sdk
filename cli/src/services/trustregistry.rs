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
        TrustRegistryCommand::Search(args) => search(args, config),
        TrustRegistryCommand::RegisterMember(args) => register_member(args, config),
        TrustRegistryCommand::UnregisterMember(args) => unregister_member(args, config),
        TrustRegistryCommand::GetMembershipStatus(args) => get_status(args, config),
        TrustRegistryCommand::AddFramework(args) => add_framework(args, config),
        TrustRegistryCommand::RemoveFramework(args) => remove_framework(args, config),
        TrustRegistryCommand::FetchData(args) => fetch_data(args, config),
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

fn fetch_data(_args: &FetchDataArgs, _config: &CliConfig) -> Result<Output, Error> {
    Err(Error::UnknownCommand)
}

#[tokio::main]
async fn search(args: &SearchArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(SearchRegistryRequest {
        query: args.query.clone(),
        continuation_token: args.continuation_token.clone().unwrap_or_default(),
    });

    let response = client.search_registry(request).await?.into_inner();

    Ok(dict! {
        "query".into() => Item::String(args.query.clone()),
        "items".into() => Item::Json(as_value(&response.items_json)?),
        "more results".into() => Item::String(response.has_more.to_string())
    })
}

#[tokio::main]
async fn register_member(args: &RegisterMemberArgs, config: &CliConfig) -> Result<Output, Error> {
    let args = args.to_owned();
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(RegisterMemberRequest {
        member: Some(args.member_id.clone().try_into()?),
        schema_uri: args.schema_uri.clone(),
        framework_id: args.framework_id.clone(),
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
        framework_id: args.framework_id.clone(),
        ..Default::default()
    });

    let _response = client.unregister_member(request).await?.into_inner();

    Ok(Output::new())
}

#[tokio::main]
async fn get_status(args: &GetMembershipStatusArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(GetMembershipStatusRequest {
        member: Some(get_membership_status_request::Member::DidUri(args.did_uri.clone())),
        schema_uri: args.schema_uri.clone(),
        governance_framework_uri: args.governance_framework_uri.clone(),
        ..Default::default()
    });

    let response = client.get_membership_status(request).await?.into_inner();

    Ok(dict! {
        "status".into() => Item::String(format!("{:?}", RegistrationStatus::from_i32(response.status).ok_or(Error::SerializationError)?)),
    })
}

#[tokio::main]
async fn add_framework(args: &AddFrameworkArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(AddFrameworkRequest {
        governance_framework_uri: args.governance_framework_uri.clone(),
        description: args.description.clone().unwrap_or_default(),
        name: args.name.clone(),
    });

    let response = client.add_framework(request).await?.into_inner();

    Ok(dict!{
        "response".into() => Item::Json(to_value(&response)?)
    })
}

#[tokio::main]
async fn remove_framework(args: &RemoveFrameworkArgs, config: &CliConfig) -> Result<Output, Error> {
    let mut client = grpc_client_with_auth!(TrustRegistryClient<Channel>, config.to_owned());

    let request = tonic::Request::new(RemoveFrameworkRequest {
        id: args.framework_id.clone(),
    });

    let _response = client.remove_framework(request).await?.into_inner();

    Ok(Output::new())
}
