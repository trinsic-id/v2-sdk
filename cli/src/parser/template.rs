use clap::ArgMatches;

#[derive(Debug, PartialEq)]
pub enum TemplateCommand {
    Create(CreateTemplateArgs),
    Get(GetTemplateArgs),
    List(ListTemplatesArgs),
    Search(SearchTemplatesArgs),
}

#[derive(Debug, PartialEq)]
pub struct CreateTemplateArgs {}

#[derive(Debug, PartialEq)]
pub struct GetTemplateArgs {
    pub id: String,
}

#[derive(Debug, PartialEq)]
pub struct ListTemplatesArgs {}

#[derive(Debug, PartialEq)]
pub struct SearchTemplatesArgs {}

pub fn parse(args: &ArgMatches) -> TemplateCommand {
    todo!("todo")
}
