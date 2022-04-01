/// service options
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ServiceOptions {
    /// service endpoint
    #[prost(string, tag = "1")]
    pub server_endpoint: ::prost::alloc::string::String,
    /// service port
    #[prost(int32, tag = "2")]
    pub server_port: i32,
    /// indicates if tls is used
    #[prost(bool, tag = "3")]
    pub server_use_tls: bool,
    /// default auth token for oberon security scheme
    #[prost(string, tag = "4")]
    pub auth_token: ::prost::alloc::string::String,
    /// ecosystem to use with endpoints that require it
    #[prost(string, tag = "5")]
    pub default_ecosystem: ::prost::alloc::string::String,
}
