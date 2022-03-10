use crate::services::config::Error;
use clap::ArgMatches;

pub(crate) fn parse<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    if args.is_present("issue") {
        issue(
            &args
                .subcommand_matches("issue")
                .expect("Error parsing request"),
        )
    } else if args.is_present("issue-from-template") {
        issue_from_template(
            &args
                .subcommand_matches("issue-from-template")
                .expect("Error parsing request"),
        )
    } else if args.is_present("get-status") {
        get_status(
            &args
                .subcommand_matches("get-status")
                .expect("Error parsing request"),
        )
    } else if args.is_present("update-status") {
        update_status(
            &args
                .subcommand_matches("update-status")
                .expect("Error parsing request"),
        )
    } else if args.is_present("create-proof") {
        create_proof(
            &args
                .subcommand_matches("create-proof")
                .expect("Error parsing request"),
        )
    } else if args.is_present("verify-proof") {
        verify_proof(
            &args
                .subcommand_matches("verify-proof")
                .expect("Error parsing request"),
        )
    } else {
        Err(Error::MissingArguments)
    }
}

fn issue<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::Issue(IssueArgs {
        document: args.value_of("document"),
        out: args.value_of("out"),
    }))
}

fn issue_from_template<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::IssueFromTemplate(IssueFromTemplateArgs {
        template_id: args
            .value_of("template-id")
            .map_or(String::default(), |x| x.to_string()),
        values_json: args.value_of("values-data").map(|x| x.to_string()),
        values_file: args.value_of("values-file").map(|x| x.to_string()),
    }))
}

fn get_status<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::GetStatus(GetStatusArgs {
        credential_status_id: args
            .value_of("credential-status-id")
            .map_or(String::default(), |x| x.to_string()),
    }))
}

fn update_status<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::UpdateStatus(UpdateStatusArgs {
        credential_status_id: args
            .value_of("credential-status-id")
            .map_or(String::default(), |x| x.to_string()),
        revoked: args.is_present("revoked"),
    }))
}

fn create_proof<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::CreateProof(CreateProofArgs {
        reveal_document: args.value_of("reveal-document"),
        document_id: args.value_of("document-id"),
        out: args.value_of("out"),
    }))
}

fn verify_proof<'a>(args: &'a ArgMatches<'_>) -> Result<Command<'a>, Error> {
    Ok(Command::VerifyProof(VerifyProofArgs {
        proof_document: args.value_of("proof-document"),
    }))
}

#[derive(Debug, PartialEq)]
pub(crate) enum Command<'a> {
    Issue(IssueArgs<'a>),
    IssueFromTemplate(IssueFromTemplateArgs),
    GetStatus(GetStatusArgs),
    UpdateStatus(UpdateStatusArgs),
    CreateProof(CreateProofArgs<'a>),
    VerifyProof(VerifyProofArgs<'a>),
}

#[derive(Debug, PartialEq)]
pub struct IssueArgs<'a> {
    pub document: Option<&'a str>,
    pub out: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct IssueFromTemplateArgs {
    pub template_id: String,
    pub values_json: Option<String>,
    pub values_file: Option<String>,
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
pub struct CreateProofArgs<'a> {
    pub reveal_document: Option<&'a str>,
    pub document_id: Option<&'a str>,
    pub out: Option<&'a str>,
}

#[derive(Debug, PartialEq)]
pub struct VerifyProofArgs<'a> {
    pub proof_document: Option<&'a str>,
}
