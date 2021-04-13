pub mod parser;
pub mod services;

#[macro_use]
extern crate clap;
use clap::{App, ArgMatches};
use parser::Service;
use services::config::Config;
use yaml_rust::Yaml;

#[allow(unused_must_use)]
fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml).get_matches();

    process(yaml, matches)
}

fn process(yaml: &Yaml, matches: ArgMatches) {
    let config = Config::from(&matches);

    let service = parser::parse(&matches);

    if service == Service::Unknown {
        App::from_yaml(yaml).print_help().unwrap();
    } else {
        services::execute(&service, config);
    }
}

#[test]
fn run_custom_command() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml)
        .get_matches_from_safe(vec!["okapi", "config", "--server-address", "example.com"])
        .unwrap();

    process(yaml, matches)
}
