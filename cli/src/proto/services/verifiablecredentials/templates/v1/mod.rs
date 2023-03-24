/// Request to fetch a template by ID
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCredentialTemplateRequest {
    /// ID of template to fetch
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
}
/// Response to `GetCredentialTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCredentialTemplateResponse {
    /// Template fetched by ID
    #[prost(message, optional, tag="1")]
    pub template: ::core::option::Option<TemplateData>,
}
/// Request to search templates using a SQL query
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchCredentialTemplatesRequest {
    /// SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
    #[prost(string, tag="1")]
    pub query: ::prost::alloc::string::String,
    /// Token provided by previous `SearchCredentialTemplatesResponse`
    /// if more data is available for query
    #[prost(string, tag="2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `SearchCredentialTemplatesRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SearchCredentialTemplatesResponse {
    /// Raw JSON data returned from query
    #[prost(string, tag="1")]
    pub items_json: ::prost::alloc::string::String,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag="2")]
    pub has_more: bool,
    /// Token to fetch next set of results via `SearchCredentialTemplatesRequest`
    #[prost(string, tag="4")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Request to list templates using a SQL query
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListCredentialTemplatesRequest {
    /// SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
    #[prost(string, tag="1")]
    pub query: ::prost::alloc::string::String,
    /// Token provided by previous `ListCredentialTemplatesResponse`
    /// if more data is available for query
    #[prost(string, tag="2")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Response to `ListCredentialTemplatesRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListCredentialTemplatesResponse {
    /// Templates found by query
    #[prost(message, repeated, tag="1")]
    pub templates: ::prost::alloc::vec::Vec<TemplateData>,
    /// Whether more results are available for this query via `continuation_token`
    #[prost(bool, tag="2")]
    pub has_more_results: bool,
    /// Token to fetch next set of resuts via `ListCredentialTemplatesRequest`
    #[prost(string, tag="3")]
    pub continuation_token: ::prost::alloc::string::String,
}
/// Request to delete a template by ID
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteCredentialTemplateRequest {
    /// ID of template to delete
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
}
/// Response to `DeleteCredentialTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteCredentialTemplateResponse {
}
/// Request to create a new template
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateCredentialTemplateRequest {
    /// Name of new template. Must be a unique identifier within its ecosystem.
    #[prost(string, tag="1")]
    pub name: ::prost::alloc::string::String,
    /// Fields which compose the template
    #[prost(map="string, message", tag="2")]
    pub fields: ::std::collections::HashMap<::prost::alloc::string::String, TemplateField>,
    /// Whether credentials may be issued against this template which have fields
    /// not specified in `fields`
    #[prost(bool, tag="3")]
    pub allow_additional_fields: bool,
    /// Human-readable name of template
    #[prost(string, tag="4")]
    pub title: ::prost::alloc::string::String,
    /// Human-readable description of template
    #[prost(string, tag="5")]
    pub description: ::prost::alloc::string::String,
    /// Optional map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
    /// If not provided, this will be auto-generated.
    #[prost(map="string, message", tag="6")]
    pub field_ordering: ::std::collections::HashMap<::prost::alloc::string::String, FieldOrdering>,
    /// Options for rendering the template in Apple Wallet
    #[prost(message, optional, tag="7")]
    pub apple_wallet_options: ::core::option::Option<AppleWalletOptions>,
}
/// Response to `CreateCredentialTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateCredentialTemplateResponse {
    /// Created template
    #[prost(message, optional, tag="1")]
    pub data: ::core::option::Option<TemplateData>,
}
/// Request to update display information for a template
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateCredentialTemplateRequest {
    /// ID of Template to update
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
    /// New human-readable title of Template
    #[prost(string, optional, tag="2")]
    pub title: ::core::option::Option<::prost::alloc::string::String>,
    /// New human-readable description of Template
    #[prost(string, optional, tag="3")]
    pub description: ::core::option::Option<::prost::alloc::string::String>,
    /// Fields to update within the Template
    #[prost(map="string, message", tag="4")]
    pub fields: ::std::collections::HashMap<::prost::alloc::string::String, TemplateFieldPatch>,
    /// New field ordering options. See documentation for template creation for usage information.
    #[prost(map="string, message", tag="5")]
    pub field_ordering: ::std::collections::HashMap<::prost::alloc::string::String, FieldOrdering>,
    /// New Apple Wallet configuration
    #[prost(message, optional, tag="6")]
    pub apple_wallet_options: ::core::option::Option<AppleWalletOptions>,
}
/// Response to `UpdateCredentialTemplateRequest`
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateCredentialTemplateResponse {
    /// The Template after the update has been applied
    #[prost(message, optional, tag="1")]
    pub updated_template: ::core::option::Option<TemplateData>,
}
/// Credential Template
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TemplateData {
    /// Template ID
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
    /// Template name
    #[prost(string, tag="2")]
    pub name: ::prost::alloc::string::String,
    /// Template version number
    #[prost(int32, tag="3")]
    pub version: i32,
    /// Fields defined for the template
    #[prost(map="string, message", tag="4")]
    pub fields: ::std::collections::HashMap<::prost::alloc::string::String, TemplateField>,
    /// Whether credentials issued against this template may
    /// contain fields not defined by template
    #[prost(bool, tag="5")]
    pub allow_additional_fields: bool,
    /// URI pointing to template JSON schema document
    #[prost(string, tag="6")]
    pub schema_uri: ::prost::alloc::string::String,
    /// URI pointing to template JSON-LD context document
    #[deprecated]
    #[prost(string, tag="7")]
    pub context_uri: ::prost::alloc::string::String,
    /// ID of ecosystem in which template resides
    #[prost(string, tag="8")]
    pub ecosystem_id: ::prost::alloc::string::String,
    /// Template type (`VerifiableCredential`)
    #[prost(string, tag="9")]
    pub r#type: ::prost::alloc::string::String,
    /// ID of template creator
    #[prost(string, tag="10")]
    pub created_by: ::prost::alloc::string::String,
    /// Date when template was created as ISO 8601 utc string
    #[prost(string, tag="11")]
    pub date_created: ::prost::alloc::string::String,
    /// Human-readable template title
    #[prost(string, tag="12")]
    pub title: ::prost::alloc::string::String,
    /// Human-readable template description
    #[prost(string, tag="13")]
    pub description: ::prost::alloc::string::String,
    /// Map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
    #[prost(map="string, message", tag="14")]
    pub field_ordering: ::std::collections::HashMap<::prost::alloc::string::String, FieldOrdering>,
    /// Options for rendering the template in Apple Wallet
    #[prost(message, optional, tag="15")]
    pub apple_wallet_options: ::core::option::Option<AppleWalletOptions>,
}
/// Configuration options for Apple Wallet when
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AppleWalletOptions {
    /// Background color, in hex format, of credential when stored in an Apple Wallet.
    #[prost(string, tag="1")]
    pub background_color: ::prost::alloc::string::String,
    /// Foreground color, in hex format, of credential when stored in an Apple Wallet.
    #[prost(string, tag="2")]
    pub foreground_color: ::prost::alloc::string::String,
    /// Label color, in hex format, of credential when stored in an Apple Wallet.
    #[prost(string, tag="3")]
    pub label_color: ::prost::alloc::string::String,
    /// The ID of the template field which should be used as the primary field of a credential.
    #[prost(string, tag="4")]
    pub primary_field: ::prost::alloc::string::String,
    /// The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
    #[prost(string, repeated, tag="5")]
    pub secondary_fields: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
    #[prost(string, repeated, tag="6")]
    pub auxiliary_fields: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// Ordering information for a template field
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FieldOrdering {
    /// The order of the field; must be unique within the Template. Fields are sorted by order ascending when displaying a credential.
    /// Field orders must be contiguous from `0` to the number of fields minus 1.
    #[prost(int32, tag="1")]
    pub order: i32,
    /// The human-readable name of the section this field appears in; used to group together fields when displaying a credential.
    /// Sections must be contiguous with respect to `order`.
    #[prost(string, tag="2")]
    pub section: ::prost::alloc::string::String,
}
/// A field defined in a template
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TemplateField {
    /// Human-readable name of the field
    #[prost(string, tag="1")]
    pub title: ::prost::alloc::string::String,
    /// Human-readable description of the field
    #[prost(string, tag="2")]
    pub description: ::prost::alloc::string::String,
    /// Whether this field may be omitted when a credential is issued against the template
    #[prost(bool, tag="3")]
    pub optional: bool,
    /// The type of the field
    #[prost(enumeration="FieldType", tag="4")]
    pub r#type: i32,
    /// Do not use.
    /// Annotations for the field that may be used to add additional information.
    #[prost(map="string, string", tag="5")]
    pub annotations: ::std::collections::HashMap<::prost::alloc::string::String, ::prost::alloc::string::String>,
    /// How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
    #[prost(message, optional, tag="6")]
    pub uri_data: ::core::option::Option<UriFieldData>,
}
/// A patch to apply to an existing template field
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TemplateFieldPatch {
    /// Human-readable name of the field
    #[prost(string, optional, tag="1")]
    pub title: ::core::option::Option<::prost::alloc::string::String>,
    /// Human-readable description of the field
    #[prost(string, optional, tag="2")]
    pub description: ::core::option::Option<::prost::alloc::string::String>,
    /// How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
    #[prost(message, optional, tag="3")]
    pub uri_data: ::core::option::Option<UriFieldData>,
}
/// Data pertaining to a URI Field
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UriFieldData {
    /// Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png").
    /// Defaults to "application/octet-stream".
    #[prost(string, tag="1")]
    pub mime_type: ::prost::alloc::string::String,
    /// How to display the URI value when rendering a credential.
    #[prost(enumeration="UriRenderMethod", tag="2")]
    pub render_method: i32,
}
/// Valid types for credential fields
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum FieldType {
    String = 0,
    Number = 1,
    Bool = 2,
    Datetime = 4,
    Uri = 5,
}
impl FieldType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            FieldType::String => "STRING",
            FieldType::Number => "NUMBER",
            FieldType::Bool => "BOOL",
            FieldType::Datetime => "DATETIME",
            FieldType::Uri => "URI",
        }
    }
}
/// How to display a URI value when rendering a credential.
#[derive(::serde::Serialize, ::serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum UriRenderMethod {
    /// Display URI as text
    Text = 0,
    /// Display URI as a clickable link
    Link = 1,
    /// Display URI as an inline image. Only takes effect if the template field's MIME Type is an image type.
    InlineImage = 2,
}
impl UriRenderMethod {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            UriRenderMethod::Text => "TEXT",
            UriRenderMethod::Link => "LINK",
            UriRenderMethod::InlineImage => "INLINE_IMAGE",
        }
    }
}
/// Generated client implementations.
pub mod credential_templates_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct CredentialTemplatesClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CredentialTemplatesClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
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
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> CredentialTemplatesClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            CredentialTemplatesClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Create a credential template in the current ecosystem
        pub async fn create(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateCredentialTemplateRequest>,
        ) -> Result<
            tonic::Response<super::CreateCredentialTemplateResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
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
        /// Fetch a credential template by ID
        pub async fn get(
            &mut self,
            request: impl tonic::IntoRequest<super::GetCredentialTemplateRequest>,
        ) -> Result<
            tonic::Response<super::GetCredentialTemplateResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
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
        /// Update metadata of a template
        pub async fn update(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateCredentialTemplateRequest>,
        ) -> Result<
            tonic::Response<super::UpdateCredentialTemplateResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/services.verifiablecredentials.templates.v1.CredentialTemplates/Update",
            );
            self.inner.unary(request.into_request(), path, codec).await
        }
        /// Search credential templates using SQL, returning strongly-typed template data
        pub async fn list(
            &mut self,
            request: impl tonic::IntoRequest<super::ListCredentialTemplatesRequest>,
        ) -> Result<
            tonic::Response<super::ListCredentialTemplatesResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
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
        /// Search credential templates using SQL, returning raw JSON data
        pub async fn search(
            &mut self,
            request: impl tonic::IntoRequest<super::SearchCredentialTemplatesRequest>,
        ) -> Result<
            tonic::Response<super::SearchCredentialTemplatesResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
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
        /// Delete a credential template from the current ecosystem by ID
        pub async fn delete(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteCredentialTemplateRequest>,
        ) -> Result<
            tonic::Response<super::DeleteCredentialTemplateResponse>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
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
