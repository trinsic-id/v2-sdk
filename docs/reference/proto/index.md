# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [pbmse/v1/pbmse.proto](#pbmse/v1/pbmse.proto)
    - [EncryptedMessage](#pbmse.v1.EncryptedMessage)
    - [EncryptionHeader](#pbmse.v1.EncryptionHeader)
    - [EncryptionRecipient](#pbmse.v1.EncryptionRecipient)
    - [Signature](#pbmse.v1.Signature)
    - [SignatureHeader](#pbmse.v1.SignatureHeader)
    - [SignedMessage](#pbmse.v1.SignedMessage)
  
    - [EncryptionAlgorithm](#pbmse.v1.EncryptionAlgorithm)
    - [EncryptionMode](#pbmse.v1.EncryptionMode)
  
- [sdk/options/v1/options.proto](#sdk/options/v1/options.proto)
    - [ServerConfiguration](#sdk.options.v1.ServerConfiguration)
    - [ServiceOptions](#sdk.options.v1.ServiceOptions)
  
- [services/account/v1/account.proto](#services/account/v1/account.proto)
    - [AccountDetails](#services.account.v1.AccountDetails)
    - [AccountProfile](#services.account.v1.AccountProfile)
    - [InfoRequest](#services.account.v1.InfoRequest)
    - [InfoResponse](#services.account.v1.InfoResponse)
    - [ListDevicesRequest](#services.account.v1.ListDevicesRequest)
    - [ListDevicesResponse](#services.account.v1.ListDevicesResponse)
    - [RevokeDeviceRequest](#services.account.v1.RevokeDeviceRequest)
    - [RevokeDeviceResponse](#services.account.v1.RevokeDeviceResponse)
    - [SignInRequest](#services.account.v1.SignInRequest)
    - [SignInResponse](#services.account.v1.SignInResponse)
    - [TokenProtection](#services.account.v1.TokenProtection)
  
    - [ConfirmationMethod](#services.account.v1.ConfirmationMethod)
  
    - [Account](#services.account.v1.Account)
  
- [services/common/v1/common.proto](#services/common/v1/common.proto)
    - [JsonPayload](#services.common.v1.JsonPayload)
    - [Nonce](#services.common.v1.Nonce)
    - [RequestOptions](#services.common.v1.RequestOptions)
    - [ServerConfig](#services.common.v1.ServerConfig)
  
    - [JsonFormat](#services.common.v1.JsonFormat)
    - [ResponseStatus](#services.common.v1.ResponseStatus)
  
    - [Common](#services.common.v1.Common)
  
- [services/debug/v1/debug.proto](#services/debug/v1/debug.proto)
    - [Debugging](#services.debug.v1.Debugging)
  
- [services/provider/v1/provider.proto](#services/provider/v1/provider.proto)
    - [AcceptInviteRequest](#services.provider.v1.AcceptInviteRequest)
    - [AcceptInviteResponse](#services.provider.v1.AcceptInviteResponse)
    - [CreateEcosystemRequest](#services.provider.v1.CreateEcosystemRequest)
    - [CreateEcosystemResponse](#services.provider.v1.CreateEcosystemResponse)
    - [Ecosystem](#services.provider.v1.Ecosystem)
    - [InvitationStatusRequest](#services.provider.v1.InvitationStatusRequest)
    - [InvitationStatusResponse](#services.provider.v1.InvitationStatusResponse)
    - [Invite](#services.provider.v1.Invite)
    - [InviteRequest](#services.provider.v1.InviteRequest)
    - [InviteRequest.DidCommInvitation](#services.provider.v1.InviteRequest.DidCommInvitation)
    - [InviteResponse](#services.provider.v1.InviteResponse)
    - [ListEcosystemsRequest](#services.provider.v1.ListEcosystemsRequest)
    - [ListEcosystemsResponse](#services.provider.v1.ListEcosystemsResponse)
  
    - [InvitationStatusResponse.Status](#services.provider.v1.InvitationStatusResponse.Status)
    - [ParticipantType](#services.provider.v1.ParticipantType)
  
    - [Provider](#services.provider.v1.Provider)
  
- [services/trust-registry/v1/trust-registry.proto](#services/trust-registry/v1/trust-registry.proto)
    - [AddFrameworkRequest](#services.trustregistry.v1.AddFrameworkRequest)
    - [AddFrameworkResponse](#services.trustregistry.v1.AddFrameworkResponse)
    - [CheckIssuerStatusRequest](#services.trustregistry.v1.CheckIssuerStatusRequest)
    - [CheckIssuerStatusResponse](#services.trustregistry.v1.CheckIssuerStatusResponse)
    - [CheckVerifierStatusRequest](#services.trustregistry.v1.CheckVerifierStatusRequest)
    - [CheckVerifierStatusResponse](#services.trustregistry.v1.CheckVerifierStatusResponse)
    - [FetchDataRequest](#services.trustregistry.v1.FetchDataRequest)
    - [FetchDataResponse](#services.trustregistry.v1.FetchDataResponse)
    - [GovernanceFramework](#services.trustregistry.v1.GovernanceFramework)
    - [RegisterIssuerRequest](#services.trustregistry.v1.RegisterIssuerRequest)
    - [RegisterIssuerResponse](#services.trustregistry.v1.RegisterIssuerResponse)
    - [RegisterVerifierRequest](#services.trustregistry.v1.RegisterVerifierRequest)
    - [RegisterVerifierResponse](#services.trustregistry.v1.RegisterVerifierResponse)
    - [RemoveFrameworkRequest](#services.trustregistry.v1.RemoveFrameworkRequest)
    - [RemoveFrameworkResponse](#services.trustregistry.v1.RemoveFrameworkResponse)
    - [SearchRegistryRequest](#services.trustregistry.v1.SearchRegistryRequest)
    - [SearchRegistryResponse](#services.trustregistry.v1.SearchRegistryResponse)
    - [UnregisterIssuerRequest](#services.trustregistry.v1.UnregisterIssuerRequest)
    - [UnregisterIssuerResponse](#services.trustregistry.v1.UnregisterIssuerResponse)
    - [UnregisterVerifierRequest](#services.trustregistry.v1.UnregisterVerifierRequest)
    - [UnregisterVerifierResponse](#services.trustregistry.v1.UnregisterVerifierResponse)
  
    - [RegistrationStatus](#services.trustregistry.v1.RegistrationStatus)
  
    - [TrustRegistry](#services.trustregistry.v1.TrustRegistry)
  
- [services/universal-wallet/v1/universal-wallet.proto](#services/universal-wallet/v1/universal-wallet.proto)
    - [DeleteItemRequest](#services.universalwallet.v1.DeleteItemRequest)
    - [DeleteItemResponse](#services.universalwallet.v1.DeleteItemResponse)
    - [InsertItemRequest](#services.universalwallet.v1.InsertItemRequest)
    - [InsertItemResponse](#services.universalwallet.v1.InsertItemResponse)
    - [SearchRequest](#services.universalwallet.v1.SearchRequest)
    - [SearchResponse](#services.universalwallet.v1.SearchResponse)
  
    - [UniversalWallet](#services.universalwallet.v1.UniversalWallet)
  
- [services/verifiable-credentials/templates/v1/templates.proto](#services/verifiable-credentials/templates/v1/templates.proto)
    - [CreateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest)
    - [CreateCredentialTemplateRequest.FieldsEntry](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry)
    - [CreateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse)
    - [DeleteCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest)
    - [DeleteCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse)
    - [GetCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest)
    - [GetCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse)
    - [GetTemplateRequest](#services.verifiablecredentials.templates.v1.GetTemplateRequest)
    - [GetTemplateResponse](#services.verifiablecredentials.templates.v1.GetTemplateResponse)
    - [ListCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.ListCredentialTemplatesRequest)
    - [ListCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.ListCredentialTemplatesResponse)
    - [ListTemplatesRequest](#services.verifiablecredentials.templates.v1.ListTemplatesRequest)
    - [ListTemplatesResponse](#services.verifiablecredentials.templates.v1.ListTemplatesResponse)
    - [SearchCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest)
    - [SearchCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse)
    - [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData)
    - [TemplateData.FieldsEntry](#services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry)
    - [TemplateField](#services.verifiablecredentials.templates.v1.TemplateField)
  
    - [FieldType](#services.verifiablecredentials.templates.v1.FieldType)
  
    - [CredentialTemplates](#services.verifiablecredentials.templates.v1.CredentialTemplates)
  
- [services/verifiable-credentials/v1/verifiable-credentials.proto](#services/verifiable-credentials/v1/verifiable-credentials.proto)
    - [CreateProofRequest](#services.verifiablecredentials.v1.CreateProofRequest)
    - [CreateProofResponse](#services.verifiablecredentials.v1.CreateProofResponse)
    - [IssueFromTemplateRequest](#services.verifiablecredentials.v1.IssueFromTemplateRequest)
    - [IssueFromTemplateResponse](#services.verifiablecredentials.v1.IssueFromTemplateResponse)
    - [IssueRequest](#services.verifiablecredentials.v1.IssueRequest)
    - [IssueResponse](#services.verifiablecredentials.v1.IssueResponse)
    - [SendRequest](#services.verifiablecredentials.v1.SendRequest)
    - [SendResponse](#services.verifiablecredentials.v1.SendResponse)
    - [VerifyProofRequest](#services.verifiablecredentials.v1.VerifyProofRequest)
    - [VerifyProofResponse](#services.verifiablecredentials.v1.VerifyProofResponse)
  
    - [VerifiableCredential](#services.verifiablecredentials.v1.VerifiableCredential)
  
- [Scalar Value Types](#scalar-value-types)



<a name="pbmse/v1/pbmse.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pbmse/v1/pbmse.proto



<a name="pbmse.v1.EncryptedMessage"></a>

### EncryptedMessage



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iv | [bytes](#bytes) |  |  |
| aad | [bytes](#bytes) |  |  |
| ciphertext | [bytes](#bytes) |  |  |
| tag | [bytes](#bytes) |  |  |
| recipients | [EncryptionRecipient](#pbmse.v1.EncryptionRecipient) | repeated |  |






<a name="pbmse.v1.EncryptionHeader"></a>

### EncryptionHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mode | [EncryptionMode](#pbmse.v1.EncryptionMode) |  |  |
| algorithm | [EncryptionAlgorithm](#pbmse.v1.EncryptionAlgorithm) |  |  |
| key_id | [string](#string) |  |  |
| sender_key_id | [string](#string) |  |  |






<a name="pbmse.v1.EncryptionRecipient"></a>

### EncryptionRecipient



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [EncryptionHeader](#pbmse.v1.EncryptionHeader) |  |  |
| content_encryption_key | [bytes](#bytes) |  |  |






<a name="pbmse.v1.Signature"></a>

### Signature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |






<a name="pbmse.v1.SignatureHeader"></a>

### SignatureHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| algorithm | [string](#string) |  |  |
| key_id | [string](#string) |  |  |






<a name="pbmse.v1.SignedMessage"></a>

### SignedMessage
JWS
Protocol buffer message signing and encryption


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| signatures | [Signature](#pbmse.v1.Signature) | repeated |  |





 


<a name="pbmse.v1.EncryptionAlgorithm"></a>

### EncryptionAlgorithm


| Name | Number | Description |
| ---- | ------ | ----------- |
| ENCRYPTION_ALGORITHM_UNSPECIFIED | 0 |  |
| ENCRYPTION_ALGORITHM_XCHACHA20POLY1305 | 1 |  |
| ENCRYPTION_ALGORITHM_AES_GCM | 2 |  |



<a name="pbmse.v1.EncryptionMode"></a>

### EncryptionMode


| Name | Number | Description |
| ---- | ------ | ----------- |
| ENCRYPTION_MODE_UNSPECIFIED | 0 |  |
| ENCRYPTION_MODE_DIRECT | 1 |  |
| ENCRYPTION_MODE_CONTENT_ENCRYPTION_KEY | 2 |  |


 

 

 



<a name="sdk/options/v1/options.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sdk/options/v1/options.proto



<a name="sdk.options.v1.ServerConfiguration"></a>

### ServerConfiguration



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint | [string](#string) |  | service endpoint |
| port | [int32](#int32) |  | service port |
| use_tls | [bool](#bool) |  | indicates if tls is used |






<a name="sdk.options.v1.ServiceOptions"></a>

### ServiceOptions
service options


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server | [ServerConfiguration](#sdk.options.v1.ServerConfiguration) |  | server configuration |
| profile | [services.account.v1.AccountProfile](#services.account.v1.AccountProfile) |  | account profile to use for authentication |
| ecosystem | [string](#string) |  | ecosystem to use with endpoints that require it |





 

 

 

 



<a name="services/account/v1/account.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/account/v1/account.proto



<a name="services.account.v1.AccountDetails"></a>

### AccountDetails
Account Registration Details


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Account name (optional) |
| email | [string](#string) |  | Email account (required) |
| sms | [string](#string) |  | SMS number including country code (optional) |






<a name="services.account.v1.AccountProfile"></a>

### AccountProfile
Device profile containing sensitive authentication data.
This information should be stored securely


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| profile_type | [string](#string) |  | The type of profile, used to differentiate between protocol schemes or versions |
| auth_data | [bytes](#bytes) |  | Auth data containg information about the current device access |
| auth_token | [bytes](#bytes) |  | Secure token issued by server used to generate zero-knowledge proofs |
| protection | [TokenProtection](#services.account.v1.TokenProtection) |  | Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. |






<a name="services.account.v1.InfoRequest"></a>

### InfoRequest







<a name="services.account.v1.InfoResponse"></a>

### InfoResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| details | [AccountDetails](#services.account.v1.AccountDetails) |  | The account details associated with the calling request context |
| ecosystems | [services.provider.v1.Ecosystem](#services.provider.v1.Ecosystem) | repeated | any ecosystems the account has access to |






<a name="services.account.v1.ListDevicesRequest"></a>

### ListDevicesRequest







<a name="services.account.v1.ListDevicesResponse"></a>

### ListDevicesResponse







<a name="services.account.v1.RevokeDeviceRequest"></a>

### RevokeDeviceRequest







<a name="services.account.v1.RevokeDeviceResponse"></a>

### RevokeDeviceResponse







<a name="services.account.v1.SignInRequest"></a>

### SignInRequest
Request for creating new account


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| details | [AccountDetails](#services.account.v1.AccountDetails) |  | Account registration details |
| invitation_code | [string](#string) |  | Invitation code associated with this registration This field is optional. |






<a name="services.account.v1.SignInResponse"></a>

### SignInResponse
Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  | The status of the response |
| confirmation_method | [ConfirmationMethod](#services.account.v1.ConfirmationMethod) |  | Indicates if confirmation of account is required. This settings is configured globally by the server administrator. |
| profile | [AccountProfile](#services.account.v1.AccountProfile) |  | Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. |






<a name="services.account.v1.TokenProtection"></a>

### TokenProtection
Token protection info


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enabled | [bool](#bool) |  | Indicates if token is protected using a PIN, security code, HSM secret, etc. |
| method | [ConfirmationMethod](#services.account.v1.ConfirmationMethod) |  | The method used to protect the token |





 


<a name="services.account.v1.ConfirmationMethod"></a>

### ConfirmationMethod
Confirmation method type for two-factor workflows

| Name | Number | Description |
| ---- | ------ | ----------- |
| None | 0 | No confirmation required |
| Email | 1 | Email confirmation required |
| Sms | 2 | SMS confirmation required |
| ConnectedDevice | 3 | Confirmation from a connected device is required |
| Other | 10 | Indicates third-party method of confirmation is required |


 

 


<a name="services.account.v1.Account"></a>

### Account


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SignIn | [SignInRequest](#services.account.v1.SignInRequest) | [SignInResponse](#services.account.v1.SignInResponse) | Sign in to an already existing account

rpc SIgnInConfirm (SignInConfirmRequest) returns (SignInConfirmResponse); |
| Info | [InfoRequest](#services.account.v1.InfoRequest) | [InfoResponse](#services.account.v1.InfoResponse) | Get account information |
| ListDevices | [ListDevicesRequest](#services.account.v1.ListDevicesRequest) | [ListDevicesResponse](#services.account.v1.ListDevicesResponse) | List all connected devices |
| RevokeDevice | [RevokeDeviceRequest](#services.account.v1.RevokeDeviceRequest) | [RevokeDeviceResponse](#services.account.v1.RevokeDeviceResponse) | Revoke device access to the account&#39;s cloud wallet |

 



<a name="services/common/v1/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/common/v1/common.proto



<a name="services.common.v1.JsonPayload"></a>

### JsonPayload



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| json_struct | [google.protobuf.Struct](#google.protobuf.Struct) |  |  |
| json_string | [string](#string) |  |  |
| json_bytes | [bytes](#bytes) |  |  |






<a name="services.common.v1.Nonce"></a>

### Nonce
Nonce used to generate an oberon proof


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [int64](#int64) |  | UTC unix millisecond timestamp the request was made |
| request_hash | [bytes](#bytes) |  | blake3256 hash of the request body |






<a name="services.common.v1.RequestOptions"></a>

### RequestOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_json_format | [JsonFormat](#services.common.v1.JsonFormat) |  |  |






<a name="services.common.v1.ServerConfig"></a>

### ServerConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint | [string](#string) |  | service endpoint |
| port | [int32](#int32) |  | service port |
| use_tls | [bool](#bool) |  | indicates if tls is used |





 


<a name="services.common.v1.JsonFormat"></a>

### JsonFormat


| Name | Number | Description |
| ---- | ------ | ----------- |
| Protobuf | 0 |  |
| Binary | 1 |  |
| String | 2 |  |



<a name="services.common.v1.ResponseStatus"></a>

### ResponseStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| SUCCESS | 0 |  |
| WALLET_ACCESS_DENIED | 10 |  |
| WALLET_EXISTS | 11 |  |
| ITEM_NOT_FOUND | 20 |  |
| SERIALIZATION_ERROR | 200 |  |
| UNKNOWN_ERROR | 100 |  |


 

 


<a name="services.common.v1.Common"></a>

### Common


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Request | [.pbmse.v1.EncryptedMessage](#pbmse.v1.EncryptedMessage) | [.pbmse.v1.EncryptedMessage](#pbmse.v1.EncryptedMessage) |  |

 



<a name="services/debug/v1/debug.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/debug/v1/debug.proto


 

 

 


<a name="services.debug.v1.Debugging"></a>

### Debugging


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CallEmpty | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| CallEmptyAuth | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |

 



<a name="services/provider/v1/provider.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/provider/v1/provider.proto



<a name="services.provider.v1.AcceptInviteRequest"></a>

### AcceptInviteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| code | [string](#string) |  |  |






<a name="services.provider.v1.AcceptInviteResponse"></a>

### AcceptInviteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ecosystem | [Ecosystem](#services.provider.v1.Ecosystem) |  |  |






<a name="services.provider.v1.CreateEcosystemRequest"></a>

### CreateEcosystemRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |
| uri | [string](#string) |  |  |






<a name="services.provider.v1.CreateEcosystemResponse"></a>

### CreateEcosystemResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="services.provider.v1.Ecosystem"></a>

### Ecosystem



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |
| uri | [string](#string) |  |  |






<a name="services.provider.v1.InvitationStatusRequest"></a>

### InvitationStatusRequest
Request details for the status of onboarding
an individual or organization.
The referenece_id passed is the response from the
`Onboard` method call


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| invitation_id | [string](#string) |  |  |






<a name="services.provider.v1.InvitationStatusResponse"></a>

### InvitationStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [InvitationStatusResponse.Status](#services.provider.v1.InvitationStatusResponse.Status) |  |  |
| status_details | [string](#string) |  |  |






<a name="services.provider.v1.Invite"></a>

### Invite



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| code | [string](#string) |  |  |
| created | [string](#string) |  |  |
| accepted | [string](#string) |  |  |
| expires | [string](#string) |  |  |






<a name="services.provider.v1.InviteRequest"></a>

### InviteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| participant | [ParticipantType](#services.provider.v1.ParticipantType) |  |  |
| description | [string](#string) |  |  |
| email | [string](#string) |  |  |
| phone | [string](#string) |  |  |
| didcomm_invitation | [InviteRequest.DidCommInvitation](#services.provider.v1.InviteRequest.DidCommInvitation) |  |  |






<a name="services.provider.v1.InviteRequest.DidCommInvitation"></a>

### InviteRequest.DidCommInvitation







<a name="services.provider.v1.InviteResponse"></a>

### InviteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |
| invitation_id | [string](#string) |  |  |






<a name="services.provider.v1.ListEcosystemsRequest"></a>

### ListEcosystemsRequest







<a name="services.provider.v1.ListEcosystemsResponse"></a>

### ListEcosystemsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ecosystem | [Ecosystem](#services.provider.v1.Ecosystem) | repeated |  |





 


<a name="services.provider.v1.InvitationStatusResponse.Status"></a>

### InvitationStatusResponse.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| Error | 0 | Onboarding resulted in error |
| InvitationSent | 1 | The participant has been invited |
| Completed | 2 | The participant has been onboarded |
| Expired | 3 | The invite has expired |



<a name="services.provider.v1.ParticipantType"></a>

### ParticipantType


| Name | Number | Description |
| ---- | ------ | ----------- |
| participant_type_individual | 0 |  |
| participant_type_organization | 1 |  |


 

 


<a name="services.provider.v1.Provider"></a>

### Provider


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateEcosystem | [CreateEcosystemRequest](#services.provider.v1.CreateEcosystemRequest) | [CreateEcosystemResponse](#services.provider.v1.CreateEcosystemResponse) | Create new ecosystem and assign the authenticated user as owner |
| ListEcosystems | [ListEcosystemsRequest](#services.provider.v1.ListEcosystemsRequest) | [ListEcosystemsResponse](#services.provider.v1.ListEcosystemsResponse) | List all ecosystems assigned to the authenticated account |
| Invite | [InviteRequest](#services.provider.v1.InviteRequest) | [InviteResponse](#services.provider.v1.InviteResponse) | Invite a user to the ecosystem |
| AcceptInvite | [AcceptInviteRequest](#services.provider.v1.AcceptInviteRequest) | [AcceptInviteResponse](#services.provider.v1.AcceptInviteResponse) | Accept an invite to the ecosystem |
| InvitationStatus | [InvitationStatusRequest](#services.provider.v1.InvitationStatusRequest) | [InvitationStatusResponse](#services.provider.v1.InvitationStatusResponse) | Check the invitation status |

 



<a name="services/trust-registry/v1/trust-registry.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/trust-registry/v1/trust-registry.proto



<a name="services.trustregistry.v1.AddFrameworkRequest"></a>

### AddFrameworkRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework | [GovernanceFramework](#services.trustregistry.v1.GovernanceFramework) |  |  |






<a name="services.trustregistry.v1.AddFrameworkResponse"></a>

### AddFrameworkResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.trustregistry.v1.CheckIssuerStatusRequest"></a>

### CheckIssuerStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework_uri | [string](#string) |  |  |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| credential_type_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.CheckIssuerStatusResponse"></a>

### CheckIssuerStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [RegistrationStatus](#services.trustregistry.v1.RegistrationStatus) |  |  |






<a name="services.trustregistry.v1.CheckVerifierStatusRequest"></a>

### CheckVerifierStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework_uri | [string](#string) |  |  |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| presentation_type_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.CheckVerifierStatusResponse"></a>

### CheckVerifierStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [RegistrationStatus](#services.trustregistry.v1.RegistrationStatus) |  |  |






<a name="services.trustregistry.v1.FetchDataRequest"></a>

### FetchDataRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework_uri | [string](#string) |  |  |
| query | [string](#string) |  |  |






<a name="services.trustregistry.v1.FetchDataResponse"></a>

### FetchDataResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| response_json | [string](#string) |  |  |
| has_more_results | [bool](#bool) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.trustregistry.v1.GovernanceFramework"></a>

### GovernanceFramework



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework_uri | [string](#string) |  |  |
| trust_registry_uri | [string](#string) |  |  |
| description | [string](#string) |  |  |






<a name="services.trustregistry.v1.RegisterIssuerRequest"></a>

### RegisterIssuerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| credential_type_uri | [string](#string) |  |  |
| valid_from_utc | [uint64](#uint64) |  |  |
| valid_until_utc | [uint64](#uint64) |  |  |
| governance_framework_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.RegisterIssuerResponse"></a>

### RegisterIssuerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.trustregistry.v1.RegisterVerifierRequest"></a>

### RegisterVerifierRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| presentation_type_uri | [string](#string) |  |  |
| valid_from_utc | [uint64](#uint64) |  |  |
| valid_until_utc | [uint64](#uint64) |  |  |
| governance_framework_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.RegisterVerifierResponse"></a>

### RegisterVerifierResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.trustregistry.v1.RemoveFrameworkRequest"></a>

### RemoveFrameworkRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| governance_framework | [GovernanceFramework](#services.trustregistry.v1.GovernanceFramework) |  |  |






<a name="services.trustregistry.v1.RemoveFrameworkResponse"></a>

### RemoveFrameworkResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.trustregistry.v1.SearchRegistryRequest"></a>

### SearchRegistryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  | SELECT c from c where c.type == &#39;GovernanceFramework&#39; |
| continuation_token | [string](#string) |  |  |
| options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.trustregistry.v1.SearchRegistryResponse"></a>

### SearchRegistryResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items_json | [string](#string) |  |  |
| has_more | [bool](#bool) |  |  |
| count | [int32](#int32) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.trustregistry.v1.UnregisterIssuerRequest"></a>

### UnregisterIssuerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| credential_type_uri | [string](#string) |  |  |
| governance_framework_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.UnregisterIssuerResponse"></a>

### UnregisterIssuerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.trustregistry.v1.UnregisterVerifierRequest"></a>

### UnregisterVerifierRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did_uri | [string](#string) |  |  |
| x509_cert | [string](#string) |  |  |
| presentation_type_uri | [string](#string) |  |  |
| governance_framework_uri | [string](#string) |  |  |






<a name="services.trustregistry.v1.UnregisterVerifierResponse"></a>

### UnregisterVerifierResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |





 


<a name="services.trustregistry.v1.RegistrationStatus"></a>

### RegistrationStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| CURRENT | 0 | - the entity is currently authorized, as of time of the query. |
| EXPIRED | 1 | - entity rights have expired. |
| TERMINATED | 2 | - entity has voluntarily ceased Issuer role under the specific EGF. |
| REVOKED | 3 | - entity authority under specific EGF was terminated by the governing authority. |
| NOT_FOUND | 10 |  |


 

 


<a name="services.trustregistry.v1.TrustRegistry"></a>

### TrustRegistry


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AddFramework | [AddFrameworkRequest](#services.trustregistry.v1.AddFrameworkRequest) | [AddFrameworkResponse](#services.trustregistry.v1.AddFrameworkResponse) | Adds a trust registry defintion to the ecosystem |
| RemoveFramework | [RemoveFrameworkRequest](#services.trustregistry.v1.RemoveFrameworkRequest) | [RemoveFrameworkResponse](#services.trustregistry.v1.RemoveFrameworkResponse) |  |
| SearchRegistry | [SearchRegistryRequest](#services.trustregistry.v1.SearchRegistryRequest) | [SearchRegistryResponse](#services.trustregistry.v1.SearchRegistryResponse) |  |
| RegisterIssuer | [RegisterIssuerRequest](#services.trustregistry.v1.RegisterIssuerRequest) | [RegisterIssuerResponse](#services.trustregistry.v1.RegisterIssuerResponse) | Registers an authoritative issuer with a credential template |
| RegisterVerifier | [RegisterVerifierRequest](#services.trustregistry.v1.RegisterVerifierRequest) | [RegisterVerifierResponse](#services.trustregistry.v1.RegisterVerifierResponse) | Registers an authoritative verifier with a credential template |
| UnregisterIssuer | [UnregisterIssuerRequest](#services.trustregistry.v1.UnregisterIssuerRequest) | [UnregisterIssuerResponse](#services.trustregistry.v1.UnregisterIssuerResponse) | Removes an authoritative issuer with a credential template from the trust registry |
| UnregisterVerifier | [UnregisterVerifierRequest](#services.trustregistry.v1.UnregisterVerifierRequest) | [UnregisterVerifierResponse](#services.trustregistry.v1.UnregisterVerifierResponse) | Removes an authoritative verifier with a presentation template from the trust registry |
| CheckIssuerStatus | [CheckIssuerStatusRequest](#services.trustregistry.v1.CheckIssuerStatusRequest) | [CheckIssuerStatusResponse](#services.trustregistry.v1.CheckIssuerStatusResponse) |  |
| CheckVerifierStatus | [CheckVerifierStatusRequest](#services.trustregistry.v1.CheckVerifierStatusRequest) | [CheckVerifierStatusResponse](#services.trustregistry.v1.CheckVerifierStatusResponse) |  |
| FetchData | [FetchDataRequest](#services.trustregistry.v1.FetchDataRequest) | [FetchDataResponse](#services.trustregistry.v1.FetchDataResponse) stream |  |

 



<a name="services/universal-wallet/v1/universal-wallet.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/universal-wallet/v1/universal-wallet.proto



<a name="services.universalwallet.v1.DeleteItemRequest"></a>

### DeleteItemRequest
Delete item request






<a name="services.universalwallet.v1.DeleteItemResponse"></a>

### DeleteItemResponse







<a name="services.universalwallet.v1.InsertItemRequest"></a>

### InsertItemRequest
Insert item request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| item | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| item_type | [string](#string) |  |  |






<a name="services.universalwallet.v1.InsertItemResponse"></a>

### InsertItemResponse
Insert item response


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |
| item_id | [string](#string) |  | The item identifier of the inserted record |






<a name="services.universalwallet.v1.SearchRequest"></a>

### SearchRequest
Search request object


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  |  |
| continuation_token | [string](#string) |  |  |
| options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.universalwallet.v1.SearchResponse"></a>

### SearchResponse
Search response object


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) | repeated |  |
| has_more | [bool](#bool) |  |  |
| count | [int32](#int32) |  |  |
| continuation_token | [string](#string) |  |  |





 

 

 


<a name="services.universalwallet.v1.UniversalWallet"></a>

### UniversalWallet


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Search | [SearchRequest](#services.universalwallet.v1.SearchRequest) | [SearchResponse](#services.universalwallet.v1.SearchResponse) | Search the wallet using a SQL-like syntax |
| InsertItem | [InsertItemRequest](#services.universalwallet.v1.InsertItemRequest) | [InsertItemResponse](#services.universalwallet.v1.InsertItemResponse) | Insert an item into the wallet |
| Deleteitem | [DeleteItemRequest](#services.universalwallet.v1.DeleteItemRequest) | [DeleteItemResponse](#services.universalwallet.v1.DeleteItemResponse) | Delete an item from the wallet permanently |

 



<a name="services/verifiable-credentials/templates/v1/templates.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/templates/v1/templates.proto



<a name="services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest"></a>

### CreateCredentialTemplateRequest
Request to create new template


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| fields | [CreateCredentialTemplateRequest.FieldsEntry](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry) | repeated |  |
| allow_additional_fields | [bool](#bool) |  |  |






<a name="services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry"></a>

### CreateCredentialTemplateRequest.FieldsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [TemplateField](#services.verifiablecredentials.templates.v1.TemplateField) |  |  |






<a name="services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse"></a>

### CreateCredentialTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData) |  |  |






<a name="services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest"></a>

### DeleteCredentialTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse"></a>

### DeleteCredentialTemplateResponse







<a name="services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest"></a>

### GetCredentialTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse"></a>

### GetCredentialTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| template | [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData) |  |  |






<a name="services.verifiablecredentials.templates.v1.GetTemplateRequest"></a>

### GetTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.GetTemplateResponse"></a>

### GetTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData) |  |  |






<a name="services.verifiablecredentials.templates.v1.ListCredentialTemplatesRequest"></a>

### ListCredentialTemplatesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  | SELECT * FROM c WHERE c.name = &#39;Diploma&#39; |
| continuation_token | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.ListCredentialTemplatesResponse"></a>

### ListCredentialTemplatesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| templates | [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData) | repeated |  |
| has_more_results | [bool](#bool) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.ListTemplatesRequest"></a>

### ListTemplatesRequest







<a name="services.verifiablecredentials.templates.v1.ListTemplatesResponse"></a>

### ListTemplatesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| templates | [TemplateData](#services.verifiablecredentials.templates.v1.TemplateData) | repeated |  |






<a name="services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest"></a>

### SearchCredentialTemplatesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  | SELECT * FROM c WHERE c.name = &#39;Diploma&#39; |
| continuation_token | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse"></a>

### SearchCredentialTemplatesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items_json | [string](#string) |  |  |
| has_more | [bool](#bool) |  |  |
| count | [int32](#int32) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.TemplateData"></a>

### TemplateData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| version | [int32](#int32) |  |  |
| fields | [TemplateData.FieldsEntry](#services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry) | repeated |  |
| allow_additional_fields | [bool](#bool) |  |  |
| schema_uri | [string](#string) |  |  |
| context_uri | [string](#string) |  |  |
| ecosystem_id | [string](#string) |  |  |
| type | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry"></a>

### TemplateData.FieldsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [TemplateField](#services.verifiablecredentials.templates.v1.TemplateField) |  |  |






<a name="services.verifiablecredentials.templates.v1.TemplateField"></a>

### TemplateField



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| description | [string](#string) |  |  |
| optional | [bool](#bool) |  |  |
| type | [FieldType](#services.verifiablecredentials.templates.v1.FieldType) |  |  |





 


<a name="services.verifiablecredentials.templates.v1.FieldType"></a>

### FieldType


| Name | Number | Description |
| ---- | ------ | ----------- |
| STRING | 0 |  |
| NUMBER | 1 |  |
| BOOL | 2 |  |
| DATETIME | 4 |  |


 

 


<a name="services.verifiablecredentials.templates.v1.CredentialTemplates"></a>

### CredentialTemplates


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [CreateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest) | [CreateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse) |  |
| Get | [GetCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest) | [GetCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse) |  |
| List | [ListCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.ListCredentialTemplatesRequest) | [ListCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.ListCredentialTemplatesResponse) |  |
| Search | [SearchCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest) | [SearchCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse) |  |
| Delete | [DeleteCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest) | [DeleteCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse) |  |

 



<a name="services/verifiable-credentials/v1/verifiable-credentials.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/v1/verifiable-credentials.proto



<a name="services.verifiablecredentials.v1.CreateProofRequest"></a>

### CreateProofRequest
Create Proof


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reveal_document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| document_id | [string](#string) |  |  |






<a name="services.verifiablecredentials.v1.CreateProofResponse"></a>

### CreateProofResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| proof_document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.v1.IssueFromTemplateRequest"></a>

### IssueFromTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| template_id | [string](#string) |  |  |
| values_json | [string](#string) |  |  |






<a name="services.verifiablecredentials.v1.IssueFromTemplateResponse"></a>

### IssueFromTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_json | [string](#string) |  |  |






<a name="services.verifiablecredentials.v1.IssueRequest"></a>

### IssueRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.v1.IssueResponse"></a>

### IssueResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.v1.SendRequest"></a>

### SendRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| did_uri | [string](#string) |  |  |
| didcomm_invitation | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.v1.SendResponse"></a>

### SendResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.verifiablecredentials.v1.VerifyProofRequest"></a>

### VerifyProofRequest
Verify Proof


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| proof_document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.v1.VerifyProofResponse"></a>

### VerifyProofResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| valid | [bool](#bool) |  |  |





 

 

 


<a name="services.verifiablecredentials.v1.VerifiableCredential"></a>

### VerifiableCredential


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Issue | [IssueRequest](#services.verifiablecredentials.v1.IssueRequest) | [IssueResponse](#services.verifiablecredentials.v1.IssueResponse) |  |
| IssueFromTemplate | [IssueFromTemplateRequest](#services.verifiablecredentials.v1.IssueFromTemplateRequest) | [IssueFromTemplateResponse](#services.verifiablecredentials.v1.IssueFromTemplateResponse) |  |
| CreateProof | [CreateProofRequest](#services.verifiablecredentials.v1.CreateProofRequest) | [CreateProofResponse](#services.verifiablecredentials.v1.CreateProofResponse) |  |
| VerifyProof | [VerifyProofRequest](#services.verifiablecredentials.v1.VerifyProofRequest) | [VerifyProofResponse](#services.verifiablecredentials.v1.VerifyProofResponse) |  |
| Send | [SendRequest](#services.verifiablecredentials.v1.SendRequest) | [SendResponse](#services.verifiablecredentials.v1.SendResponse) |  |

 



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

