mod commands;

#[macro_use]
extern crate clap;
use clap::App;

fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml).get_matches();

    if matches.is_present("generate_key") {
        commands::didkey::generate_key(&matches.subcommand_matches("generate_key").unwrap());
    }

    else if matches.is_present("pack") {
        commands::didcomm::pack(&matches.subcommand_matches("pack").unwrap());
    }

    else if matches.is_present("unpack") {
        commands::didcomm::unpack(&matches.subcommand_matches("unpack").unwrap());
    }

    else if matches.is_present("sign") {
        commands::didcomm::sign(&matches.subcommand_matches("sign").unwrap());
    }

    else if matches.is_present("verify") {
        commands::didcomm::verify(&matches.subcommand_matches("verify").unwrap());
    }
}
