/*use clap::ArgMatches;
use cli::proto::trinsic_services::{credential_client::CredentialClient};
use cli::SERVER_URL;
use std::fs::OpenOptions;
use std::io::{Read, Write, stdin, stdout};

use didcommgrpc::*;

pub fn issuer(args: &ArgMatches<'_>) {
    if args.is_present("issue") {
        issue(&args.subcommand_matches("issue").expect("Unable to issue credential"));
    }
    else if args.is_present("create_proof") {
        create_proof(&args.subcommand_matches("create_proof").expect("Unable to create proof"));
    }
    else if args.is_present("verify_proof") {
        verify_proof(&args.subcommand_matches("verify_proof").expect("Unable to verify proof"));
    }
}

#[tokio::main]
async fn issue(_args: &ArgMatches<'_>) {
    println!("Not yet implemented");
}

#[tokio::main]
async fn create_proof(_args: &ArgMatches<'_>) {
    println!("Not yet implemented");
}

#[tokio::main]
async fn verify_proof(_args: &ArgMatches<'_>) {
    println!("Not yet implemented");
}*/