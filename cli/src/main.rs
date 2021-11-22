pub mod parser;
pub mod services;

#[macro_use]
extern crate clap;
use clap::{App, ArgMatches};
use colored::Colorize;
use parser::Service;
use services::config::DefaultConfig;
use yaml_rust::Yaml;

#[allow(unused_must_use)]
fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml).get_matches();

    process(yaml, matches)
}

fn process(yaml: &Yaml, matches: ArgMatches) {
    let config = DefaultConfig::from(&matches);
    let service = parser::parse(&matches);

    let mut app = App::from_yaml(yaml);

    if service == Service::Unknown {
        app.print_help().unwrap();
    } else {
        match services::execute(&service, config) {
            Ok(_) => {}
            Err(err) => match err {
                services::config::Error::IOError => println!("{}", format!("io error").red()),
                services::config::Error::SerializationError => {
                    println!("{}", format!("serialization error").red())
                }
                services::config::Error::UnknownCommand => app.print_help().unwrap(),
            },
        }
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn run_custom_command() {
        let yaml = load_yaml!("cli.yaml");
        let matches = App::from_yaml(yaml)
            .get_matches_from_safe(vec!["okapi", "config", "--server-address", "example.com"])
            .unwrap();

        process(yaml, matches)
    }
}
