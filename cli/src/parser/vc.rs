use crate::error::Error;
use clap::ArgMatches;

pub(crate) fn parse(args: &ArgMatches) -> Result<Command, Error> {
    if args.subcommand_matches("issue").is_some() {
        issue(&args.subcommand_matches("issue").expect("Error parsing request"))
    } else if args.subcommand_matches("issue-from-template").is_some() {
        issue_from_template(&args.subcommand_matches("issue-from-template").expect("Error parsing request"))
    } else if args.subcommand_matches("get-status").is_some() {
        get_status(&args.subcommand_matches("get-status").expect("Error parsing request"))
    } else if args.subcommand_matches("update-status").is_some() {
        update_status(&args.subcommand_matches("update-status").expect("Error parsing request"))
    } else if args.subcommand_matches("create-proof").is_some() {
        create_proof(&args.subcommand_matches("create-proof").expect("Error parsing request"))
    } else if args.subcommand_matches("verify-proof").is_some() {
        verify_proof(&args.subcommand_matches("verify-proof").expect("Error parsing request"))
    } else {
        Err(Error::MissingArguments)
    }
}

fn issue(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::Issue(IssueArgs {
        document: args.value_of("document").map(|x| x.into()),
        out: args.value_of("out").map(|x| x.into()),
    }))
}

fn issue_from_template(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::IssueFromTemplate(IssueFromTemplateArgs {
        template_id: args.value_of("template-id").map_or(String::default(), |x| x.to_string()),
        framework_id: args.value_of("framework-id").map(|x| x.to_string()),
        values_json: args.value_of("values-data").map(|x| x.to_string()),
        values_file: args.value_of("values-file").map(|x| x.to_string()),
        output_file: args.value_of("out").map(|x| x.to_string()),
    }))
}

fn get_status(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::GetStatus(GetStatusArgs {
        credential_status_id: args.value_of("credential-status-id").map_or(String::default(), |x| x.to_string()),
    }))
}

fn update_status(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::UpdateStatus(UpdateStatusArgs {
        credential_status_id: args.value_of("credential-status-id").map_or(String::default(), |x| x.to_string()),
        revoked: args.is_present("revoked"),
    }))
}

fn create_proof(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::CreateProof(CreateProofArgs {
        reveal_document: args.value_of("reveal-document-file").map(|x| x.into()),
        document_file: args.value_of("document-file").map(|x| x.into()),
        item_id: args.value_of("item-id").map(|x| x.into()),
        out: args.value_of("out").map(|x| x.into()),
    }))
}

fn verify_proof(args: &ArgMatches) -> Result<Command, Error> {
    Ok(Command::VerifyProof(VerifyProofArgs {
        proof_document: args.value_of("proof-document"),
    }))
}

#[derive(Debug, PartialEq)]
pub(crate) enum Command<'a> {
    Issue(IssueArgs),
    IssueFromTemplate(IssueFromTemplateArgs),
    GetStatus(GetStatusArgs),
    UpdateStatus(UpdateStatusArgs),
    CreateProof(CreateProofArgs),
    VerifyProof(VerifyProofArgs<'a>),
}

#[derive(Debug, PartialEq)]
pub struct IssueArgs {
    pub document: Option<String>,
    pub out: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct IssueFromTemplateArgs {
    pub template_id: String,
    pub values_json: Option<String>,
    pub framework_id: Option<String>,
    pub values_file: Option<String>,
    pub output_file: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct GetStatusArgs {
    pub credential_status_id: String,
}

#[derive(Debug, PartialEq)]
pub struct UpdateStatusArgs {
    pub credential_status_id: String,
    pub revoked: bool,
}

#[derive(Debug, PartialEq)]
pub struct CreateProofArgs {
    pub reveal_document: Option<String>,
    pub document_file: Option<String>,
    pub item_id: Option<String>,
    pub nonce: Option<String>,
    pub out: Option<String>,
}

#[derive(Debug, PartialEq)]
pub struct VerifyProofArgs<'a> {
    pub proof_document: Option<&'a str>,
}
