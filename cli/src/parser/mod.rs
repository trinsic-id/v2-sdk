use clap::ArgMatches;

pub mod didcomm;
pub mod didkey;
pub mod wallet;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Service<'a> {
    if args.is_present("didkey") {
        return Service::DIDKey(didkey::parse(
            &args
                .subcommand_matches("didkey")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("didcomm") {
        return Service::DIDComm(didcomm::parse(
            &args
                .subcommand_matches("didcomm")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("wallet") {
        return Service::Wallet(wallet::parse(
            &args
                .subcommand_matches("wallet")
                .expect("Error parsing request"),
        ));
    } else if args.is_present("issuer") {
        return Service::Issuer;
    } else if args.is_present("authentication") {
        return Service::Authentication;
    } else {
        panic!("Unrecognized Command")
    }
}

#[derive(Debug)]
pub enum Service<'a> {
    DIDComm(didcomm::Command<'a>),
    DIDKey(didkey::Command<'a>),
    Wallet(wallet::Command<'a>),
    Issuer,
    Authentication,
}
