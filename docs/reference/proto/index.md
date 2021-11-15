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
    - [InvitationStatusRequest](#services.provider.v1.InvitationStatusRequest)
    - [InvitationStatusResponse](#services.provider.v1.InvitationStatusResponse)
    - [InviteRequest](#services.provider.v1.InviteRequest)
    - [InviteRequest.DidCommInvitation](#services.provider.v1.InviteRequest.DidCommInvitation)
    - [InviteResponse](#services.provider.v1.InviteResponse)
  
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
    - [ConnectRequest](#services.universalwallet.v1.ConnectRequest)
    - [ConnectResponse](#services.universalwallet.v1.ConnectResponse)
    - [CreateWalletRequest](#services.universalwallet.v1.CreateWalletRequest)
    - [CreateWalletResponse](#services.universalwallet.v1.CreateWalletResponse)
    - [GetProviderConfigurationRequest](#services.universalwallet.v1.GetProviderConfigurationRequest)
    - [GetProviderConfigurationResponse](#services.universalwallet.v1.GetProviderConfigurationResponse)
    - [GrantAccessRequest](#services.universalwallet.v1.GrantAccessRequest)
    - [GrantAccessResponse](#services.universalwallet.v1.GrantAccessResponse)
    - [InsertItemRequest](#services.universalwallet.v1.InsertItemRequest)
    - [InsertItemResponse](#services.universalwallet.v1.InsertItemResponse)
    - [InvitationToken](#services.universalwallet.v1.InvitationToken)
    - [RevokeAccessRequest](#services.universalwallet.v1.RevokeAccessRequest)
    - [RevokeAccessResponse](#services.universalwallet.v1.RevokeAccessResponse)
    - [SearchRequest](#services.universalwallet.v1.SearchRequest)
    - [SearchResponse](#services.universalwallet.v1.SearchResponse)
    - [WalletProfile](#services.universalwallet.v1.WalletProfile)
  
    - [Wallet](#services.universalwallet.v1.Wallet)
  
- [services/verifiable-credentials/templates/v1/templates.proto](#services/verifiable-credentials/templates/v1/templates.proto)
    - [CreateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest)
    - [CreateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse)
    - [CredentialTemplate](#services.verifiablecredentials.templates.v1.CredentialTemplate)
    - [DeleteCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest)
    - [DeleteCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse)
    - [GetCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest)
    - [GetCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse)
    - [SearchCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest)
    - [SearchCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse)
    - [UpdateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest)
    - [UpdateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.UpdateCredentialTemplateResponse)
  
    - [CredentialTemplates](#services.verifiablecredentials.templates.v1.CredentialTemplates)
  
- [services/verifiable-credentials/v1/verifiable-credentials.proto](#services/verifiable-credentials/v1/verifiable-credentials.proto)
    - [CreateProofRequest](#services.verifiablecredentials.v1.CreateProofRequest)
    - [CreateProofResponse](#services.verifiablecredentials.v1.CreateProofResponse)
    - [IssueFromTemplateRequest](#services.verifiablecredentials.v1.IssueFromTemplateRequest)
    - [IssueRequest](#services.verifiablecredentials.v1.IssueRequest)
    - [IssueResponse](#services.verifiablecredentials.v1.IssueResponse)
    - [SendRequest](#services.verifiablecredentials.v1.SendRequest)
    - [SendResponse](#services.verifiablecredentials.v1.SendResponse)
    - [VerifyProofRequest](#services.verifiablecredentials.v1.VerifyProofRequest)
    - [VerifyProofResponse](#services.verifiablecredentials.v1.VerifyProofResponse)
  
    - [Credential](#services.verifiablecredentials.v1.Credential)
  
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
Nonce used to generate an oberon prrof


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





 


<a name="services.provider.v1.InvitationStatusResponse.Status"></a>

### InvitationStatusResponse.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| Error | 0 | Onboarding resulted in error |
| InvitationSent | 1 | The participant has been invited |
| Completed | 2 | The participant has been onboarded |



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
| Invite | [InviteRequest](#services.provider.v1.InviteRequest) | [InviteResponse](#services.provider.v1.InviteResponse) | rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse); |
| InviteWithWorkflow | [InviteRequest](#services.provider.v1.InviteRequest) | [InviteResponse](#services.provider.v1.InviteResponse) |  |
| InvitationStatus | [InvitationStatusRequest](#services.provider.v1.InvitationStatusRequest) | [InvitationStatusResponse](#services.provider.v1.InvitationStatusResponse) | rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse); rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse); |

 



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
| governance_framework_uri | [string](#string) |  |  |
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
| governance_framework_uri | [string](#string) |  |  |
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
| response | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






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
| options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.trustregistry.v1.RegisterIssuerResponse"></a>

### RegisterIssuerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |
| response_data | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






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
| options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.trustregistry.v1.RegisterVerifierResponse"></a>

### RegisterVerifierResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |
| response_data | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






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
| items | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) | repeated |  |
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



<a name="services.universalwallet.v1.ConnectRequest"></a>

### ConnectRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| phone | [string](#string) |  |  |






<a name="services.universalwallet.v1.ConnectResponse"></a>

### ConnectResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.universalwallet.v1.CreateWalletRequest"></a>

### CreateWalletRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| description | [string](#string) |  | optional description of the wallet |
| security_code | [string](#string) |  | (Optional) Supply an invitation id to associate this caller device to an existing cloud wallet. |






<a name="services.universalwallet.v1.CreateWalletResponse"></a>

### CreateWalletResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  | the status code of the response |
| auth_data | [bytes](#bytes) |  | authentication data containing info about the cloud wallet and device the user is connecting from |
| auth_token | [bytes](#bytes) |  | authoritative token issued by the server that is required to prove knowledge during authentication |
| is_protected | [bool](#bool) |  | indicates if the token issued protected with a security code, usually delivered by email or sms |






<a name="services.universalwallet.v1.GetProviderConfigurationRequest"></a>

### GetProviderConfigurationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request_options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.universalwallet.v1.GetProviderConfigurationResponse"></a>

### GetProviderConfigurationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did_document | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| key_agreement_key_id | [string](#string) |  |  |






<a name="services.universalwallet.v1.GrantAccessRequest"></a>

### GrantAccessRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| wallet_id | [string](#string) |  |  |
| did | [string](#string) |  |  |






<a name="services.universalwallet.v1.GrantAccessResponse"></a>

### GrantAccessResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.universalwallet.v1.InsertItemRequest"></a>

### InsertItemRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| item | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| item_type | [string](#string) |  |  |






<a name="services.universalwallet.v1.InsertItemResponse"></a>

### InsertItemResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |
| item_id | [string](#string) |  |  |






<a name="services.universalwallet.v1.InvitationToken"></a>

### InvitationToken



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| security_code | [string](#string) |  |  |
| wallet_id | [string](#string) |  |  |
| email | [string](#string) |  |  |
| phone | [string](#string) |  |  |






<a name="services.universalwallet.v1.RevokeAccessRequest"></a>

### RevokeAccessRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| wallet_id | [string](#string) |  |  |
| did | [string](#string) |  |  |






<a name="services.universalwallet.v1.RevokeAccessResponse"></a>

### RevokeAccessResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [services.common.v1.ResponseStatus](#services.common.v1.ResponseStatus) |  |  |






<a name="services.universalwallet.v1.SearchRequest"></a>

### SearchRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  |  |
| continuation_token | [string](#string) |  |  |
| options | [services.common.v1.RequestOptions](#services.common.v1.RequestOptions) |  |  |






<a name="services.universalwallet.v1.SearchResponse"></a>

### SearchResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) | repeated |  |
| has_more | [bool](#bool) |  |  |
| count | [int32](#int32) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.universalwallet.v1.WalletProfile"></a>

### WalletProfile
Stores profile data for accessing a wallet.
This result should be stored somewhere safe,
as it contains private key information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| auth_data | [bytes](#bytes) |  |  |
| auth_token | [bytes](#bytes) |  |  |
| is_protected | [bool](#bool) |  |  |
| config | [services.common.v1.ServerConfig](#services.common.v1.ServerConfig) |  |  |





 

 

 


<a name="services.universalwallet.v1.Wallet"></a>

### Wallet


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetProviderConfiguration | [GetProviderConfigurationRequest](#services.universalwallet.v1.GetProviderConfigurationRequest) | [GetProviderConfigurationResponse](#services.universalwallet.v1.GetProviderConfigurationResponse) |  |
| ConnectExternalIdentity | [ConnectRequest](#services.universalwallet.v1.ConnectRequest) | [ConnectResponse](#services.universalwallet.v1.ConnectResponse) |  |
| CreateWallet | [CreateWalletRequest](#services.universalwallet.v1.CreateWalletRequest) | [CreateWalletResponse](#services.universalwallet.v1.CreateWalletResponse) |  |
| Search | [SearchRequest](#services.universalwallet.v1.SearchRequest) | [SearchResponse](#services.universalwallet.v1.SearchResponse) |  |
| InsertItem | [InsertItemRequest](#services.universalwallet.v1.InsertItemRequest) | [InsertItemResponse](#services.universalwallet.v1.InsertItemResponse) |  |
| GrantAccess | [GrantAccessRequest](#services.universalwallet.v1.GrantAccessRequest) | [GrantAccessResponse](#services.universalwallet.v1.GrantAccessResponse) |  |
| RevokeAccess | [RevokeAccessRequest](#services.universalwallet.v1.RevokeAccessRequest) | [RevokeAccessResponse](#services.universalwallet.v1.RevokeAccessResponse) |  |

 



<a name="services/verifiable-credentials/templates/v1/templates.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/verifiable-credentials/templates/v1/templates.proto



<a name="services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest"></a>

### CreateCredentialTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| schema | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| base_uri | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse"></a>

### CreateCredentialTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| uri | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.CredentialTemplate"></a>

### CredentialTemplate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| schema | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |
| uri | [string](#string) |  |  |






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
| template | [CredentialTemplate](#services.verifiablecredentials.templates.v1.CredentialTemplate) |  |  |






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
| templates | [CredentialTemplate](#services.verifiablecredentials.templates.v1.CredentialTemplate) | repeated |  |
| has_more | [bool](#bool) |  |  |
| count | [int32](#int32) |  |  |
| continuation_token | [string](#string) |  |  |






<a name="services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest"></a>

### UpdateCredentialTemplateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| schema | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






<a name="services.verifiablecredentials.templates.v1.UpdateCredentialTemplateResponse"></a>

### UpdateCredentialTemplateResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| template | [CredentialTemplate](#services.verifiablecredentials.templates.v1.CredentialTemplate) |  |  |





 

 

 


<a name="services.verifiablecredentials.templates.v1.CredentialTemplates"></a>

### CredentialTemplates


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [CreateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest) | [CreateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse) |  |
| Get | [GetCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest) | [GetCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse) |  |
| Search | [SearchCredentialTemplatesRequest](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest) | [SearchCredentialTemplatesResponse](#services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse) |  |
| Update | [UpdateCredentialTemplateRequest](#services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest) | [UpdateCredentialTemplateResponse](#services.verifiablecredentials.templates.v1.UpdateCredentialTemplateResponse) |  |
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
| templateId | [string](#string) |  |  |
| attributes | [services.common.v1.JsonPayload](#services.common.v1.JsonPayload) |  |  |






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





 

 

 


<a name="services.verifiablecredentials.v1.Credential"></a>

### Credential


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Issue | [IssueRequest](#services.verifiablecredentials.v1.IssueRequest) | [IssueResponse](#services.verifiablecredentials.v1.IssueResponse) |  |
| IssueFromTemplate | [IssueFromTemplateRequest](#services.verifiablecredentials.v1.IssueFromTemplateRequest) | [IssueResponse](#services.verifiablecredentials.v1.IssueResponse) |  |
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

