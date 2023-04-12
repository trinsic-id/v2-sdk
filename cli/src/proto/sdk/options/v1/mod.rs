/// Configuration for Trinsic SDK Services
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct TrinsicOptions {
    /// Trinsic API endpoint. Defaults to `prod.trinsic.cloud`
    #[prost(string, tag = "1")]
    pub server_endpoint: ::prost::alloc::string::String,
    /// Trinsic API port; defaults to `443`
    #[prost(int32, tag = "2")]
    pub server_port: i32,
    /// Whether TLS is enabled between SDK and Trinsic API; defaults to `true`
    #[prost(bool, tag = "3")]
    pub server_use_tls: bool,
    /// Authentication token for SDK calls; defaults to empty string (unauthenticated)
    ///
    /// Default ecosystem ID to use for various SDK calls; defaults to `default`
    /// string default_ecosystem = 5;
    #[prost(string, tag = "4")]
    pub auth_token: ::prost::alloc::string::String,
}
