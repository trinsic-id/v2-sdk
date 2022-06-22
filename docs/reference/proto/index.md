


# Protocol Documentation
<a name="top"></a>

This page documents the Protobuf Services and Messages which compose the Trinsic API.



<a name="services_common_v1_common-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/common/v1/common.proto


 <!-- end services -->


<a name="services-common-v1-Nonce"></a>

### Nonce
Nonce used to generate an oberon proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| timestamp | [int64](/reference/proto#int64) | UTC unix millisecond timestamp the request was made |
| request_hash | [bytes](/reference/proto#bytes) | blake3256 hash of the request body |






<a name="services-common-v1-ServerConfig"></a>

### ServerConfig



| Field | Type | Description |
| ----- | ---- | ----------- |
| endpoint | [string](/reference/proto#string) | service endpoint |
| port | [int32](/reference/proto#int32) | service port |
| use_tls | [bool](/reference/proto#bool) | indicates if tls is used |





 <!-- end messages -->


<a name="services-common-v1-ResponseStatus"></a>

### ResponseStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| SUCCESS | 0 |  |
| WALLET_ACCESS_DENIED | 10 |  |
| WALLET_EXISTS | 11 |  |
| ITEM_NOT_FOUND | 20 |  |
| SERIALIZATION_ERROR | 200 |  |
| UNKNOWN_ERROR | 100 |  |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_options_field-options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/options/field-options.proto


 <!-- end services -->

 <!-- end messages -->

 <!-- end enums -->


<a name="services_options_field-options-proto-extensions"></a>

### File-level Extensions
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
| optional | bool | .google.protobuf.FieldOptions | 60000 | Whether field is optional in Trinsic's backend. This is not the same as an `optional` protobuf label; it only impacts documentation generation for the field. |

 <!-- end HasExtensions -->



<a name="services_verifiable-credentials_templates_v1_templates-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/templates/v1/templates.proto



<a name="services-verifiablecredentials-templates-v1-CredentialTemplates"></a>

### Service - CredentialTemplates


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [CreateCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest) | [CreateCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse) |  |
| Get | [GetCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest) | [GetCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse) |  |
| List | [ListCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest) | [ListCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse) |  |
| Search | [SearchCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest) | [SearchCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse) |  |
| Delete | [DeleteCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest) | [DeleteCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse) |  |

 <!-- end services -->


<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest"></a>

### CreateCredentialTemplateRequest
Request to create a new template


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Name of new template |
| fields | [CreateCredentialTemplateRequest.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry)[] | Fields which compose the template |
| allow_additional_fields | [bool](/reference/proto#bool) | Whether credentials may be issued against this template which have fields not specified in `fields` |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry"></a>

### CreateCredentialTemplateRequest.FieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [TemplateField](/reference/proto#services-verifiablecredentials-templates-v1-TemplateField) |  |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse"></a>

### CreateCredentialTemplateResponse
Response to `CreateCredentialTemplateRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| data | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) | Created template |






<a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest"></a>

### DeleteCredentialTemplateRequest
Request to delete a template by ID


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of template to delete |






<a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse"></a>

### DeleteCredentialTemplateResponse
Response to `DeleteCredentialTemplateRequest`






<a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest"></a>

### GetCredentialTemplateRequest
Request to fetch a template by ID


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of template to fetch |






<a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse"></a>

### GetCredentialTemplateResponse
Response to `GetCredentialTemplateRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| template | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) | Template fetched by ID |






<a name="services-verifiablecredentials-templates-v1-GetTemplateRequest"></a>

### GetTemplateRequest
Unused


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-GetTemplateResponse"></a>

### GetTemplateResponse
Unused


| Field | Type | Description |
| ----- | ---- | ----------- |
| data | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) |  |






<a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest"></a>

### ListCredentialTemplatesRequest
Request to list templates using a SQL query


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` |
| continuation_token | [string](/reference/proto#string) | Token provided by previous `ListCredentialTemplatesResponse` if more data is available for query |






<a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse"></a>

### ListCredentialTemplatesResponse
Response to `ListCredentialTemplatesRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| templates | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData)[] | Templates found by query |
| has_more_results | [bool](/reference/proto#bool) | Whether more results are available for this query via `continuation_token` |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of resuts via `ListCredentialTemplatesRequest` |






<a name="services-verifiablecredentials-templates-v1-ListTemplatesRequest"></a>

### ListTemplatesRequest
Unused






<a name="services-verifiablecredentials-templates-v1-ListTemplatesResponse"></a>

### ListTemplatesResponse
Unused


| Field | Type | Description |
| ----- | ---- | ----------- |
| templates | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData)[] |  |






<a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest"></a>

### SearchCredentialTemplatesRequest
Request to search templates using a SQL query


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` |
| continuation_token | [string](/reference/proto#string) | Token provided by previous `SearchCredentialTemplatesResponse` if more data is available for query |






<a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse"></a>

### SearchCredentialTemplatesResponse
Response to `SearchCredentialTemplatesRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| items_json | [string](/reference/proto#string) | Raw JSON data returned from query |
| has_more | [bool](/reference/proto#bool) | Whether more results are available for this query via `continuation_token` |
| continuation_token | [string](/reference/proto#string) | Count of items in `items_json` int32 count = 3; unpopulated and unused Token to fetch next set of results via `SearchCredentialTemplatesRequest` |






<a name="services-verifiablecredentials-templates-v1-TemplateData"></a>

### TemplateData
Credential Template


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | Template ID |
| name | [string](/reference/proto#string) | Template name |
| version | [int32](/reference/proto#int32) | Template version number |
| fields | [TemplateData.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry)[] | Fields defined for the template |
| allow_additional_fields | [bool](/reference/proto#bool) | Whether credentials issued against this template may contain fields not defined by template |
| schema_uri | [string](/reference/proto#string) | URI pointing to template JSON schema document |
| context_uri | [string](/reference/proto#string) | URI pointing to template JSON-LD context document |
| ecosystem_id | [string](/reference/proto#string) | ID of ecosystem in which template resides |
| type | [string](/reference/proto#string) | Template type (`VerifiableCredential`) |
| created_by | [string](/reference/proto#string) | ID of template creator |






<a name="services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry"></a>

### TemplateData.FieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [TemplateField](/reference/proto#services-verifiablecredentials-templates-v1-TemplateField) |  |






<a name="services-verifiablecredentials-templates-v1-TemplateField"></a>

### TemplateField
A field defined in a template


| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) | Human-readable description of the field |
| optional | [bool](/reference/proto#bool) | Whether this field may be omitted when a credential is issued against the template |
| type | [FieldType](/reference/proto#services-verifiablecredentials-templates-v1-FieldType) | The type of the field |





 <!-- end messages -->


<a name="services-verifiablecredentials-templates-v1-FieldType"></a>

### FieldType
Valid types for credential fields

| Name | Number | Description |
| ---- | ------ | ----------- |
| STRING | 0 |  |
| NUMBER | 1 |  |
| BOOL | 2 |  |
| DATETIME | 4 |  |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_verifiable-credentials_v1_verifiable-credentials-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/v1/verifiable-credentials.proto



<a name="services-verifiablecredentials-v1-VerifiableCredential"></a>

### Service - VerifiableCredential


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Issue | [IssueRequest](/reference/proto#services-verifiablecredentials-v1-IssueRequest) | [IssueResponse](/reference/proto#services-verifiablecredentials-v1-IssueResponse) | Sign and issue a verifiable credential from a submitted document. The document must be a valid JSON-LD document. |
| IssueFromTemplate | [IssueFromTemplateRequest](/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateRequest) | [IssueFromTemplateResponse](/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateResponse) | Sign and issue a verifiable credential from a pre-defined template. This process will also add schema validation and revocation registry entry in the credential. |
| CheckStatus | [CheckStatusRequest](/reference/proto#services-verifiablecredentials-v1-CheckStatusRequest) | [CheckStatusResponse](/reference/proto#services-verifiablecredentials-v1-CheckStatusResponse) | Check credential status in the revocation registry |
| UpdateStatus | [UpdateStatusRequest](/reference/proto#services-verifiablecredentials-v1-UpdateStatusRequest) | [UpdateStatusResponse](/reference/proto#services-verifiablecredentials-v1-UpdateStatusResponse) | Update credential status by setting the revocation value |
| CreateProof | [CreateProofRequest](/reference/proto#services-verifiablecredentials-v1-CreateProofRequest) | [CreateProofResponse](/reference/proto#services-verifiablecredentials-v1-CreateProofResponse) | Create a proof from a signed document that is a valid verifiable credential and contains a signature from which a proof can be derived. |
| VerifyProof | [VerifyProofRequest](/reference/proto#services-verifiablecredentials-v1-VerifyProofRequest) | [VerifyProofResponse](/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse) | Verifies a proof by checking the signature value, and if possible schema validation, revocation status, and issuer status against a trust registry |
| Send | [SendRequest](/reference/proto#services-verifiablecredentials-v1-SendRequest) | [SendResponse](/reference/proto#services-verifiablecredentials-v1-SendResponse) | Sends a document directly to a user's email within the given ecosystem |

 <!-- end services -->


<a name="services-verifiablecredentials-v1-CheckStatusRequest"></a>

### CheckStatusRequest
Request to check a credential's revocation status


| Field | Type | Description |
| ----- | ---- | ----------- |
| credential_status_id | [string](/reference/proto#string) | Credential Status ID to check |






<a name="services-verifiablecredentials-v1-CheckStatusResponse"></a>

### CheckStatusResponse
Response to `CheckStatusRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| revoked | [bool](/reference/proto#bool) | The credential's revocation status |






<a name="services-verifiablecredentials-v1-CreateProofRequest"></a>

### CreateProofRequest
Request to create a proof for a Verifiable Credential using public key tied to caller.
Either `item_id` or `document_json` may be provided, not both.


| Field | Type | Description |
| ----- | ---- | ----------- |
| reveal_document_json | [string](/reference/proto#string) | A valid JSON-LD frame describing which fields should be revealed in the generated proof. If unspecified, all fields in the document will be revealed |
| item_id | [string](/reference/proto#string) | ID of wallet item stored in a Trinsic cloud wallet |
| document_json | [string](/reference/proto#string) | A valid JSON-LD Verifiable Credential document string with an unbound signature. The proof will be derived from this document directly. The document will not be stored in the wallet. |






<a name="services-verifiablecredentials-v1-CreateProofResponse"></a>

### CreateProofResponse
Response to `CreateProofRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| proof_document_json | [string](/reference/proto#string) | Valid JSON-LD proof for the specified credential |






<a name="services-verifiablecredentials-v1-IssueFromTemplateRequest"></a>

### IssueFromTemplateRequest
Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller


| Field | Type | Description |
| ----- | ---- | ----------- |
| template_id | [string](/reference/proto#string) | ID of template to use |
| values_json | [string](/reference/proto#string) | JSON document string with keys corresponding to the fields of the template referenced by `template_id` |
| framework_id | [string](/reference/proto#string) | Governance framework ID to use with issuance of this credential. If specified, the issued credential will contain extended issuer metadata with membership info for the given ecosystem governance framework (EGF) |






<a name="services-verifiablecredentials-v1-IssueFromTemplateResponse"></a>

### IssueFromTemplateResponse
Response to `IssueFromTemplateRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| document_json | [string](/reference/proto#string) | Verifiable Credential document, in JSON-LD form, constructed from the specified template and values; signed with public key tied to caller of `IssueFromTemplateRequest` |






<a name="services-verifiablecredentials-v1-IssueRequest"></a>

### IssueRequest
Request to sign a JSON-LD Credential using public key tied to caller


| Field | Type | Description |
| ----- | ---- | ----------- |
| document_json | [string](/reference/proto#string) | Valid JSON-LD Credential document to be signed, in string form |






<a name="services-verifiablecredentials-v1-IssueResponse"></a>

### IssueResponse
Response to `IssueRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| signed_document_json | [string](/reference/proto#string) | Verifiable Credential document, signed with public key tied to caller of `IssueRequest` |






<a name="services-verifiablecredentials-v1-SendRequest"></a>

### SendRequest
Request to send a document to another user's wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of user to send item to |
| did_uri | [string](/reference/proto#string) | DID of recipient (presently unsupported) |
| didcomm_invitation_json | [string](/reference/proto#string) | DIDComm out-of-band invitation JSON (presently unsupported) |
| document_json | [string](/reference/proto#string) | JSON document to send to recipient |






<a name="services-verifiablecredentials-v1-SendResponse"></a>

### SendResponse
Response to `SendRequest`






<a name="services-verifiablecredentials-v1-UpdateStatusRequest"></a>

### UpdateStatusRequest
Request to update a credential's revocation status


| Field | Type | Description |
| ----- | ---- | ----------- |
| credential_status_id | [string](/reference/proto#string) | Credential Status ID to update |
| revoked | [bool](/reference/proto#bool) | New revocation status of credential |






<a name="services-verifiablecredentials-v1-UpdateStatusResponse"></a>

### UpdateStatusResponse
Response to `UpdateStatusRequest`






<a name="services-verifiablecredentials-v1-ValidationMessage"></a>

### ValidationMessage
Result of a validation check on a proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| is_valid | [bool](/reference/proto#bool) | Whether or not this validation check passed |
| messages | [string](/reference/proto#string)[] | If validation failed, contains messages explaining why |






<a name="services-verifiablecredentials-v1-VerifyProofRequest"></a>

### VerifyProofRequest
Request to verify a proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| proof_document_json | [string](/reference/proto#string) | JSON-LD proof document string to verify |






<a name="services-verifiablecredentials-v1-VerifyProofResponse"></a>

### VerifyProofResponse
Response to `VerifyProofRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| is_valid | [bool](/reference/proto#bool) | Whether or not all validations in `validation_results` passed |
| validation_messages | [string](/reference/proto#string)[] | **Deprecated.** Use `validation_results` instead |
| validation_results | [VerifyProofResponse.ValidationResultsEntry](/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry)[] | Results of each validation check performed, such as schema conformance, revocation status, signature, etc. Detailed results are provided for failed validations. |






<a name="services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry"></a>

### VerifyProofResponse.ValidationResultsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [ValidationMessage](/reference/proto#services-verifiablecredentials-v1-ValidationMessage) |  |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_debug_v1_debug-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/debug/v1/debug.proto



<a name="services-debug-v1-Debugging"></a>

### Service - Debugging


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CallEmpty | [.google.protobuf.Empty](/reference/proto#google-protobuf-Empty) | [.google.protobuf.Empty](/reference/proto#google-protobuf-Empty) |  |
| CallEmptyAuth | [.google.protobuf.Empty](/reference/proto#google-protobuf-Empty) | [.google.protobuf.Empty](/reference/proto#google-protobuf-Empty) |  |

 <!-- end services -->

 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_universal-wallet_v1_universal-wallet-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/universal-wallet/v1/universal-wallet.proto



<a name="services-universalwallet-v1-UniversalWallet"></a>

### Service - UniversalWallet


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetItem | [GetItemRequest](/reference/proto#services-universalwallet-v1-GetItemRequest) | [GetItemResponse](/reference/proto#services-universalwallet-v1-GetItemResponse) | Retrieve an item from the wallet with a given item identifier |
| Search | [SearchRequest](/reference/proto#services-universalwallet-v1-SearchRequest) | [SearchResponse](/reference/proto#services-universalwallet-v1-SearchResponse) | Search the wallet using a SQL-like syntax |
| InsertItem | [InsertItemRequest](/reference/proto#services-universalwallet-v1-InsertItemRequest) | [InsertItemResponse](/reference/proto#services-universalwallet-v1-InsertItemResponse) | Insert an item into the wallet |
| UpdateItem | [UpdateItemRequest](/reference/proto#services-universalwallet-v1-UpdateItemRequest) | [UpdateItemResponse](/reference/proto#services-universalwallet-v1-UpdateItemResponse) | Update an item in the wallet |
| DeleteItem | [DeleteItemRequest](/reference/proto#services-universalwallet-v1-DeleteItemRequest) | [DeleteItemResponse](/reference/proto#services-universalwallet-v1-DeleteItemResponse) | Delete an item from the wallet permanently |

 <!-- end services -->


<a name="services-universalwallet-v1-DeleteItemRequest"></a>

### DeleteItemRequest
Request to delete an item in a wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | ID of item to delete |






<a name="services-universalwallet-v1-DeleteItemResponse"></a>

### DeleteItemResponse
Response to `DeleteItemRequest`






<a name="services-universalwallet-v1-GetItemRequest"></a>

### GetItemRequest
Request to fetch an item from wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | ID of item in wallet |






<a name="services-universalwallet-v1-GetItemResponse"></a>

### GetItemResponse
Response to `GetItemRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_json | [string](/reference/proto#string) | Item data as a JSON string |
| item_type | [string](/reference/proto#string) | Type of item specified when item was inserted into wallet |






<a name="services-universalwallet-v1-InsertItemRequest"></a>

### InsertItemRequest
Request to insert a JSON document into a wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_json | [string](/reference/proto#string) | Document to insert; must be stringified JSON |
| item_type | [string](/reference/proto#string) | Item type (ex. "VerifiableCredential") |






<a name="services-universalwallet-v1-InsertItemResponse"></a>

### InsertItemResponse
Response to `InsertItemRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | ID of item inserted into wallet |






<a name="services-universalwallet-v1-SearchRequest"></a>

### SearchRequest
Request to search items in wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SQL Query to execute against items in wallet |
| continuation_token | [string](/reference/proto#string) | Token provided by previous `SearchResponse` if more data is available for query |






<a name="services-universalwallet-v1-SearchResponse"></a>

### SearchResponse
Response to `SearchRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| items | [string](/reference/proto#string)[] | Array of query results, as JSON strings |
| has_more | [bool](/reference/proto#bool) | Whether more results are available for this query via `continuation_token` |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of results via `SearchRequest` |






<a name="services-universalwallet-v1-UpdateItemRequest"></a>

### UpdateItemRequest
Request to update item in wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | ID of item in wallet |
| item_type | [string](/reference/proto#string) | Item type (ex. "VerifiableCredential") |






<a name="services-universalwallet-v1-UpdateItemResponse"></a>

### UpdateItemResponse
Response to `UpdateItemRequest`





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_provider_v1_provider-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/provider/v1/provider.proto



<a name="services-provider-v1-Provider"></a>

### Service - Provider


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateEcosystem | [CreateEcosystemRequest](/reference/proto#services-provider-v1-CreateEcosystemRequest) | [CreateEcosystemResponse](/reference/proto#services-provider-v1-CreateEcosystemResponse) | Create new ecosystem and assign the authenticated user as owner |
| UpdateEcosystem | [UpdateEcosystemRequest](/reference/proto#services-provider-v1-UpdateEcosystemRequest) | [UpdateEcosystemResponse](/reference/proto#services-provider-v1-UpdateEcosystemResponse) | Update an existing ecosystem |
| GrantAuthorization | [GrantAuthorizationRequest](/reference/proto#services-provider-v1-GrantAuthorizationRequest) | [GrantAuthorizationResponse](/reference/proto#services-provider-v1-GrantAuthorizationResponse) | Grant authorization to ecosystem resources |
| RevokeAuthorization | [RevokeAuthorizationRequest](/reference/proto#services-provider-v1-RevokeAuthorizationRequest) | [RevokeAuthorizationResponse](/reference/proto#services-provider-v1-RevokeAuthorizationResponse) | Revoke authorization to ecosystem resources |
| GetAuthorizations | [GetAuthorizationsRequest](/reference/proto#services-provider-v1-GetAuthorizationsRequest) | [GetAuthorizationsResponse](/reference/proto#services-provider-v1-GetAuthorizationsResponse) | Retreive the list of permissions for this particular account/ecosystem |
| AddWebhook | [AddWebhookRequest](/reference/proto#services-provider-v1-AddWebhookRequest) | [AddWebhookResponse](/reference/proto#services-provider-v1-AddWebhookResponse) | Add a webhook endpoint to the ecosystem |
| DeleteWebhook | [DeleteWebhookRequest](/reference/proto#services-provider-v1-DeleteWebhookRequest) | [DeleteWebhookResponse](/reference/proto#services-provider-v1-DeleteWebhookResponse) | Delete a webhook endpoint from the ecosystem |
| EcosystemInfo | [EcosystemInfoRequest](/reference/proto#services-provider-v1-EcosystemInfoRequest) | [EcosystemInfoResponse](/reference/proto#services-provider-v1-EcosystemInfoResponse) | Get ecosystem information |
| GenerateToken | [GenerateTokenRequest](/reference/proto#services-provider-v1-GenerateTokenRequest) | [GenerateTokenResponse](/reference/proto#services-provider-v1-GenerateTokenResponse) | Generates an unprotected authentication token that can be used to configure server side applications |
| Invite | [InviteRequest](/reference/proto#services-provider-v1-InviteRequest) | [InviteResponse](/reference/proto#services-provider-v1-InviteResponse) | Invite a user to the ecosystem |
| InvitationStatus | [InvitationStatusRequest](/reference/proto#services-provider-v1-InvitationStatusRequest) | [InvitationStatusResponse](/reference/proto#services-provider-v1-InvitationStatusResponse) | Check the invitation status |
| GetOberonKey | [GetOberonKeyRequest](/reference/proto#services-provider-v1-GetOberonKeyRequest) | [GetOberonKeyResponse](/reference/proto#services-provider-v1-GetOberonKeyResponse) | Returns the public key being used to create/verify oberon tokens |
| GetEventToken | [GetEventTokenRequest](/reference/proto#services-provider-v1-GetEventTokenRequest) | [GetEventTokenResponse](/reference/proto#services-provider-v1-GetEventTokenResponse) | Generate a signed token (JWT) that can be used to connect to the message bus |

 <!-- end services -->


<a name="services-provider-v1-AddWebhookRequest"></a>

### AddWebhookRequest
Request to add a webhook to an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| destination_url | [string](/reference/proto#string) | Destination to post webhook calls to |
| secret | [string](/reference/proto#string) | HMAC secret for webhook validation |
| events | [string](/reference/proto#string)[] | Events to subscribe to. Default is "*" (all events) |






<a name="services-provider-v1-AddWebhookResponse"></a>

### AddWebhookResponse
Response to `AddWebhookRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem with new webhook |






<a name="services-provider-v1-CreateEcosystemRequest"></a>

### CreateEcosystemRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Globally unique name for the Ecosystem. This name will be part of the ecosystem specific URLs and namespaces. Allowed characters are lowercase letters, numbers, underscore and hyphen. |
| description | [string](/reference/proto#string) | Ecosystem description |
| uri | [string](/reference/proto#string) | External URL associated with your organization or ecosystem entity |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) | The account details of the owner of the ecosystem |






<a name="services-provider-v1-CreateEcosystemResponse"></a>

### CreateEcosystemResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Details of the created ecosystem |
| profile | [services.account.v1.AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account profile for auth of the owner of the ecosystem |
| confirmation_method | [services.account.v1.ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | Indicates if confirmation of account is required. This setting is configured globally by the server administrator. |






<a name="services-provider-v1-DeleteWebhookRequest"></a>

### DeleteWebhookRequest
Request to delete a webhook from an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| webhook_id | [string](/reference/proto#string) | ID of webhook to delete |






<a name="services-provider-v1-DeleteWebhookResponse"></a>

### DeleteWebhookResponse
Response to `DeleteWebhookRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem after removal of webhook |






<a name="services-provider-v1-Ecosystem"></a>

### Ecosystem



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | URN of the ecosystem |
| name | [string](/reference/proto#string) | Globally unique name for the ecosystem |
| description | [string](/reference/proto#string) | Ecosystem description |
| uri | [string](/reference/proto#string) | External URL associated with the organization or ecosystem entity |
| webhooks | [WebhookConfig](/reference/proto#services-provider-v1-WebhookConfig)[] | Configured webhooks, if any |






<a name="services-provider-v1-EcosystemInfoRequest"></a>

### EcosystemInfoRequest
Request to fetch information about an ecosystem






<a name="services-provider-v1-EcosystemInfoResponse"></a>

### EcosystemInfoResponse
Response to `InfoRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem corresponding to requested `ecosystem_id` |






<a name="services-provider-v1-GenerateTokenRequest"></a>

### GenerateTokenRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) | Description to identify this token |






<a name="services-provider-v1-GenerateTokenResponse"></a>

### GenerateTokenResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| profile | [services.account.v1.AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account authentication profile that contains unprotected token |






<a name="services-provider-v1-GetAuthorizationsRequest"></a>

### GetAuthorizationsRequest







<a name="services-provider-v1-GetAuthorizationsResponse"></a>

### GetAuthorizationsResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| grants | [Grant](/reference/proto#services-provider-v1-Grant)[] |  |






<a name="services-provider-v1-GetEventTokenRequest"></a>

### GetEventTokenRequest
generates an events token bound to the provided ed25519 pk


| Field | Type | Description |
| ----- | ---- | ----------- |
| pk | [bytes](/reference/proto#bytes) |  |






<a name="services-provider-v1-GetEventTokenResponse"></a>

### GetEventTokenResponse
response message containing a token (JWT) that can be used
to connect directly to the message streaming architecture


| Field | Type | Description |
| ----- | ---- | ----------- |
| token | [string](/reference/proto#string) | a JWT bound to the PK provided in the request |






<a name="services-provider-v1-GetOberonKeyRequest"></a>

### GetOberonKeyRequest
request message for GetOberonKey






<a name="services-provider-v1-GetOberonKeyResponse"></a>

### GetOberonKeyResponse
response message for GetOberonKey


| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) | Oberon Public Key as RAW base64 URL encoded string |






<a name="services-provider-v1-Grant"></a>

### Grant



| Field | Type | Description |
| ----- | ---- | ----------- |
| resourceId | [string](/reference/proto#string) | the urn of the resource |
| actions | [string](/reference/proto#string)[] | list of actions that are allowed |
| child_grants | [Grant](/reference/proto#services-provider-v1-Grant)[] | any child grants |






<a name="services-provider-v1-GrantAuthorizationRequest"></a>

### GrantAuthorizationRequest
grant permissions to a resource or path in the ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | email associted with the account |
| walletId | [string](/reference/proto#string) | wallet id of the account |
| resource | [string](/reference/proto#string) | resources are specified as a restful path: /{ecoId}/{resource type}/{resource id}. EcosystemId maybe ommited |
| action | [string](/reference/proto#string) | action to authorize. default is "*" (all) |






<a name="services-provider-v1-GrantAuthorizationResponse"></a>

### GrantAuthorizationResponse







<a name="services-provider-v1-InvitationStatusRequest"></a>

### InvitationStatusRequest
Request details for the status of onboarding
an individual or organization.
The reference_id passed is the response from the
`Onboard` method call


| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) | ID of invitation |






<a name="services-provider-v1-InvitationStatusResponse"></a>

### InvitationStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [InvitationStatusResponse.Status](/reference/proto#services-provider-v1-InvitationStatusResponse-Status) | Status of invitation |
| status_details | [string](/reference/proto#string) | Human-readable string with details about invitation status |






<a name="services-provider-v1-Invite"></a>

### Invite



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |
| code | [string](/reference/proto#string) |  |
| created | [string](/reference/proto#string) |  |
| accepted | [string](/reference/proto#string) |  |
| expires | [string](/reference/proto#string) |  |






<a name="services-provider-v1-InviteRequest"></a>

### InviteRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| participant | [ParticipantType](/reference/proto#services-provider-v1-ParticipantType) | Type of participant being invited (individual/organization) |
| description | [string](/reference/proto#string) | Description of invitation |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) | Account details of invitee |






<a name="services-provider-v1-InviteRequest-DidCommInvitation"></a>

### InviteRequest.DidCommInvitation







<a name="services-provider-v1-InviteResponse"></a>

### InviteResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) | ID of created invitation |
| invitation_code | [string](/reference/proto#string) | Invitation Code that must be passed with the account 'SignIn' request to correlate this user with the invitation sent. |






<a name="services-provider-v1-RevokeAuthorizationRequest"></a>

### RevokeAuthorizationRequest
revoke permissions to a resource or path in the ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | email associted with the account |
| walletId | [string](/reference/proto#string) | wallet id of the account |
| resource | [string](/reference/proto#string) | resources are specified as a restful path: /{ecoId}/{resource type}/{resource id}. EcosystemId maybe ommited |
| action | [string](/reference/proto#string) | action to revoke. default is "*" (all) |






<a name="services-provider-v1-RevokeAuthorizationResponse"></a>

### RevokeAuthorizationResponse







<a name="services-provider-v1-UpdateEcosystemRequest"></a>

### UpdateEcosystemRequest
Request to update an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) | Description of the ecosystem |
| uri | [string](/reference/proto#string) | External URL associated with the organization or ecosystem entity |






<a name="services-provider-v1-UpdateEcosystemResponse"></a>

### UpdateEcosystemResponse
Response to `UpdateEcosystemRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| Ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) |  |






<a name="services-provider-v1-WebhookConfig"></a>

### WebhookConfig



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of the webhook |
| destination_url | [string](/reference/proto#string) | Destination to post webhook calls to |
| events | [string](/reference/proto#string)[] | Events the webhook is subscribed to |
| status | [string](/reference/proto#string) | Whether we are able to sucessfully send events to the webhook |





 <!-- end messages -->


<a name="services-provider-v1-InvitationStatusResponse-Status"></a>

### InvitationStatusResponse.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| Error | 0 | Onboarding resulted in error |
| InvitationSent | 1 | The participant has been invited |
| Completed | 2 | The participant has been onboarded |
| Expired | 3 | The invite has expired |



<a name="services-provider-v1-ParticipantType"></a>

### ParticipantType


| Name | Number | Description |
| ---- | ------ | ----------- |
| participant_type_individual | 0 |  |
| participant_type_organization | 1 |  |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_trust-registry_v1_trust-registry-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/trust-registry/v1/trust-registry.proto



<a name="services-trustregistry-v1-TrustRegistry"></a>

### Service - TrustRegistry


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AddFramework | [AddFrameworkRequest](/reference/proto#services-trustregistry-v1-AddFrameworkRequest) | [AddFrameworkResponse](/reference/proto#services-trustregistry-v1-AddFrameworkResponse) | Adds a trust registry defintion to the ecosystem |
| RemoveFramework | [RemoveFrameworkRequest](/reference/proto#services-trustregistry-v1-RemoveFrameworkRequest) | [RemoveFrameworkResponse](/reference/proto#services-trustregistry-v1-RemoveFrameworkResponse) |  |
| SearchRegistry | [SearchRegistryRequest](/reference/proto#services-trustregistry-v1-SearchRegistryRequest) | [SearchRegistryResponse](/reference/proto#services-trustregistry-v1-SearchRegistryResponse) |  |
| RegisterMember | [RegisterMemberRequest](/reference/proto#services-trustregistry-v1-RegisterMemberRequest) | [RegisterMemberResponse](/reference/proto#services-trustregistry-v1-RegisterMemberResponse) | Registers an authoritative issuer with a credential template |
| UnregisterMember | [UnregisterMemberRequest](/reference/proto#services-trustregistry-v1-UnregisterMemberRequest) | [UnregisterMemberResponse](/reference/proto#services-trustregistry-v1-UnregisterMemberResponse) | Removes an authoritative issuer with a credential template from the trust registry |
| GetMembershipStatus | [GetMembershipStatusRequest](/reference/proto#services-trustregistry-v1-GetMembershipStatusRequest) | [GetMembershipStatusResponse](/reference/proto#services-trustregistry-v1-GetMembershipStatusResponse) |  |
| FetchData | [FetchDataRequest](/reference/proto#services-trustregistry-v1-FetchDataRequest) | [FetchDataResponse](/reference/proto#services-trustregistry-v1-FetchDataResponse) stream |  |

 <!-- end services -->


<a name="services-trustregistry-v1-AddFrameworkRequest"></a>

### AddFrameworkRequest
Register new ecosystem governance framework


| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| name | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-AddFrameworkResponse"></a>

### AddFrameworkResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | Unique framework identifier |
| governing_authority | [string](/reference/proto#string) |  |
| trust_registry | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-FetchDataRequest"></a>

### FetchDataRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| query | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-FetchDataResponse"></a>

### FetchDataResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| response_json | [string](/reference/proto#string) |  |
| has_more_results | [bool](/reference/proto#bool) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-GetMembershipStatusRequest"></a>

### GetMembershipStatusRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| schema_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-GetMembershipStatusResponse"></a>

### GetMembershipStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [RegistrationStatus](/reference/proto#services-trustregistry-v1-RegistrationStatus) |  |






<a name="services-trustregistry-v1-GovernanceFramework"></a>

### GovernanceFramework



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| trust_registry_uri | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-RegisterMemberRequest"></a>

### RegisterMemberRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| wallet_id | [string](/reference/proto#string) |  |
| email | [string](/reference/proto#string) |  |
| schema_uri | [string](/reference/proto#string) |  |
| valid_from_utc | [uint64](/reference/proto#uint64) |  |
| valid_until_utc | [uint64](/reference/proto#uint64) |  |
| framework_id | [string](/reference/proto#string) | the id of the governance framework |






<a name="services-trustregistry-v1-RegisterMemberResponse"></a>

### RegisterMemberResponse







<a name="services-trustregistry-v1-RemoveFrameworkRequest"></a>

### RemoveFrameworkRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-RemoveFrameworkResponse"></a>

### RemoveFrameworkResponse







<a name="services-trustregistry-v1-SearchRegistryRequest"></a>

### SearchRegistryRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SELECT c from c where c.type == 'GovernanceFramework' |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-SearchRegistryResponse"></a>

### SearchRegistryResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| items_json | [string](/reference/proto#string) |  |
| has_more | [bool](/reference/proto#bool) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-UnregisterMemberRequest"></a>

### UnregisterMemberRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| wallet_id | [string](/reference/proto#string) |  |
| email | [string](/reference/proto#string) |  |
| schema_uri | [string](/reference/proto#string) |  |
| framework_id | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-UnregisterMemberResponse"></a>

### UnregisterMemberResponse






 <!-- end messages -->


<a name="services-trustregistry-v1-RegistrationStatus"></a>

### RegistrationStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| CURRENT | 0 | - the entity is currently authorized, as of time of the query. |
| EXPIRED | 1 | - entity rights have expired. |
| TERMINATED | 2 | - entity has voluntarily ceased Issuer role under the specific EGF. |
| REVOKED | 3 | - entity authority under specific EGF was terminated by the governing authority. |
| NOT_FOUND | 10 |  |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_account_v1_account-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/account/v1/account.proto



<a name="services-account-v1-Account"></a>

### Service - Account


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SignIn | [SignInRequest](/reference/proto#services-account-v1-SignInRequest) | [SignInResponse](/reference/proto#services-account-v1-SignInResponse) | Sign in to an already existing account |
| Login | [LoginRequest](/reference/proto#services-account-v1-LoginRequest) | [LoginResponse](/reference/proto#services-account-v1-LoginResponse) | Login to account. If account doesn't exist, new will be created |
| LoginConfirm | [LoginConfirmRequest](/reference/proto#services-account-v1-LoginConfirmRequest) | [LoginConfirmResponse](/reference/proto#services-account-v1-LoginConfirmResponse) | Confirm login step by responding to the challenge request |
| Info | [AccountInfoRequest](/reference/proto#services-account-v1-AccountInfoRequest) | [AccountInfoResponse](/reference/proto#services-account-v1-AccountInfoResponse) | Get account information |
| ListDevices | [ListDevicesRequest](/reference/proto#services-account-v1-ListDevicesRequest) | [ListDevicesResponse](/reference/proto#services-account-v1-ListDevicesResponse) | List all connected devices |
| RevokeDevice | [RevokeDeviceRequest](/reference/proto#services-account-v1-RevokeDeviceRequest) | [RevokeDeviceResponse](/reference/proto#services-account-v1-RevokeDeviceResponse) | Revoke device access to the account's cloud wallet |
| AuthorizeWebhook | [AuthorizeWebhookRequest](/reference/proto#services-account-v1-AuthorizeWebhookRequest) | [AuthorizeWebhookResponse](/reference/proto#services-account-v1-AuthorizeWebhookResponse) | Authorize Ecosystem to receive webhook events |

 <!-- end services -->


<a name="services-account-v1-AccountDetails"></a>

### AccountDetails
Account registration details


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Account name |
| email | [string](/reference/proto#string) | Email account |
| sms | [string](/reference/proto#string) | SMS number including country code |






<a name="services-account-v1-AccountEcosystem"></a>

### AccountEcosystem



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |
| name | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |
| uri | [string](/reference/proto#string) |  |






<a name="services-account-v1-AccountInfoRequest"></a>

### AccountInfoRequest
Request for information about the account used to make the request






<a name="services-account-v1-AccountInfoResponse"></a>

### AccountInfoResponse
Information about the account used to make the request


| Field | Type | Description |
| ----- | ---- | ----------- |
| details | [AccountDetails](/reference/proto#services-account-v1-AccountDetails) | The account details associated with the calling request context |
| ecosystems | [AccountEcosystem](/reference/proto#services-account-v1-AccountEcosystem)[] | **Deprecated.** Use `ecosystem_id` instead |
| wallet_id | [string](/reference/proto#string) | The wallet ID associated with this account |
| device_id | [string](/reference/proto#string) | The device ID associated with this account session |
| ecosystem_id | [string](/reference/proto#string) | The ecosystem ID within which this account resides |
| public_did | [string](/reference/proto#string) | The public DID associated with this account. This DID is used as "issuer" when signing verifiable credentials |
| authorized_webhooks | [string](/reference/proto#string)[] | Webhook events if any this wallet has authorized |






<a name="services-account-v1-AccountProfile"></a>

### AccountProfile
Device profile containing sensitive authentication data.
This information should be stored securely


| Field | Type | Description |
| ----- | ---- | ----------- |
| profile_type | [string](/reference/proto#string) | The type of profile, used to differentiate between protocol schemes or versions |
| auth_data | [bytes](/reference/proto#bytes) | Auth data containg information about the current device access |
| auth_token | [bytes](/reference/proto#bytes) | Secure token issued by server used to generate zero-knowledge proofs |
| protection | [TokenProtection](/reference/proto#services-account-v1-TokenProtection) | Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. |






<a name="services-account-v1-AuthorizeWebhookRequest"></a>

### AuthorizeWebhookRequest
Authorize ecosystem to receive wallet events


| Field | Type | Description |
| ----- | ---- | ----------- |
| events | [string](/reference/proto#string)[] | Events to authorize access to. Default is "*" (all events) |






<a name="services-account-v1-AuthorizeWebhookResponse"></a>

### AuthorizeWebhookResponse
Response to `AuthorizeWebhookRequest`






<a name="services-account-v1-ListDevicesRequest"></a>

### ListDevicesRequest







<a name="services-account-v1-ListDevicesResponse"></a>

### ListDevicesResponse







<a name="services-account-v1-LoginConfirmRequest"></a>

### LoginConfirmRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| challenge | [bytes](/reference/proto#bytes) | Login challenge received during the Login call |
| confirmation_code_hashed | [bytes](/reference/proto#bytes) | Confirmation code received in email or SMS hashed using Blake3 |






<a name="services-account-v1-LoginConfirmResponse"></a>

### LoginConfirmResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| profile | [AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Profile response. This profile may be protected and require unblinding/unprotection using the raw hashed code |






<a name="services-account-v1-LoginRequest"></a>

### LoginRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email account to associate with the login request |
| invitation_code | [string](/reference/proto#string) | Invitation code associated with this registration |
| ecosystem_id | [string](/reference/proto#string) | ID of Ecosystem to sign into. Ignored if `invitation_code` is passed |






<a name="services-account-v1-LoginResponse"></a>

### LoginResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| challenge | [bytes](/reference/proto#bytes) | Challenge response. Random byte sequence unique for this login request |
| profile | [AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Profile response. The login isn't challenged and the token is returned in this call. Does not require confirmation step |






<a name="services-account-v1-RevokeDeviceRequest"></a>

### RevokeDeviceRequest







<a name="services-account-v1-RevokeDeviceResponse"></a>

### RevokeDeviceResponse







<a name="services-account-v1-SignInRequest"></a>

### SignInRequest
Request for creating or signing into an account


| Field | Type | Description |
| ----- | ---- | ----------- |
| details | [AccountDetails](/reference/proto#services-account-v1-AccountDetails) | Account registration details |
| invitation_code | [string](/reference/proto#string) | Invitation code associated with this registration |
| ecosystem_id | [string](/reference/proto#string) | ID of Ecosystem to use Ignored if `invitation_code` is passed |






<a name="services-account-v1-SignInResponse"></a>

### SignInResponse
Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.


| Field | Type | Description |
| ----- | ---- | ----------- |
| confirmation_method | [ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | Indicates if confirmation of account is required. This settings is configured globally by the server administrator. |
| profile | [AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. |






<a name="services-account-v1-TokenProtection"></a>

### TokenProtection
Token protection info


| Field | Type | Description |
| ----- | ---- | ----------- |
| enabled | [bool](/reference/proto#bool) | Indicates if token is protected using a PIN, security code, HSM secret, etc. |
| method | [ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | The method used to protect the token |





 <!-- end messages -->


<a name="services-account-v1-ConfirmationMethod"></a>

### ConfirmationMethod
Confirmation method type for two-factor workflows

| Name | Number | Description |
| ---- | ------ | ----------- |
| None | 0 | No confirmation required |
| Email | 1 | Email confirmation required |
| Sms | 2 | SMS confirmation required |
| ConnectedDevice | 3 | Confirmation from a connected device is required |
| Other | 10 | Indicates third-party method of confirmation is required |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="sdk_options_v1_options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sdk/options/v1/options.proto


 <!-- end services -->


<a name="sdk-options-v1-ServiceOptions"></a>

### ServiceOptions
Configuration for Trinsic SDK Services


| Field | Type | Description |
| ----- | ---- | ----------- |
| server_endpoint | [string](/reference/proto#string) | Trinsic API endpoint. Defaults to `prod.trinsic.cloud` |
| server_port | [int32](/reference/proto#int32) | Trinsic API port; defaults to `443` |
| server_use_tls | [bool](/reference/proto#bool) | Whether TLS is enabled between SDK and Trinsic API; defaults to `true` |
| auth_token | [string](/reference/proto#string) | Authentication token for SDK calls; defaults to empty string (unauthenticated) |
| default_ecosystem | [string](/reference/proto#string) | Default ecosystem ID to use for various SDK calls; defaults to `default` |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |
