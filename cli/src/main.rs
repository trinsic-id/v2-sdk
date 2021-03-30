mod services;

#[macro_use]
extern crate clap;
use clap::App;

fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml).get_matches();

    if matches.is_present("didkey") {
        services::didkey::didkey(&matches.subcommand_matches("didkey").unwrap());
    }
    
    else if matches.is_present("didcomm") {
        services::didcomm::didcomm(&matches.subcommand_matches("didcomm").unwrap());
    }

    else if matches.is_present("greet") {
        services::greet::greet(&matches.subcommand_matches("greet").unwrap());
    }

    else if matches.is_present("wallet") {
        services::wallet::wallet(&matches.subcommand_matches("wallet").unwrap());
    }

    else if matches.is_present("issuer") {
        services::issuer::issuer(&matches.subcommand_matches("issuer").unwrap());
    }

    else if matches.is_present("authentication") {
        services::authentication::authentication(&matches.subcommand_matches("authentication").unwrap());
    }
}