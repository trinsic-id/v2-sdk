use crate::parser::{trustregistry::*};

use super::config::Config;

pub(crate) fn execute(args: &Command, config: Config) {
    match args {
        Command::Search(args) => search(args, config),
        Command::RegisterIssuer(args) => register_issuer(args, config),
        Command::RegisterVerifier(args) => register_verifier(args, config),
    }
}

fn search(args: &SearchArgs, config: Config) {
    todo!()
}

fn register_issuer(args: &RegisterIssuerArgs, config: Config) {
    todo!()
}

fn register_verifier(args: &RegisterVerifierArgs, config: Config) {
    todo!()
}