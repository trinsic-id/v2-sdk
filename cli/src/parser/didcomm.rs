use clap::ArgMatches;

pub fn parse<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    if args.is_present("pack") {
        return pack(&args.subcommand_matches("pack").expect("Error parsing request"));
    }

    else if args.is_present("unpack") {
        return unpack(&args.subcommand_matches("unpack").expect("Error parsing request"));
    }

    else if args.is_present("sign") {
        return sign(&args.subcommand_matches("sign").expect("Error parsing request"));
    }

    else if args.is_present("verify") {
        return verify(&args.subcommand_matches("verify").expect("Error parsing request"));
    }

    else {
        panic!("Unrecognized command");
    }
}

fn pack<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Pack(PackArgs {
        sender_key: args.value_of("sender_key"),
        receiver_key: args.value_of("receiver_key"),
        associated_data: args.value_of("associated_data"),
        plaintext: args.value_of("plaintext"),
        encryption_mode: args.value_of("encryption_mode"),
        encryption_algorithm: args.value_of("encryption_algorithm"),
        out: args.value_of("out"),
    })
}

fn unpack<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Unpack(UnpackArgs {
        sender_key: args.value_of("sender_key"),
        receiver_key: args.value_of("receiver_key"),
        encrypted_message: args.value_of("encrypted_message"),
    })
}

fn sign<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Sign(SignArgs {
        key: args.value_of("key"),
        payload: args.value_of("payload"),
        out: args.value_of("out"),
    })
}

fn verify<'a>(args: &'a ArgMatches<'_>) -> Command<'a> {
    Command::Verify(VerifyArgs {
        key: args.value_of("key"),
        signed_message: args.value_of("signed_message"),
    })
}

#[derive(Debug)]
pub enum Command<'a> {
    Pack(PackArgs<'a>),
    Unpack(UnpackArgs<'a>),
    Sign(SignArgs<'a>),
    Verify(VerifyArgs<'a>),
}

#[derive(Debug)]
pub struct PackArgs<'a> {
    pub sender_key: Option<&'a str>,
    pub receiver_key: Option<&'a str>,
    pub associated_data: Option<&'a str>,
    pub plaintext: Option<&'a str>,
    pub encryption_mode: Option<&'a str>,
    pub encryption_algorithm: Option<&'a str>,
    pub out: Option<&'a str>,
}

#[derive(Debug)]
pub struct UnpackArgs<'a> {
    pub sender_key: Option<&'a str>,
    pub receiver_key: Option<&'a str>,
    pub encrypted_message: Option<&'a str>,
}

#[derive(Debug)]
pub struct SignArgs<'a> {
    pub key: Option<&'a str>,
    pub payload: Option<&'a str>,
    pub out: Option<&'a str>,
}

#[derive(Debug)]
pub struct VerifyArgs<'a> {
    pub key: Option<&'a str>,
    pub signed_message: Option<&'a str>
}

