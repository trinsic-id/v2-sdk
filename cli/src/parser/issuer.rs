use clap::ArgMatches;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("issue") {
        return issue(
            &args
                .subcommand_matches("issue")
                .expect("Error parsing request"),
        );
    } else if args.is_present("create_proof") {
        return create_proof(
            &args
                .subcommand_matches("create_proof")
                .expect("Error parsing request"),
        );
    } else if args.is_present("verify_proof") {
        return verify_proof(
            &args
                .subcommand_matches("verify_proof")
                .expect("Error parsing request"),
        );
    } else {
        panic!("Unrecognized command")
    }
}

fn issue<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Issue(IssueArgs {
        document: args.value_of("document"),
        out: args.value_of("out"),
    })
}

fn create_proof<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::CreateProof(CreateProofArgs {
        reveal_document: args.value_of("reveal_document"),
        document_id: args.value_of("document_id"),
        out: args.value_of("out"),
    })
}

fn verify_proof<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::VerifyProof(VerifyProofArgs {
        proof_document: args.value_of("proof_document"),
    })
}

#[derive(Debug, PartialEq)]
pub enum Command<'a> {
    Issue(IssueArgs<'a>),
    CreateProof(CreateProofArgs<'a>),
    VerifyProof(VerifyProofArgs<'a>),
}

#[derive(Debug, PartialEq)]
pub struct IssueArgs<'a> {
    pub document: Option<&'a str>,
    pub out: Option<&'a str>,
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
