#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetCredentialTemplateRequest {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetCredentialTemplateResponse {
    #[prost(message, optional, tag = "1")]
    pub template: ::core::option::Option<TemplateData>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchCredentialTemplatesRequest {
    /// SELECT * FROM c WHERE c.name = 'Diploma'
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct SearchCredentialTemplatesResponse {
    #[prost(string, tag = "1")]
    pub items_json: ::prost::alloc::string::String,
    #[prost(bool, tag = "2")]
    pub has_more: bool,
    #[prost(int32, tag = "3")]
    pub count: i32,
    #[prost(string, tag = "4")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListCredentialTemplatesRequest {
    /// SELECT * FROM c WHERE c.name = 'Diploma'
    #[prost(string, tag = "1")]
    pub query: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListCredentialTemplatesResponse {
    #[prost(message, repeated, tag = "1")]
    pub templates: ::prost::alloc::vec::Vec<TemplateData>,
    #[prost(bool, tag = "2")]
    pub has_more_results: bool,
    #[prost(string, tag = "3")]
    pub continuation_token: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteCredentialTemplateRequest {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct DeleteCredentialTemplateResponse {}
/// Request to create new template
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateCredentialTemplateRequest {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    #[prost(map = "string, message", tag = "2")]
    pub fields: ::std::collections::HashMap<::prost::alloc::string::String, TemplateField>,
    #[prost(bool, tag = "3")]
    pub allow_additional_fields: bool,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct CreateCredentialTemplateResponse {
    #[prost(message, optional, tag = "1")]
    pub data: ::core::option::Option<TemplateData>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct TemplateField {
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
    #[prost(bool, tag = "3")]
    pub optional: bool,
    #[prost(enumeration = "FieldType", tag = "4")]
    pub r#type: i32,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetTemplateRequest {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct GetTemplateResponse {
    #[prost(message, optional, tag = "1")]
    pub data: ::core::option::Option<TemplateData>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListTemplatesRequest {}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct ListTemplatesResponse {
    #[prost(message, repeated, tag = "1")]
    pub templates: ::prost::alloc::vec::Vec<TemplateData>,
}
#[derive(::serde::Serialize, ::serde::Deserialize, Clone, PartialEq, ::prost::Message)]
pub struct TemplateData {
    #[prost(string, tag = "1")]
    pub id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    #[prost(int32, tag = "3")]
    pub version: i32,
    #[prost(map = "string, message", tag = "4")]
    pub fields: ::std::collections::HashMap<::prost::alloc::string::String, TemplateField>,
    #[prost(bool, tag = "5")]
    pub allow_additional_fields: bool,
    #[prost(string, tag = "6")]
    pub schema_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "7")]
    pub context_uri: ::prost::alloc::string::String,
    #[prost(string, tag = "8")]
    pub ecosystem_id: ::prost::alloc::string::String,
    #[prost(string, tag = "9")]
    pub r#type: ::prost::alloc::string::String,
    #[prost(string, tag = "10")]
    pub created_by: ::prost::alloc::string::String,
}
#[derive(
    ::serde::Serialize,
    ::serde::Deserialize,
    Clone,
    Copy,
    Debug,
    PartialEq,
    Eq,
    Hash,
    PartialOrd,
    Ord,
    ::prost::Enumeration,
)]
#[repr(i32)]
pub enum FieldType {
    String = 0,
    Number = 1,
    Bool = 2,
    Datetime = 4,
}
#[doc = r" Generated client implementations."]
pub mod credential_templates_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    #[derive(Debug, Clone)]
    pub struct CredentialTemplatesClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CredentialTemplatesClient<tonic::transport::Channel> {
        #[doc = r" Attempt to create a new client by connecting to a given endpoint."]
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: std::convert::TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> CredentialTemplatesClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::ResponseBody: Body + Send + 'static,
        T::Error: Into<StdError>,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> CredentialTemplatesClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<http::Request<tonic::body::BoxBody>>>::Error:
                Into<StdError> + Send + Sync,
        {
            CredentialTemplatesClient::new(InterceptedService::new(inner, interceptor))
        }
        #[doc = r" Compress requests with `gzip`."]
        #[doc = r""]
        #[doc = r" This requires the server to support it otherwise it might respond with an"]
        #[doc = r" error."]
        pub fn send_gzip(mut self) -> Self {
            self.inner = self.inner.send_gzip();
            self
        }
        #[doc = r" Enable decompressing responses with `gzip`."]
        pub fn accept_gzip(mut self) -> Self {
            self.inner = self.inner.accept_gzip();
            self
        }
        pub async fn create(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateCredentialTemplateRequest>,
        ) -> Result<tonic::Response<super::CreateCredentialTemplateResponse>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn get(
            &mut self,
            request: impl tonic::IntoRequest<super::GetCredentialTemplateRequest>,
        ) -> Result<tonic::Response<super::GetCredentialTemplateResponse>, tonic::Status> {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn list(
            &mut self,
            request: impl tonic::IntoRequest<super::ListCredentialTemplatesRequest>,
        ) -> Result<tonic::Response<super::ListCredentialTemplatesResponse>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn search(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchCredentialTemplatesRequest>,
        ) -> Result<tonic::Response<super::SearchCredentialTemplatesResponse>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        pub async fn delete(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteCredentialTemplateRequest>,
        ) -> Result<tonic::Response<super::DeleteCredentialTemplateResponse>, tonic::Status>
        {
            self.inner.ready().await.map_err(|e| {
                tonic::Status::new(
                    tonic::Code::Unknown,
                    format!("Service was not ready: {}", e.into()),
                )
            })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
    }
}
