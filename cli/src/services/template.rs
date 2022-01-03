use crate::parser::template::*;
use crate::services::config::Error;
use crate::DefaultConfig;

pub(crate) fn execute(args: &Command, config: &DefaultConfig) -> Result<(), Error> {
    match args {
        Command::Create(args) => create(args, config),
    }
}

#[tokio::main]
async fn create(args: &CreateTemplateArgs, config: &DefaultConfig) -> Result<(), Error> {
    todo!("todo")
}
