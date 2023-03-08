


# Protocol Documentation
<a name="top"></a>

This page documents the Protobuf Services and Messages which compose the Trinsic API.



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
| auth_token | [string](/reference/proto#string) | Authentication token for SDK calls; defaults to empty string (unauthenticated)

Default ecosystem ID to use for various SDK calls; defaults to `default` string default_ecosystem = 5; |





 <!-- end messages -->

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
| Login | [LoginRequest](/reference/proto#services-account-v1-LoginRequest) | [LoginResponse](/reference/proto#services-account-v1-LoginResponse) | Begin login flow for specified account, creating one if it does not already exist |
| LoginConfirm | [LoginConfirmRequest](/reference/proto#services-account-v1-LoginConfirmRequest) | [LoginConfirmResponse](/reference/proto#services-account-v1-LoginConfirmResponse) | Finalize login flow with two-factor confirmation code |
| Info | [AccountInfoRequest](/reference/proto#services-account-v1-AccountInfoRequest) | [AccountInfoResponse](/reference/proto#services-account-v1-AccountInfoResponse) | Get account information |
| AuthorizeWebhook | [AuthorizeWebhookRequest](/reference/proto#services-account-v1-AuthorizeWebhookRequest) | [AuthorizeWebhookResponse](/reference/proto#services-account-v1-AuthorizeWebhookResponse) | Authorize Ecosystem to receive webhook events |

 <!-- end services -->


<a name="services-account-v1-AccountDetails"></a>

### AccountDetails
Account registration details


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Account name |
| email | [string](/reference/proto#string) | Email address of account |
| sms | [string](/reference/proto#string) | SMS number including country code |






<a name="services-account-v1-AccountEcosystem"></a>

### AccountEcosystem
Deprecated


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
| public_did | [string](/reference/proto#string) | The public DID associated with this account. This DID is used as the `issuer` when signing verifiable credentials |






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
Request to authorize Ecosystem provider to receive webhooks for events
which occur on this wallet.


| Field | Type | Description |
| ----- | ---- | ----------- |
| events | [string](/reference/proto#string)[] | Events to authorize access to. Default is "*" (all events) |






<a name="services-account-v1-AuthorizeWebhookResponse"></a>

### AuthorizeWebhookResponse
Response to `AuthorizeWebhookRequest`






<a name="services-account-v1-LoginConfirmRequest"></a>

### LoginConfirmRequest
Request to finalize login flow


| Field | Type | Description |
| ----- | ---- | ----------- |
| challenge | [bytes](/reference/proto#bytes) | Challenge received from `Login` |
| confirmation_code_hashed | [bytes](/reference/proto#bytes) | Two-factor confirmation code sent to account email or phone, hashed using Blake3. Our SDKs will handle this hashing process for you. |






<a name="services-account-v1-LoginConfirmResponse"></a>

### LoginConfirmResponse
Response to `LoginConfirmRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| profile | [AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Profile response; must be unprotected using unhashed confirmation code. Our SDKs will handle this process for you, and return to you an authentication token string. |






<a name="services-account-v1-LoginRequest"></a>

### LoginRequest
Request to begin login flow


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of account. If unspecified, an anonymous account will be created. |
| invitation_code | [string](/reference/proto#string) | **Deprecated.** DEPRECATED, will be removed April 1st 2023 Invitation code associated with this registration |
| ecosystem_id | [string](/reference/proto#string) | ID of Ecosystem to sign into. Ignored if `invitation_code` is passed. |






<a name="services-account-v1-LoginResponse"></a>

### LoginResponse
Response to `LoginRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| challenge | [bytes](/reference/proto#bytes) | Random byte sequence unique to this login request. If present, two-factor confirmation of login is required. Must be sent back, unaltered, in `LoginConfirm`. |
| profile | [AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account profile response. If present, no confirmation of login is required. |






<a name="services-account-v1-SignInRequest"></a>

### SignInRequest
Request for creating or signing into an account


| Field | Type | Description |
| ----- | ---- | ----------- |
| details | [AccountDetails](/reference/proto#services-account-v1-AccountDetails) | Account registration details |
| invitation_code | [string](/reference/proto#string) | **Deprecated.** DEPRECATED, will be removed April 1st 2023 Invitation code associated with this registration |
| ecosystem_id | [string](/reference/proto#string) | ID of Ecosystem to use Ignored if `invitation_code` is passed |






<a name="services-account-v1-SignInResponse"></a>

### SignInResponse
Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.


| Field | Type | Description |
| ----- | ---- | ----------- |
| confirmation_method | [ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | Indicates if confirmation of account is required. |
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
| Other | 10 | Third-party method of confirmation is required |


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
| Search | [SearchRequest](/reference/proto#services-universalwallet-v1-SearchRequest) | [SearchResponse](/reference/proto#services-universalwallet-v1-SearchResponse) | Search the wallet using a SQL syntax |
| InsertItem | [InsertItemRequest](/reference/proto#services-universalwallet-v1-InsertItemRequest) | [InsertItemResponse](/reference/proto#services-universalwallet-v1-InsertItemResponse) | Insert an item into the wallet |
| UpdateItem | [UpdateItemRequest](/reference/proto#services-universalwallet-v1-UpdateItemRequest) | [UpdateItemResponse](/reference/proto#services-universalwallet-v1-UpdateItemResponse) | Update an item in the wallet |
| DeleteItem | [DeleteItemRequest](/reference/proto#services-universalwallet-v1-DeleteItemRequest) | [DeleteItemResponse](/reference/proto#services-universalwallet-v1-DeleteItemResponse) | Delete an item from the wallet permanently |
| DeleteWallet | [DeleteWalletRequest](/reference/proto#services-universalwallet-v1-DeleteWalletRequest) | [DeleteWalletResponse](/reference/proto#services-universalwallet-v1-DeleteWalletResponse) | Delete a wallet and its credentials |

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






<a name="services-universalwallet-v1-DeleteWalletRequest"></a>

### DeleteWalletRequest
Request to delete a wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of account to delete. Mutually exclusive with `walletId` and `didUri`. |
| wallet_id | [string](/reference/proto#string) | Wallet ID of account to delete. Mutually exclusive with `email` and `didUri`. |
| did_uri | [string](/reference/proto#string) | DID URI of the account to delete. Mutually exclusive with `email` and `walletId`. |






<a name="services-universalwallet-v1-DeleteWalletResponse"></a>

### DeleteWalletResponse
Response to `DeleteWalletRequest`. Empty payload.






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



<a name="services_verifiable-credentials_v1_verifiable-credentials-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/v1/verifiable-credentials.proto



<a name="services-verifiablecredentials-v1-VerifiableCredential"></a>

### Service - VerifiableCredential


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Issue | [IssueRequest](/reference/proto#services-verifiablecredentials-v1-IssueRequest) | [IssueResponse](/reference/proto#services-verifiablecredentials-v1-IssueResponse) | Sign and issue a verifiable credential from a submitted document. The document must be a valid JSON-LD document. |
| IssueFromTemplate | [IssueFromTemplateRequest](/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateRequest) | [IssueFromTemplateResponse](/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateResponse) | Sign and issue a verifiable credential from a pre-defined template. This process will also add schema validation and revocation registry values to the credential. |
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
| credential_status_id | [string](/reference/proto#string) | Credential Status ID to check. This is not the same as the credential's ID. |






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
| reveal_template | [RevealTemplateAttributes](/reference/proto#services-verifiablecredentials-v1-RevealTemplateAttributes) | Information about what sections of the document to reveal |
| item_id | [string](/reference/proto#string) | ID of wallet item stored in a Trinsic cloud wallet |
| document_json | [string](/reference/proto#string) | A valid JSON-LD Verifiable Credential document string with an unbound signature. The proof will be derived from this document directly. The document will not be stored in the wallet. |
| use_verifiable_presentation | [bool](/reference/proto#bool) | Wrap the output in a verifiable presentation |
| nonce | [bytes](/reference/proto#bytes) | Nonce value used to derive the proof. If not specified, a random nonce will be generated. This value may be represented in base64 format in the proof model. |






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
| save_copy | [bool](/reference/proto#bool) | Save a copy of the issued credential to this user's wallet. This copy will only contain the credential data, but not the secret proof value. Issuers may use this data to keep track of the details for revocation status. |






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






<a name="services-verifiablecredentials-v1-RevealTemplateAttributes"></a>

### RevealTemplateAttributes



| Field | Type | Description |
| ----- | ---- | ----------- |
| template_attributes | [string](/reference/proto#string)[] | A list of document attributes to reveal. If unset, all attributes will be returned. |






<a name="services-verifiablecredentials-v1-SendRequest"></a>

### SendRequest
Request to send a document to another user's wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of user to send item to |
| wallet_id | [string](/reference/proto#string) | Wallet ID of the recipient within the ecosystem |
| did_uri | [string](/reference/proto#string) | DID URI of the recipient |
| send_notification | [bool](/reference/proto#bool) | Send email notification that credential has been sent to a wallet |
| document_json | [string](/reference/proto#string) | JSON document to send to recipient |






<a name="services-verifiablecredentials-v1-SendResponse"></a>

### SendResponse
Response to `SendRequest`






<a name="services-verifiablecredentials-v1-UpdateStatusRequest"></a>

### UpdateStatusRequest
Request to update a credential's revocation status


| Field | Type | Description |
| ----- | ---- | ----------- |
| credential_status_id | [string](/reference/proto#string) | Credential Status ID to update. This is not the same as the credential's ID. |
| revoked | [bool](/reference/proto#bool) | New revocation status of credential |






<a name="services-verifiablecredentials-v1-UpdateStatusResponse"></a>

### UpdateStatusResponse
Response to `UpdateStatusRequest`






<a name="services-verifiablecredentials-v1-ValidationMessage"></a>

### ValidationMessage
Result of a validation check on a proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| is_valid | [bool](/reference/proto#bool) | Whether this validation check passed |
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
| is_valid | [bool](/reference/proto#bool) | Whether all validations in `validation_results` passed |
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



<a name="services_verifiable-credentials_templates_v1_templates-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/templates/v1/templates.proto



<a name="services-verifiablecredentials-templates-v1-CredentialTemplates"></a>

### Service - CredentialTemplates


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [CreateCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest) | [CreateCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse) | Create a credential template in the current ecosystem |
| Get | [GetCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest) | [GetCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse) | Fetch a credential template by ID |
| Update | [UpdateCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest) | [UpdateCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-UpdateCredentialTemplateResponse) | Update metadata of a template |
| List | [ListCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest) | [ListCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse) | Search credential templates using SQL, returning strongly-typed template data |
| Search | [SearchCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest) | [SearchCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse) | Search credential templates using SQL, returning raw JSON data |
| Delete | [DeleteCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest) | [DeleteCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse) | Delete a credential template from the current ecosystem by ID |

 <!-- end services -->


<a name="services-verifiablecredentials-templates-v1-AppleWalletOptions"></a>

### AppleWalletOptions
Configuration options for Apple Wallet when


| Field | Type | Description |
| ----- | ---- | ----------- |
| background_color | [string](/reference/proto#string) | Background color, in hex format, of credential when stored in an Apple Wallet. |
| foreground_color | [string](/reference/proto#string) | Foreground color, in hex format, of credential when stored in an Apple Wallet. |
| label_color | [string](/reference/proto#string) | Label color, in hex format, of credential when stored in an Apple Wallet. |
| primary_field | [string](/reference/proto#string) | The ID of the template field which should be used as the primary field of a credential. |
| secondary_fields | [AppleWalletOptions.SecondaryFieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-AppleWalletOptions-SecondaryFieldsEntry)[] | The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name. |
| auxiliary_fields | [AppleWalletOptions.AuxiliaryFieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-AppleWalletOptions-AuxiliaryFieldsEntry)[] | The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name. |






<a name="services-verifiablecredentials-templates-v1-AppleWalletOptions-AuxiliaryFieldsEntry"></a>

### AppleWalletOptions.AuxiliaryFieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [int32](/reference/proto#int32) |  |
| value | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-AppleWalletOptions-SecondaryFieldsEntry"></a>

### AppleWalletOptions.SecondaryFieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [int32](/reference/proto#int32) |  |
| value | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest"></a>

### CreateCredentialTemplateRequest
Request to create a new template


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Name of new template. Must be a unique identifier within its ecosystem. |
| fields | [CreateCredentialTemplateRequest.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry)[] | Fields which compose the template |
| allow_additional_fields | [bool](/reference/proto#bool) | Whether credentials may be issued against this template which have fields not specified in `fields` |
| title | [string](/reference/proto#string) | Human-readable name of template |
| description | [string](/reference/proto#string) | Human-readable description of template |
| field_ordering | [CreateCredentialTemplateRequest.FieldOrderingEntry](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldOrderingEntry)[] | Optional map describing how to order and categorize the fields within the template. The key of this map is the field `name`. If not provided, this will be auto-generated. |
| apple_wallet_options | [AppleWalletOptions](/reference/proto#services-verifiablecredentials-templates-v1-AppleWalletOptions) | Options for rendering the template in Apple Wallet |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldOrderingEntry"></a>

### CreateCredentialTemplateRequest.FieldOrderingEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [FieldOrdering](/reference/proto#services-verifiablecredentials-templates-v1-FieldOrdering) |  |






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






<a name="services-verifiablecredentials-templates-v1-FieldOrdering"></a>

### FieldOrdering
Ordering information for a template field


| Field | Type | Description |
| ----- | ---- | ----------- |
| order | [int32](/reference/proto#int32) | The order of the field; must be unique within the Template. Fields are sorted by order ascending when displaying a credential. Field orders must be contiguous from `0` to the number of fields minus 1. |
| section | [string](/reference/proto#string) | The human-readable name of the section this field appears in; used to group together fields when displaying a credential. Sections must be contiguous with respect to `order`. |






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
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of results via `SearchCredentialTemplatesRequest` |






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
| context_uri | [string](/reference/proto#string) | **Deprecated.** URI pointing to template JSON-LD context document |
| ecosystem_id | [string](/reference/proto#string) | ID of ecosystem in which template resides |
| type | [string](/reference/proto#string) | Template type (`VerifiableCredential`) |
| created_by | [string](/reference/proto#string) | ID of template creator |
| date_created | [string](/reference/proto#string) | Date when template was created as ISO 8601 utc string |
| title | [string](/reference/proto#string) | Human-readable template title |
| description | [string](/reference/proto#string) | Human-readable template description |
| field_ordering | [TemplateData.FieldOrderingEntry](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData-FieldOrderingEntry)[] | Map describing how to order and categorize the fields within the template. The key of this map is the field `name`. |
| apple_wallet_options | [AppleWalletOptions](/reference/proto#services-verifiablecredentials-templates-v1-AppleWalletOptions) | Options for rendering the template in Apple Wallet |






<a name="services-verifiablecredentials-templates-v1-TemplateData-FieldOrderingEntry"></a>

### TemplateData.FieldOrderingEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [FieldOrdering](/reference/proto#services-verifiablecredentials-templates-v1-FieldOrdering) |  |






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
| title | [string](/reference/proto#string) | Human-readable name of the field |
| description | [string](/reference/proto#string) | Human-readable description of the field |
| optional | [bool](/reference/proto#bool) | Whether this field may be omitted when a credential is issued against the template |
| type | [FieldType](/reference/proto#services-verifiablecredentials-templates-v1-FieldType) | The type of the field |
| annotations | [TemplateField.AnnotationsEntry](/reference/proto#services-verifiablecredentials-templates-v1-TemplateField-AnnotationsEntry)[] | **Deprecated.** Do not use. Annotations for the field that may be used to add additional information. |
| uri_data | [UriFieldData](/reference/proto#services-verifiablecredentials-templates-v1-UriFieldData) | How to deal with this URI field when rendering credential. Only use if `type` is `URI`. |






<a name="services-verifiablecredentials-templates-v1-TemplateField-AnnotationsEntry"></a>

### TemplateField.AnnotationsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-TemplateFieldPatch"></a>

### TemplateFieldPatch
A patch to apply to an existing template field


| Field | Type | Description |
| ----- | ---- | ----------- |
| title | [string](/reference/proto#string) | Human-readable name of the field |
| description | [string](/reference/proto#string) | Human-readable description of the field |
| uri_data | [UriFieldData](/reference/proto#services-verifiablecredentials-templates-v1-UriFieldData) | How to deal with this URI field when rendering credential. Only use if `type` is `URI`. |






<a name="services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest"></a>

### UpdateCredentialTemplateRequest
Request to update display information for a template


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of Template to update |
| title | [string](/reference/proto#string) | New human-readable title of Template |
| description | [string](/reference/proto#string) | New human-readable description of Template |
| fields | [UpdateCredentialTemplateRequest.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest-FieldsEntry)[] | Fields to update within the Template |
| field_ordering | [UpdateCredentialTemplateRequest.FieldOrderingEntry](/reference/proto#services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest-FieldOrderingEntry)[] | New field ordering options. See documentation for template creation for usage information. |
| apple_wallet_options | [AppleWalletOptions](/reference/proto#services-verifiablecredentials-templates-v1-AppleWalletOptions) | New Apple Wallet configuration |






<a name="services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest-FieldOrderingEntry"></a>

### UpdateCredentialTemplateRequest.FieldOrderingEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [FieldOrdering](/reference/proto#services-verifiablecredentials-templates-v1-FieldOrdering) |  |






<a name="services-verifiablecredentials-templates-v1-UpdateCredentialTemplateRequest-FieldsEntry"></a>

### UpdateCredentialTemplateRequest.FieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [TemplateFieldPatch](/reference/proto#services-verifiablecredentials-templates-v1-TemplateFieldPatch) |  |






<a name="services-verifiablecredentials-templates-v1-UpdateCredentialTemplateResponse"></a>

### UpdateCredentialTemplateResponse
Response to `UpdateCredentialTemplateRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| updated_template | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) | The Template after the update has been applied |






<a name="services-verifiablecredentials-templates-v1-UriFieldData"></a>

### UriFieldData
Data pertaining to a URI Field


| Field | Type | Description |
| ----- | ---- | ----------- |
| mime_type | [string](/reference/proto#string) | Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png"). Defaults to "application/octet-stream". |
| render_method | [UriRenderMethod](/reference/proto#services-verifiablecredentials-templates-v1-UriRenderMethod) | How to display the URI value when rendering a credential. |





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
| URI | 5 |  |



<a name="services-verifiablecredentials-templates-v1-UriRenderMethod"></a>

### UriRenderMethod
How to display a URI value when rendering a credential.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TEXT | 0 | Display URI as text |
| LINK | 1 | Display URI as a clickable link |
| INLINE_IMAGE | 2 | Display URI as an inline image. Only takes effect if the template field's MIME Type is an image type. |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_trust-registry_v1_trust-registry-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/trust-registry/v1/trust-registry.proto



<a name="services-trustregistry-v1-TrustRegistry"></a>

### Service - TrustRegistry


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AddFramework | [AddFrameworkRequest](/reference/proto#services-trustregistry-v1-AddFrameworkRequest) | [AddFrameworkResponse](/reference/proto#services-trustregistry-v1-AddFrameworkResponse) | Add a governance framework to the ecosystem |
| RemoveFramework | [RemoveFrameworkRequest](/reference/proto#services-trustregistry-v1-RemoveFrameworkRequest) | [RemoveFrameworkResponse](/reference/proto#services-trustregistry-v1-RemoveFrameworkResponse) | Remove a governance framework from the ecosystem |
| SearchRegistry | [SearchRegistryRequest](/reference/proto#services-trustregistry-v1-SearchRegistryRequest) | [SearchRegistryResponse](/reference/proto#services-trustregistry-v1-SearchRegistryResponse) | Search the ecosystem's governance frameworks |
| RegisterMember | [RegisterMemberRequest](/reference/proto#services-trustregistry-v1-RegisterMemberRequest) | [RegisterMemberResponse](/reference/proto#services-trustregistry-v1-RegisterMemberResponse) | Register an authoritative issuer for a credential schema |
| UnregisterMember | [UnregisterMemberRequest](/reference/proto#services-trustregistry-v1-UnregisterMemberRequest) | [UnregisterMemberResponse](/reference/proto#services-trustregistry-v1-UnregisterMemberResponse) | Removes an authoritative issuer for a credential schema from the trust registry |
| GetMembershipStatus | [GetMembershipStatusRequest](/reference/proto#services-trustregistry-v1-GetMembershipStatusRequest) | [GetMembershipStatusResponse](/reference/proto#services-trustregistry-v1-GetMembershipStatusResponse) | Fetch the membership status of an issuer for a given credential schema in a trust registry |
| FetchData | [FetchDataRequest](/reference/proto#services-trustregistry-v1-FetchDataRequest) | [FetchDataResponse](/reference/proto#services-trustregistry-v1-FetchDataResponse) stream | Not implemented. |

 <!-- end services -->


<a name="services-trustregistry-v1-AddFrameworkRequest"></a>

### AddFrameworkRequest
Request to register a new ecosystem governance framework in the current ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) | URI of governance framework organization |
| name | [string](/reference/proto#string) | Name of governance framework organization |
| description | [string](/reference/proto#string) | Description of governance framework |






<a name="services-trustregistry-v1-AddFrameworkResponse"></a>

### AddFrameworkResponse
Response to `AddFrameworkRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | Unique framework identifier |
| governing_authority | [string](/reference/proto#string) | DID URI of Trinsic account which created the governance framework |
| trust_registry | [string](/reference/proto#string) | URN of trust registry for governance framework |






<a name="services-trustregistry-v1-FetchDataRequest"></a>

### FetchDataRequest
Not implemented.


| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| query | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-FetchDataResponse"></a>

### FetchDataResponse
Not implemented.


| Field | Type | Description |
| ----- | ---- | ----------- |
| response_json | [string](/reference/proto#string) |  |
| has_more_results | [bool](/reference/proto#bool) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-GetMembershipStatusRequest"></a>

### GetMembershipStatusRequest
Request to fetch membership status in governance framework for a specific credential schema.


| Field | Type | Description |
| ----- | ---- | ----------- |
| framework_id | [string](/reference/proto#string) | The ID of the ecosystem governance framework. This ID may be found in the 'trustRegistry' field in the verifiable credential model |
| did_uri | [string](/reference/proto#string) | DID URI of member |
| schema_uri | [string](/reference/proto#string) | URI of credential schema associated with membership |






<a name="services-trustregistry-v1-GetMembershipStatusResponse"></a>

### GetMembershipStatusResponse
Response to `GetMembershipStatusRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [RegistrationStatus](/reference/proto#services-trustregistry-v1-RegistrationStatus) | Status of member for given credential schema |






<a name="services-trustregistry-v1-GovernanceFramework"></a>

### GovernanceFramework
Ecosystem Governance Framework


| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) | URI of governance framework organization |
| trust_registry_uri | [string](/reference/proto#string) | URI of trust registry associated with governance framework |
| description | [string](/reference/proto#string) | Description of governance framework |






<a name="services-trustregistry-v1-RegisterMemberRequest"></a>

### RegisterMemberRequest
Request to register a member as a valid issuer of a specific credential schema.
Only one of `did_uri`, `wallet_id`, or `email` may be specified.


| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) | DID URI of member to register |
| wallet_id | [string](/reference/proto#string) | Trinsic Wallet ID of member to register |
| email | [string](/reference/proto#string) | Email address of member to register. Must be associated with an existing Trinsic account. |
| schema_uri | [string](/reference/proto#string) | URI of credential schema to register member as authorized issuer of |
| valid_from_utc | [uint64](/reference/proto#uint64) | Unix Timestamp member is valid from. Member will not be considered valid before this timestamp. |
| valid_until_utc | [uint64](/reference/proto#uint64) | Unix Timestamp member is valid until. Member will not be considered valid after this timestamp. |
| framework_id | [string](/reference/proto#string) | ID of the governance framework that member is being added to |






<a name="services-trustregistry-v1-RegisterMemberResponse"></a>

### RegisterMemberResponse
Response to `RegisterMemberRequest`






<a name="services-trustregistry-v1-RemoveFrameworkRequest"></a>

### RemoveFrameworkRequest
Request to remove a governance framework from the current ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of governance framework to remove |






<a name="services-trustregistry-v1-RemoveFrameworkResponse"></a>

### RemoveFrameworkResponse
Response to `RemoveFrameworkRequest`






<a name="services-trustregistry-v1-SearchRegistryRequest"></a>

### SearchRegistryRequest
Request to search all governance frameworks within ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SQL query to execute against frameworks. Example: `SELECT c from c where c.type == 'GovernanceFramework'` |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of results, from previous `SearchRegistryResponse` |






<a name="services-trustregistry-v1-SearchRegistryResponse"></a>

### SearchRegistryResponse
Response to `SearchRegistryRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| items_json | [string](/reference/proto#string) | JSON string containing array of resultant objects |
| has_more | [bool](/reference/proto#bool) | Whether more data is available to fetch for query |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of results via `SearchRegistryRequest` |






<a name="services-trustregistry-v1-UnregisterMemberRequest"></a>

### UnregisterMemberRequest
Request to unregister a member as a valid issuer of a specific credential schema.
Only one of `did_uri`, `wallet_id`, or `email` may be specified.


| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) | DID URI of member to unregister |
| wallet_id | [string](/reference/proto#string) | Trinsic Wallet ID of member to unregister |
| email | [string](/reference/proto#string) | Email address of member to unregister. Must be associated with an existing Trinsic account. |
| schema_uri | [string](/reference/proto#string) | URI of credential schema to unregister member as authorized issuer of |
| framework_id | [string](/reference/proto#string) | ID of the governance framework that member is being removed from |






<a name="services-trustregistry-v1-UnregisterMemberResponse"></a>

### UnregisterMemberResponse
Response to `UnregisterMemberRequest`





 <!-- end messages -->


<a name="services-trustregistry-v1-RegistrationStatus"></a>

### RegistrationStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| CURRENT | 0 | Member is currently authorized, as of the time of the query |
| EXPIRED | 1 | Member's authorization has expired |
| TERMINATED | 2 | Member has voluntarily ceased Issuer role under the specific EGF |
| REVOKED | 3 | Member authority under specific EGF was terminated by the governing authority |
| NOT_FOUND | 10 | Member is not associated with given credential schema in the EGF |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_file-management_v1_file-management-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/file-management/v1/file-management.proto



<a name="services-filemanagement-v1-FileManagement"></a>

### Service - FileManagement


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| UploadFile | [UploadFileRequest](/reference/proto#services-filemanagement-v1-UploadFileRequest) | [UploadFileResponse](/reference/proto#services-filemanagement-v1-UploadFileResponse) | Upload a file to Trinsic's CDN |
| GetFile | [GetFileRequest](/reference/proto#services-filemanagement-v1-GetFileRequest) | [GetFileResponse](/reference/proto#services-filemanagement-v1-GetFileResponse) | Fetch information about a file by its ID |
| DeleteFile | [DeleteFileRequest](/reference/proto#services-filemanagement-v1-DeleteFileRequest) | [DeleteFileResponse](/reference/proto#services-filemanagement-v1-DeleteFileResponse) | Delete a file by its ID |
| ListFiles | [ListFilesRequest](/reference/proto#services-filemanagement-v1-ListFilesRequest) | [ListFilesResponse](/reference/proto#services-filemanagement-v1-ListFilesResponse) | List files the calling account has uploaded |
| GetStorageStats | [GetStorageStatsRequest](/reference/proto#services-filemanagement-v1-GetStorageStatsRequest) | [GetStorageStatsResponse](/reference/proto#services-filemanagement-v1-GetStorageStatsResponse) | Get statistics about files uploaded by the calling account |

 <!-- end services -->


<a name="services-filemanagement-v1-DeleteFileRequest"></a>

### DeleteFileRequest
Request to delete a file from Trinsic's CDN by ID


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of file to delete |






<a name="services-filemanagement-v1-DeleteFileResponse"></a>

### DeleteFileResponse
Response to `DeleteFileRequest`. Empty payload.






<a name="services-filemanagement-v1-File"></a>

### File
Contains information about a file stored in Trinsic's CDN


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of file, generated randomly by Trinsic on upload |
| uploader_id | [string](/reference/proto#string) | Wallet ID of uploader |
| size | [uint32](/reference/proto#uint32) | Size, in bytes, of file |
| mime_type | [string](/reference/proto#string) | Uploader-provided MIME type of file |
| uploaded | [string](/reference/proto#string) | ISO 8601 timestamp of when file was uploaded to Trinsic |
| url | [string](/reference/proto#string) | CDN URL of file |






<a name="services-filemanagement-v1-GetFileRequest"></a>

### GetFileRequest
Request to fetch information about a stored file


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | ID of file to fetch |






<a name="services-filemanagement-v1-GetFileResponse"></a>

### GetFileResponse
Response to `GetFileRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| file | [File](/reference/proto#services-filemanagement-v1-File) | File specified by `id` parameter of `GetFileRequest`. |






<a name="services-filemanagement-v1-GetStorageStatsRequest"></a>

### GetStorageStatsRequest
Request to get statistics about files uploaded by this account






<a name="services-filemanagement-v1-GetStorageStatsResponse"></a>

### GetStorageStatsResponse
Response to `GetStorageStatsRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| stats | [StorageStats](/reference/proto#services-filemanagement-v1-StorageStats) | Statistics about files uploaded by the calling account |






<a name="services-filemanagement-v1-ListFilesRequest"></a>

### ListFilesRequest
Request to list files


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | Query to search with. If not specified, will return the most recent 100 files. |
| continuation_token | [string](/reference/proto#string) | Token provided by previous `ListFilesRequest` if more data is available for query |






<a name="services-filemanagement-v1-ListFilesResponse"></a>

### ListFilesResponse
Response to `ListFilesRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| files | [File](/reference/proto#services-filemanagement-v1-File)[] | Files found by query |
| has_more_results | [bool](/reference/proto#bool) | Whether more results are available for this query via `continuation_token` |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of resuts via `ListFilesRequest` |






<a name="services-filemanagement-v1-StorageStats"></a>

### StorageStats
Represents aggregate statistics of all files uploaded by a single issuer


| Field | Type | Description |
| ----- | ---- | ----------- |
| num_files | [uint32](/reference/proto#uint32) | Number of files uploaded by this account |
| total_size | [uint64](/reference/proto#uint64) | Sum total size of all files, in bytes |






<a name="services-filemanagement-v1-UploadFileRequest"></a>

### UploadFileRequest
Request to upload a file to Trinsic's CDN


| Field | Type | Description |
| ----- | ---- | ----------- |
| contents | [bytes](/reference/proto#bytes) | Raw content of file |
| mime_type | [string](/reference/proto#string) | MIME type describing file contents |






<a name="services-filemanagement-v1-UploadFileResponse"></a>

### UploadFileResponse
Response to `UploadFileRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| uploaded_file | [File](/reference/proto#services-filemanagement-v1-File) | Information about newly-uploaded file |





 <!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_options_field-options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/options/field-options.proto


 <!-- end services -->


<a name="services-options-AnnotationOption"></a>

### AnnotationOption



| Field | Type | Description |
| ----- | ---- | ----------- |
| active | [bool](/reference/proto#bool) | Is this annotation active |
| message | [string](/reference/proto#string) | Custom annotation message to provide |






<a name="services-options-SdkTemplateOption"></a>

### SdkTemplateOption



| Field | Type | Description |
| ----- | ---- | ----------- |
| anonymous | [bool](/reference/proto#bool) | Whether the service endpoint allows anonymous (no auth token necessary) authentication This is used by the `protoc-gen-trinsic-sdk` plugin for metadata. |
| ignore | [bool](/reference/proto#bool) | Whether the SDK template generator should ignore this method. This method will be wrapped manually. |
| no_arguments | [bool](/reference/proto#bool) | Whether the SDK template generator should generate this method without arguments, eg ProviderService.GetEcosystemInfo() where the request object is empty |
| experimental | [AnnotationOption](/reference/proto#services-options-AnnotationOption) | This endpoint is experimental. Consider it in beta, so documentation may be incomplete or incorrect. |
| deprecated | [AnnotationOption](/reference/proto#services-options-AnnotationOption) | This endpoint is deprecated. It will be removed in the future. |





 <!-- end messages -->

 <!-- end enums -->


<a name="services_options_field-options-proto-extensions"></a>

### File-level Extensions
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
| optional | bool | .google.protobuf.FieldOptions | 60000 | Whether field is optional in Trinsic's backend. This is not the same as an `optional` protobuf label; it only impacts documentation generation for the field. |
| sdk_template_option | SdkTemplateOption | .google.protobuf.MethodOptions | 60001 |  |

 <!-- end HasExtensions -->



<a name="services_provider_v1_access-management-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/provider/v1/access-management.proto



<a name="services-provider-v1-AccessManagement"></a>

### Service - AccessManagement
Access Management service provides methods to manage access to ecosystem resources
such by assigning roles and permissions to wallet accounts

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AddRoleAssignment | [AddRoleAssignmentRequest](/reference/proto#services-provider-v1-AddRoleAssignmentRequest) | [AddRoleAssignmentResponse](/reference/proto#services-provider-v1-AddRoleAssignmentResponse) | Adds a role assignment to an account |
| RemoveRoleAssignment | [RemoveRoleAssignmentRequest](/reference/proto#services-provider-v1-RemoveRoleAssignmentRequest) | [RemoveRoleAssignmentResponse](/reference/proto#services-provider-v1-RemoveRoleAssignmentResponse) | Removes a role assignment from the account |
| ListRoleAssignments | [ListRoleAssignmentsRequest](/reference/proto#services-provider-v1-ListRoleAssignmentsRequest) | [ListRoleAssignmentsResponse](/reference/proto#services-provider-v1-ListRoleAssignmentsResponse) | List the role assignments for the given account |
| ListAvailableRoles | [ListAvailableRolesRequest](/reference/proto#services-provider-v1-ListAvailableRolesRequest) | [ListAvailableRolesResponse](/reference/proto#services-provider-v1-ListAvailableRolesResponse) | List the roles available in the ecosystem |

 <!-- end services -->


<a name="services-provider-v1-AddRoleAssignmentRequest"></a>

### AddRoleAssignmentRequest
Role management


| Field | Type | Description |
| ----- | ---- | ----------- |
| role | [string](/reference/proto#string) | Role to assign |
| email | [string](/reference/proto#string) | Email address of account to assign role. Mutually exclusive with `walletId` and `didUri`. |
| wallet_id | [string](/reference/proto#string) | Wallet ID of account to assign role to. Mutually exclusive with `email` and `didUri`. |
| did_uri | [string](/reference/proto#string) | DID URI of the account to assign role. Mutually exclusive with `email` and `walletId`. |






<a name="services-provider-v1-AddRoleAssignmentResponse"></a>

### AddRoleAssignmentResponse







<a name="services-provider-v1-ListAvailableRolesRequest"></a>

### ListAvailableRolesRequest
Request to fetch the available roles in the current ecosystem






<a name="services-provider-v1-ListAvailableRolesResponse"></a>

### ListAvailableRolesResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| roles | [string](/reference/proto#string)[] | List of roles |






<a name="services-provider-v1-ListRoleAssignmentsRequest"></a>

### ListRoleAssignmentsRequest
Request to fetch the list of roles assigned to the current account


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of account to list roles. Mutually exclusive with `walletId` and `didUri`. |
| wallet_id | [string](/reference/proto#string) | Wallet ID of account to list roles. Mutually exclusive with `email` and `didUri`. |
| did_uri | [string](/reference/proto#string) | DID URI of the account to list roles. Mutually exclusive with `email` and `walletId`. |






<a name="services-provider-v1-ListRoleAssignmentsResponse"></a>

### ListRoleAssignmentsResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| roles | [string](/reference/proto#string)[] | List of roles |






<a name="services-provider-v1-RemoveRoleAssignmentRequest"></a>

### RemoveRoleAssignmentRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| role | [string](/reference/proto#string) | Role to unassign |
| email | [string](/reference/proto#string) | Email address of account to unassign role. Mutually exclusive with `walletId` and `didUri`. |
| wallet_id | [string](/reference/proto#string) | Wallet ID of account to unassign role. Mutually exclusive with `email` and `didUri`. |
| did_uri | [string](/reference/proto#string) | DID URI of the account to unassign role. Mutually exclusive with `email` and `walletId`. |






<a name="services-provider-v1-RemoveRoleAssignmentResponse"></a>

### RemoveRoleAssignmentResponse






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
| AddWebhook | [AddWebhookRequest](/reference/proto#services-provider-v1-AddWebhookRequest) | [AddWebhookResponse](/reference/proto#services-provider-v1-AddWebhookResponse) | Add a webhook endpoint to the ecosystem |
| DeleteWebhook | [DeleteWebhookRequest](/reference/proto#services-provider-v1-DeleteWebhookRequest) | [DeleteWebhookResponse](/reference/proto#services-provider-v1-DeleteWebhookResponse) | Delete a webhook endpoint from the ecosystem |
| EcosystemInfo | [EcosystemInfoRequest](/reference/proto#services-provider-v1-EcosystemInfoRequest) | [EcosystemInfoResponse](/reference/proto#services-provider-v1-EcosystemInfoResponse) | Get ecosystem information |
| GetPublicEcosystemInfo | [GetPublicEcosystemInfoRequest](/reference/proto#services-provider-v1-GetPublicEcosystemInfoRequest) | [GetPublicEcosystemInfoResponse](/reference/proto#services-provider-v1-GetPublicEcosystemInfoResponse) | Get public ecosystem information about *any* ecosystem |
| Invite | [InviteRequest](/reference/proto#services-provider-v1-InviteRequest) | [InviteResponse](/reference/proto#services-provider-v1-InviteResponse) | Invite a user to the ecosystem |
| InvitationStatus | [InvitationStatusRequest](/reference/proto#services-provider-v1-InvitationStatusRequest) | [InvitationStatusResponse](/reference/proto#services-provider-v1-InvitationStatusResponse) | Check the status of an invitation |
| GetOberonKey | [GetOberonKeyRequest](/reference/proto#services-provider-v1-GetOberonKeyRequest) | [GetOberonKeyResponse](/reference/proto#services-provider-v1-GetOberonKeyResponse) | Returns the public key being used to create/verify oberon tokens |
| UpgradeDID | [UpgradeDidRequest](/reference/proto#services-provider-v1-UpgradeDidRequest) | [UpgradeDidResponse](/reference/proto#services-provider-v1-UpgradeDidResponse) | Upgrade a wallet's DID from `did:key` to another method |
| RetrieveDomainVerificationRecord | [RetrieveDomainVerificationRecordRequest](/reference/proto#services-provider-v1-RetrieveDomainVerificationRecordRequest) | [RetrieveDomainVerificationRecordResponse](/reference/proto#services-provider-v1-RetrieveDomainVerificationRecordResponse) | Retrieve a random hash TXT that can be used to verify domain ownership |
| RefreshDomainVerificationStatus | [RefreshDomainVerificationStatusRequest](/reference/proto#services-provider-v1-RefreshDomainVerificationStatusRequest) | [RefreshDomainVerificationStatusResponse](/reference/proto#services-provider-v1-RefreshDomainVerificationStatusResponse) | Call to verify domain |
| SearchWalletConfigurations | [SearchWalletConfigurationsRequest](/reference/proto#services-provider-v1-SearchWalletConfigurationsRequest) | [SearchWalletConfigurationResponse](/reference/proto#services-provider-v1-SearchWalletConfigurationResponse) | Search for issuers/providers/verifiers in the current ecosystem |

 <!-- end services -->


<a name="services-provider-v1-AddWebhookRequest"></a>

### AddWebhookRequest
Request to add a webhook to an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| destination_url | [string](/reference/proto#string) | Destination to post webhook calls to. Must be a reachable HTTPS URL. |
| secret | [string](/reference/proto#string) | Secret string used for HMAC-SHA256 signing of webhook payloads to verify that a webhook comes from Trinsic |
| events | [string](/reference/proto#string)[] | Events to subscribe to. Default is "*" (all events) |






<a name="services-provider-v1-AddWebhookResponse"></a>

### AddWebhookResponse
Response to `AddWebhookRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem data with new webhook |






<a name="services-provider-v1-CreateEcosystemRequest"></a>

### CreateEcosystemRequest
Request to create an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Globally unique name for the Ecosystem. This name will be part of the ecosystem-specific URLs and namespaces. Allowed characters are lowercase letters, numbers, underscore and hyphen. If not passed, ecosystem name will be auto-generated. |
| description | [string](/reference/proto#string) | Ecosystem description |
| uri | [string](/reference/proto#string) | **Deprecated.** External URL associated with your organization or ecosystem entity |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) | The account details of the owner of the ecosystem |
| domain | [string](/reference/proto#string) | New domain URL |






<a name="services-provider-v1-CreateEcosystemResponse"></a>

### CreateEcosystemResponse
Response to `CreateEcosystemRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Details of the created ecosystem |
| profile | [services.account.v1.AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account profile for auth of the owner of the ecosystem |
| confirmation_method | [services.account.v1.ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | Indicates if confirmation of account is required. |






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
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem data after removal of webhook |






<a name="services-provider-v1-Ecosystem"></a>

### Ecosystem
Details of an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | URN of the ecosystem |
| name | [string](/reference/proto#string) | Globally unique name for the ecosystem |
| description | [string](/reference/proto#string) | Ecosystem description |
| uri | [string](/reference/proto#string) | **Deprecated.** External URL associated with the organization or ecosystem entity |
| display | [EcosystemDisplay](/reference/proto#services-provider-v1-EcosystemDisplay) | Display details |
| domain | [string](/reference/proto#string) | Domain |






<a name="services-provider-v1-EcosystemDisplay"></a>

### EcosystemDisplay



| Field | Type | Description |
| ----- | ---- | ----------- |
| light | [EcosystemDisplayDetails](/reference/proto#services-provider-v1-EcosystemDisplayDetails) | Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform. EcosystemDisplayDetails dark = 1; |






<a name="services-provider-v1-EcosystemDisplayDetails"></a>

### EcosystemDisplayDetails



| Field | Type | Description |
| ----- | ---- | ----------- |
| logo_url | [string](/reference/proto#string) |  |
| color | [string](/reference/proto#string) |  |






<a name="services-provider-v1-EcosystemDisplayDetailsRequest"></a>

### EcosystemDisplayDetailsRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| color | [string](/reference/proto#string) |  |
| logo_data | [bytes](/reference/proto#bytes) |  |
| logo_format | [string](/reference/proto#string) | MIME type of the file |






<a name="services-provider-v1-EcosystemDisplayRequest"></a>

### EcosystemDisplayRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| light | [EcosystemDisplayDetailsRequest](/reference/proto#services-provider-v1-EcosystemDisplayDetailsRequest) | Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform. EcosystemDisplayDetailsRequest dark = 1; |






<a name="services-provider-v1-EcosystemInfoRequest"></a>

### EcosystemInfoRequest
Request to fetch information about an ecosystem






<a name="services-provider-v1-EcosystemInfoResponse"></a>

### EcosystemInfoResponse
Response to `InfoRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Ecosystem corresponding to current ecosystem in the account token |






<a name="services-provider-v1-GetOberonKeyRequest"></a>

### GetOberonKeyRequest
Request to fetch the Trinsic public key used
to verify authentication token validity






<a name="services-provider-v1-GetOberonKeyResponse"></a>

### GetOberonKeyResponse
Response to `GetOberonKeyRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) | Oberon Public Key as RAW base64-url encoded string |






<a name="services-provider-v1-GetPublicEcosystemInfoRequest"></a>

### GetPublicEcosystemInfoRequest
Request to fetch information about an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem_id | [string](/reference/proto#string) |  |






<a name="services-provider-v1-GetPublicEcosystemInfoResponse"></a>

### GetPublicEcosystemInfoResponse
Response to `InfoRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [PublicEcosystemInformation](/reference/proto#services-provider-v1-PublicEcosystemInformation) | Ecosystem corresponding to requested `ecosystem_id` |






<a name="services-provider-v1-IndyOptions"></a>

### IndyOptions
Options for creation of DID on the SOV network


| Field | Type | Description |
| ----- | ---- | ----------- |
| network | [IndyOptions.IndyNetwork](/reference/proto#services-provider-v1-IndyOptions-IndyNetwork) | SOV network on which DID should be published |






<a name="services-provider-v1-InvitationStatusRequest"></a>

### InvitationStatusRequest
Request details for the status of an invitation


| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) | ID of invitation, received from `InviteResponse` |






<a name="services-provider-v1-InvitationStatusResponse"></a>

### InvitationStatusResponse
Response to `InvitationStatusRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [InvitationStatusResponse.Status](/reference/proto#services-provider-v1-InvitationStatusResponse-Status) | Status of invitation |
| status_details | [string](/reference/proto#string) | Human-readable string with details about invitation status |






<a name="services-provider-v1-InviteRequest"></a>

### InviteRequest
Request to invite a participant to an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| participant | [ParticipantType](/reference/proto#services-provider-v1-ParticipantType) | Type of participant being invited (individual/organization) |
| description | [string](/reference/proto#string) | Description of invitation |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) | Account details of invitee |






<a name="services-provider-v1-InviteRequest-DidCommInvitation"></a>

### InviteRequest.DidCommInvitation







<a name="services-provider-v1-InviteResponse"></a>

### InviteResponse
Response to `InviteRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) | ID of created invitation |
| invitation_code | [string](/reference/proto#string) | Invitation code -- must be passed back in `LoginRequest` |






<a name="services-provider-v1-IonOptions"></a>

### IonOptions
Options for creation of DID on the ION network


| Field | Type | Description |
| ----- | ---- | ----------- |
| network | [IonOptions.IonNetwork](/reference/proto#services-provider-v1-IonOptions-IonNetwork) | ION network on which DID should be published |






<a name="services-provider-v1-PublicEcosystemInformation"></a>

### PublicEcosystemInformation



| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Public name of this ecosystem |
| domain | [string](/reference/proto#string) | Public domain for the owner of this ecosystem |
| domain_verified | [bool](/reference/proto#bool) | Trinsic verified the domain is owned by the owner of this ecosystem |
| style_display | [EcosystemDisplay](/reference/proto#services-provider-v1-EcosystemDisplay) | Style display information |
| description | [string](/reference/proto#string) | Description of the ecosystem |






<a name="services-provider-v1-RefreshDomainVerificationStatusRequest"></a>

### RefreshDomainVerificationStatusRequest







<a name="services-provider-v1-RefreshDomainVerificationStatusResponse"></a>

### RefreshDomainVerificationStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| domain | [string](/reference/proto#string) | Domain URL verified |
| domain_verified | [bool](/reference/proto#bool) | Specifies if the above `domain` was successfully verified |






<a name="services-provider-v1-RetrieveDomainVerificationRecordRequest"></a>

### RetrieveDomainVerificationRecordRequest







<a name="services-provider-v1-RetrieveDomainVerificationRecordResponse"></a>

### RetrieveDomainVerificationRecordResponse
Response message containing a TXT record content for domain url verification


| Field | Type | Description |
| ----- | ---- | ----------- |
| verification_record_name | [string](/reference/proto#string) | TXT record name to use for domain verification |
| verification_record_Value | [string](/reference/proto#string) | TXT code for domain verification |






<a name="services-provider-v1-SearchWalletConfigurationResponse"></a>

### SearchWalletConfigurationResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| results | [WalletConfiguration](/reference/proto#services-provider-v1-WalletConfiguration)[] | Results matching the search query |
| has_more | [bool](/reference/proto#bool) | Whether more results are available for this query via `continuation_token` |
| continuation_token | [string](/reference/proto#string) | Token to fetch next set of results via `SearchRequest` |






<a name="services-provider-v1-SearchWalletConfigurationsRequest"></a>

### SearchWalletConfigurationsRequest
Search for issuers/holders/verifiers


| Field | Type | Description |
| ----- | ---- | ----------- |
| query_filter | [string](/reference/proto#string) | SQL filter to execute. `SELECT * FROM _ WHERE [**queryFilter**]` |
| continuation_token | [string](/reference/proto#string) | Token provided by previous `SearchResponse` if more data is available for query |






<a name="services-provider-v1-UpdateEcosystemRequest"></a>

### UpdateEcosystemRequest
Request to update an ecosystem's metadata


| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) | New description of the ecosystem |
| uri | [string](/reference/proto#string) | **Deprecated.** New external URL associated with the organization or ecosystem entity |
| domain | [string](/reference/proto#string) | New domain URL |
| display | [EcosystemDisplayRequest](/reference/proto#services-provider-v1-EcosystemDisplayRequest) | **Deprecated.** Display details |






<a name="services-provider-v1-UpdateEcosystemResponse"></a>

### UpdateEcosystemResponse
Response to `UpdateEcosystemRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| Ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Current ecosystem metadata, post-update |






<a name="services-provider-v1-UpgradeDidRequest"></a>

### UpgradeDidRequest
Request to upgrade a wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) | Email address of account to upgrade. Mutually exclusive with `walletId` and `didUri`. |
| wallet_id | [string](/reference/proto#string) | Wallet ID of account to upgrade. Mutually exclusive with `email` and `didUri`. |
| did_uri | [string](/reference/proto#string) | DID URI of the account to upgrade. Mutually exclusive with `email` and `walletId`. |
| method | [services.common.v1.SupportedDidMethod](/reference/proto#services-common-v1-SupportedDidMethod) | DID Method to which wallet should be upgraded |
| ion_options | [IonOptions](/reference/proto#services-provider-v1-IonOptions) | Configuration for creation of DID on ION network |
| indy_options | [IndyOptions](/reference/proto#services-provider-v1-IndyOptions) | Configuration for creation of DID on INDY network |






<a name="services-provider-v1-UpgradeDidResponse"></a>

### UpgradeDidResponse
Response to `UpgradeDIDRequest`


| Field | Type | Description |
| ----- | ---- | ----------- |
| did | [string](/reference/proto#string) | New DID of wallet |






<a name="services-provider-v1-WalletConfiguration"></a>

### WalletConfiguration
Strongly typed information about wallet configurations


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) |  |
| email | [string](/reference/proto#string) |  |
| sms | [string](/reference/proto#string) |  |
| wallet_id | [string](/reference/proto#string) |  |
| public_did | [string](/reference/proto#string) |  |
| config_type | [string](/reference/proto#string) |  |






<a name="services-provider-v1-WebhookConfig"></a>

### WebhookConfig
Webhook configured on an ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of the webhook |
| destination_url | [string](/reference/proto#string) | HTTPS URL to POST webhook calls to |
| events | [string](/reference/proto#string)[] | Events the webhook is subscribed to |
| status | [string](/reference/proto#string) | Last known status of webhook (whether or not Trinsic can successfully reach destination) |





 <!-- end messages -->


<a name="services-provider-v1-IndyOptions-IndyNetwork"></a>

### IndyOptions.IndyNetwork


| Name | Number | Description |
| ---- | ------ | ----------- |
| Danube | 0 |  |
| SovrinBuilder | 1 |  |
| SovrinStaging | 2 |  |
| Sovrin | 3 |  |
| IdUnionTest | 4 |  |
| IdUnion | 5 |  |
| IndicioTest | 6 |  |
| IndicioDemo | 7 |  |
| Indicio | 8 |  |



<a name="services-provider-v1-InvitationStatusResponse-Status"></a>

### InvitationStatusResponse.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| Error | 0 | Onboarding resulted in error |
| InvitationSent | 1 | The participant has been invited |
| Completed | 2 | The participant has been onboarded |
| Expired | 3 | The invite has expired |



<a name="services-provider-v1-IonOptions-IonNetwork"></a>

### IonOptions.IonNetwork


| Name | Number | Description |
| ---- | ------ | ----------- |
| TestNet | 0 |  |
| MainNet | 1 |  |



<a name="services-provider-v1-ParticipantType"></a>

### ParticipantType
Type of participant being invited to ecosystem

| Name | Number | Description |
| ---- | ------ | ----------- |
| participant_type_individual | 0 | Participant is an individual |
| participant_type_organization | 1 | Participant is an organization |


 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_event_v1_event-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/event/v1/event.proto


 <!-- end services -->


<a name="trinsic-services-event-APICall"></a>

### APICall



| Field | Type | Description |
| ----- | ---- | ----------- |
| source | [string](/reference/proto#string) |  |
| request | [bytes](/reference/proto#bytes) |  |
| response | [bytes](/reference/proto#bytes) |  |






<a name="trinsic-services-event-GovernanceFrameworkCreatedV1"></a>

### GovernanceFrameworkCreatedV1
Entity Governance Framework created and attached to ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of the governance framework |
| ecosystem_id | [string](/reference/proto#string) | UUID of the ecosystem that owns this EGF |
| trust_registry | [string](/reference/proto#string) | Trust registry associated with this EGF |
| governing_authority | [string](/reference/proto#string) | Wallet ID of the authority for this EGF |
| type | [string](/reference/proto#string) | Type of EGF |
| name | [string](/reference/proto#string) | User-friendly name for the EGF |
| description | [string](/reference/proto#string) | Description of the EGF |
| governance_framework | [string](/reference/proto#string) | URI for the EGF |
| timestamp | [string](/reference/proto#string) | Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) |






<a name="trinsic-services-event-ItemReceivedV1"></a>

### ItemReceivedV1
Item inserted into wallet


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of the new item |
| received | [string](/reference/proto#string) | Timestamp when the item was received, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) |
| wallet_id | [string](/reference/proto#string) | ID of wallet |
| ecosystem_id | [string](/reference/proto#string) | Ecosystem where this event originated, if any. |






<a name="trinsic-services-event-PingV1"></a>

### PingV1
Webhook test event


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of this ping |
| webhook_id | [string](/reference/proto#string) | UUID of the webhook receiving the ping |
| timestamp | [string](/reference/proto#string) | Timestamp ping was requested, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) |
| message | [string](/reference/proto#string) | Arbitrary message specified when ping was requested |
| ecosystem_id | [string](/reference/proto#string) | Ecosystem where this event originated, if any. |






<a name="trinsic-services-event-TemplateCreatedV1"></a>

### TemplateCreatedV1
Template created in ecosystem


| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) | UUID of the template |
| ecosystem_id | [string](/reference/proto#string) | UUID of the ecosystem that owns this template |
| name | [string](/reference/proto#string) | Template name |
| type | [string](/reference/proto#string) | Template type |
| created_by | [string](/reference/proto#string) | WalletID that created the template |
| timestamp | [string](/reference/proto#string) | Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) |





 <!-- end messages -->


<a name="trinsic-services-event-EventType"></a>

### EventType
All event types

| Name | Number | Description |
| ---- | ------ | ----------- |
| PING | 0 |  |
| LOG | 1 |  |
| GOVERNANCE_FRAMEWORK_CREATED | 5 |  |
| GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED | 6 |  |
| GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED | 7 |  |
| TEMPLATE_CREATED | 10 |  |
| TEMPLATE_DELETED | 11 |  |
| WALLET_CREATED | 15 |  |
| ITEM_RECEIVED | 16 |  |
| CREDENTIAL_ISSUED | 17 |  |


 <!-- end enums -->


<a name="services_event_v1_event-proto-extensions"></a>

### File-level Extensions
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
| event_type | EventType | .google.protobuf.MessageOptions | 60002 | Event type associated with this Event message. |

 <!-- end HasExtensions -->



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



<a name="services-common-v1-SupportedDidMethod"></a>

### SupportedDidMethod
Enum of all supported DID Methods
https://docs.godiddy.com/en/supported-methods

| Name | Number | Description |
| ---- | ------ | ----------- |
| KEY | 0 | The did:key method -- all wallets use this by default |
| ION | 1 | The did:ion method -- Sidetree implementation on top of Bitcoin by Microsoft |
| INDY | 2 | The did:sov method -- Hyperledger Indy based by Sovrin Foundation |


 <!-- end enums -->

 <!-- end HasExtensions -->



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- |
| <a name="double" /> double |  | double | double | float | float64 | double | float |
| <a name="float" /> float |  | float | float | float | float32 | float | float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string |
