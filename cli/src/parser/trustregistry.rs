#[derive(Debug, PartialEq)]
pub enum Command {
    Search(SearchArgs),
    RegisterIssuer(RegisterIssuerArgs),
    RegisterVerifier(RegisterVerifierArgs),
}

#[derive(Debug, PartialEq)]
pub struct SearchArgs {}

#[derive(Debug, PartialEq)]
pub struct RegisterIssuerArgs {}

#[derive(Debug, PartialEq)]
pub struct RegisterVerifierArgs {}
