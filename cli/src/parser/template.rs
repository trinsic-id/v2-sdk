use clap::ArgMatches;

#[derive(Debug, PartialEq)]
pub enum Command {
    Create(CreateTemplateArgs),
}

#[derive(Debug, PartialEq)]
pub struct CreateTemplateArgs {}

pub fn parse(args: &ArgMatches) -> Command {
    todo!("todo")
}
