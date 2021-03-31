pub mod parser;
pub mod services;

#[macro_use]
extern crate clap;
use clap::App;

fn main() {
    let yaml = load_yaml!("cli.yaml");
    let matches = App::from_yaml(yaml).get_matches();
    let arguments = parser::parse(&matches);
    services::execute(&arguments);
}