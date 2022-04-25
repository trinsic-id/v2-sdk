


# Protocol Documentation
<a name="top"></a>

This page documents the Protobuf Services and Messages which compose the Trinsic API.



<a name="sdk_options_v1_options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sdk/options/v1/options.proto


 <!-- end services -->


<a name="sdk-options-v1-ServiceOptions"></a>

### ServiceOptions
service options


| Field | Type | Description |
| ----- | ---- | ----------- |
| server_endpoint | [string](/reference/proto#string) | service endpoint |
| server_port | [int32](/reference/proto#int32) | service port |
| server_use_tls | [bool](/reference/proto#bool) | indicates if tls is used |
| auth_token | [string](/reference/proto#string) | default auth token for oberon security scheme |
| default_ecosystem | [string](/reference/proto#string) | ecosystem to use with endpoints that require it |





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
| SignIn | [SignInRequest](/reference/proto#services-account-v1-SignInRequest) | [SignInResponse](/reference/proto#services-account-v1-SignInResponse) | Sign in to an already existing account

rpc SIgnInConfirm (SignInConfirmRequest) returns (SignInConfirmResponse); |
| Info | [InfoRequest](/reference/proto#services-account-v1-InfoRequest) | [InfoResponse](/reference/proto#services-account-v1-InfoResponse) | Get account information |
| ListDevices | [ListDevicesRequest](/reference/proto#services-account-v1-ListDevicesRequest) | [ListDevicesResponse](/reference/proto#services-account-v1-ListDevicesResponse) | List all connected devices |
| RevokeDevice | [RevokeDeviceRequest](/reference/proto#services-account-v1-RevokeDeviceRequest) | [RevokeDeviceResponse](/reference/proto#services-account-v1-RevokeDeviceResponse) | Revoke device access to the account's cloud wallet |

 <!-- end services -->


<a name="services-account-v1-AccountDetails"></a>

### AccountDetails
Account Registration Details


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Account name (optional) |
| email | [string](/reference/proto#string) | Email account (required) |
| sms | [string](/reference/proto#string) | SMS number including country code (optional) |






<a name="services-account-v1-AccountEcosystem"></a>

### AccountEcosystem



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |
| name | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |
| uri | [string](/reference/proto#string) |  |






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






<a name="services-account-v1-InfoRequest"></a>

### InfoRequest







<a name="services-account-v1-InfoResponse"></a>

### InfoResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| details | [AccountDetails](/reference/proto#services-account-v1-AccountDetails) | The account details associated with the calling request context |
| ecosystems | [AccountEcosystem](/reference/proto#services-account-v1-AccountEcosystem)[] | **Deprecated.** any ecosystems the account has access to |
| wallet_id | [string](/reference/proto#string) | The wallet id associated with this account |
| device_id | [string](/reference/proto#string) | The device id associated with this account |
| ecosystem_id | [string](/reference/proto#string) | The ecosystem id associated with this account |






<a name="services-account-v1-ListDevicesRequest"></a>

### ListDevicesRequest







<a name="services-account-v1-ListDevicesResponse"></a>

### ListDevicesResponse







<a name="services-account-v1-RevokeDeviceRequest"></a>

### RevokeDeviceRequest







<a name="services-account-v1-RevokeDeviceResponse"></a>

### RevokeDeviceResponse







<a name="services-account-v1-SignInRequest"></a>

### SignInRequest
Request for creating new account


| Field | Type | Description |
| ----- | ---- | ----------- |
| details | [AccountDetails](/reference/proto#services-account-v1-AccountDetails) | Account registration details |
| invitation_code | [string](/reference/proto#string) | Invitation code associated with this registration This field is optional. |
| ecosystem_id | [string](/reference/proto#string) | EcosystemId to sign in. This field is optional and will be ignored if invitation_code is passed |






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



<a name="services_provider_v1_provider-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/provider/v1/provider.proto



<a name="services-provider-v1-Provider"></a>

### Service - Provider


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateEcosystem | [CreateEcosystemRequest](/reference/proto#services-provider-v1-CreateEcosystemRequest) | [CreateEcosystemResponse](/reference/proto#services-provider-v1-CreateEcosystemResponse) | Create new ecosystem and assign the authenticated user as owner |
| GenerateToken | [GenerateTokenRequest](/reference/proto#services-provider-v1-GenerateTokenRequest) | [GenerateTokenResponse](/reference/proto#services-provider-v1-GenerateTokenResponse) | Generates an unprotected authentication token that can be used to configure server side applications |
| Invite | [InviteRequest](/reference/proto#services-provider-v1-InviteRequest) | [InviteResponse](/reference/proto#services-provider-v1-InviteResponse) | Invite a user to the ecosystem |
| InvitationStatus | [InvitationStatusRequest](/reference/proto#services-provider-v1-InvitationStatusRequest) | [InvitationStatusResponse](/reference/proto#services-provider-v1-InvitationStatusResponse) | Check the invitation status |
| GetOberonKey | [GetOberonKeyRequest](/reference/proto#services-provider-v1-GetOberonKeyRequest) | [GetOberonKeyResponse](/reference/proto#services-provider-v1-GetOberonKeyResponse) | Returns the public key being used to create/verify oberon tokens |

 <!-- end services -->


<a name="services-provider-v1-CreateEcosystemRequest"></a>

### CreateEcosystemRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) | Globally unique name for the Ecosystem. This name will be part of the ecosystem specific URLs and namespaces. Allowed characters are lowercase letters, numbers, underscore and hyphen. |
| description | [string](/reference/proto#string) | Ecosystem description. This field is optional. |
| uri | [string](/reference/proto#string) | External URL associated with your organization or ecosystem entity. This field is optional |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) | The account details of the owner of the ecosystem |






<a name="services-provider-v1-CreateEcosystemResponse"></a>

### CreateEcosystemResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| ecosystem | [Ecosystem](/reference/proto#services-provider-v1-Ecosystem) | Details of the created ecosystem |
| profile | [services.account.v1.AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account profile for auth of the owner of the ecosystem |
| confirmation_method | [services.account.v1.ConfirmationMethod](/reference/proto#services-account-v1-ConfirmationMethod) | Indicates if confirmation of account is required. This settings is configured globally by the server administrator. |






<a name="services-provider-v1-Ecosystem"></a>

### Ecosystem



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |
| name | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |
| uri | [string](/reference/proto#string) |  |






<a name="services-provider-v1-GenerateTokenRequest"></a>

### GenerateTokenRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) | Optional description to identify this token |






<a name="services-provider-v1-GenerateTokenResponse"></a>

### GenerateTokenResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| profile | [services.account.v1.AccountProfile](/reference/proto#services-account-v1-AccountProfile) | Account authentication profile that contains unprotected token |






<a name="services-provider-v1-GetOberonKeyRequest"></a>

### GetOberonKeyRequest
request message for GetOberonKey






<a name="services-provider-v1-GetOberonKeyResponse"></a>

### GetOberonKeyResponse
response message for GetOberonKey


| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) | Oberon Public Key as RAW base64 URL encoded string |






<a name="services-provider-v1-InvitationStatusRequest"></a>

### InvitationStatusRequest
Request details for the status of onboarding
an individual or organization.
The reference_id passed is the response from the
`Onboard` method call


| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) |  |






<a name="services-provider-v1-InvitationStatusResponse"></a>

### InvitationStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [InvitationStatusResponse.Status](/reference/proto#services-provider-v1-InvitationStatusResponse-Status) |  |
| status_details | [string](/reference/proto#string) |  |






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
| participant | [ParticipantType](/reference/proto#services-provider-v1-ParticipantType) |  |
| description | [string](/reference/proto#string) |  |
| details | [services.account.v1.AccountDetails](/reference/proto#services-account-v1-AccountDetails) |  |






<a name="services-provider-v1-InviteRequest-DidCommInvitation"></a>

### InviteRequest.DidCommInvitation







<a name="services-provider-v1-InviteResponse"></a>

### InviteResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| invitation_id | [string](/reference/proto#string) |  |
| invitation_code | [string](/reference/proto#string) | Invitation Code that must be passed with the account 'SignIn' request to correlate this user with the invitation sent. |





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
| RegisterIssuer | [RegisterIssuerRequest](/reference/proto#services-trustregistry-v1-RegisterIssuerRequest) | [RegisterIssuerResponse](/reference/proto#services-trustregistry-v1-RegisterIssuerResponse) | Registers an authoritative issuer with a credential template |
| RegisterVerifier | [RegisterVerifierRequest](/reference/proto#services-trustregistry-v1-RegisterVerifierRequest) | [RegisterVerifierResponse](/reference/proto#services-trustregistry-v1-RegisterVerifierResponse) | Registers an authoritative verifier with a credential template |
| UnregisterIssuer | [UnregisterIssuerRequest](/reference/proto#services-trustregistry-v1-UnregisterIssuerRequest) | [UnregisterIssuerResponse](/reference/proto#services-trustregistry-v1-UnregisterIssuerResponse) | Removes an authoritative issuer with a credential template from the trust registry |
| UnregisterVerifier | [UnregisterVerifierRequest](/reference/proto#services-trustregistry-v1-UnregisterVerifierRequest) | [UnregisterVerifierResponse](/reference/proto#services-trustregistry-v1-UnregisterVerifierResponse) | Removes an authoritative verifier with a presentation template from the trust registry |
| CheckIssuerStatus | [CheckIssuerStatusRequest](/reference/proto#services-trustregistry-v1-CheckIssuerStatusRequest) | [CheckIssuerStatusResponse](/reference/proto#services-trustregistry-v1-CheckIssuerStatusResponse) |  |
| CheckVerifierStatus | [CheckVerifierStatusRequest](/reference/proto#services-trustregistry-v1-CheckVerifierStatusRequest) | [CheckVerifierStatusResponse](/reference/proto#services-trustregistry-v1-CheckVerifierStatusResponse) |  |
| FetchData | [FetchDataRequest](/reference/proto#services-trustregistry-v1-FetchDataRequest) | [FetchDataResponse](/reference/proto#services-trustregistry-v1-FetchDataResponse) stream |  |

 <!-- end services -->


<a name="services-trustregistry-v1-AddFrameworkRequest"></a>

### AddFrameworkRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework | [GovernanceFramework](/reference/proto#services-trustregistry-v1-GovernanceFramework) |  |






<a name="services-trustregistry-v1-AddFrameworkResponse"></a>

### AddFrameworkResponse







<a name="services-trustregistry-v1-CheckIssuerStatusRequest"></a>

### CheckIssuerStatusRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| credential_type_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-CheckIssuerStatusResponse"></a>

### CheckIssuerStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [RegistrationStatus](/reference/proto#services-trustregistry-v1-RegistrationStatus) |  |






<a name="services-trustregistry-v1-CheckVerifierStatusRequest"></a>

### CheckVerifierStatusRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| presentation_type_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-CheckVerifierStatusResponse"></a>

### CheckVerifierStatusResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| status | [RegistrationStatus](/reference/proto#services-trustregistry-v1-RegistrationStatus) |  |






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






<a name="services-trustregistry-v1-GovernanceFramework"></a>

### GovernanceFramework



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework_uri | [string](/reference/proto#string) |  |
| trust_registry_uri | [string](/reference/proto#string) |  |
| description | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-RegisterIssuerRequest"></a>

### RegisterIssuerRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| credential_type_uri | [string](/reference/proto#string) |  |
| valid_from_utc | [uint64](/reference/proto#uint64) |  |
| valid_until_utc | [uint64](/reference/proto#uint64) |  |
| governance_framework_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-RegisterIssuerResponse"></a>

### RegisterIssuerResponse







<a name="services-trustregistry-v1-RegisterVerifierRequest"></a>

### RegisterVerifierRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| presentation_type_uri | [string](/reference/proto#string) |  |
| valid_from_utc | [uint64](/reference/proto#uint64) |  |
| valid_until_utc | [uint64](/reference/proto#uint64) |  |
| governance_framework_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-RegisterVerifierResponse"></a>

### RegisterVerifierResponse







<a name="services-trustregistry-v1-RemoveFrameworkRequest"></a>

### RemoveFrameworkRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| governance_framework | [GovernanceFramework](/reference/proto#services-trustregistry-v1-GovernanceFramework) |  |






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
| count | [int32](/reference/proto#int32) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-UnregisterIssuerRequest"></a>

### UnregisterIssuerRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| credential_type_uri | [string](/reference/proto#string) |  |
| governance_framework_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-UnregisterIssuerResponse"></a>

### UnregisterIssuerResponse







<a name="services-trustregistry-v1-UnregisterVerifierRequest"></a>

### UnregisterVerifierRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| did_uri | [string](/reference/proto#string) |  |
| x509_cert | [string](/reference/proto#string) |  |
| presentation_type_uri | [string](/reference/proto#string) |  |
| governance_framework_uri | [string](/reference/proto#string) |  |






<a name="services-trustregistry-v1-UnregisterVerifierResponse"></a>

### UnregisterVerifierResponse






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
| UpdateItem | [UpdateItemRequest](/reference/proto#services-universalwallet-v1-UpdateItemRequest) | [UpdateItemResponse](/reference/proto#services-universalwallet-v1-UpdateItemResponse) | Insert an item into the wallet |
| DeleteItem | [DeleteItemRequest](/reference/proto#services-universalwallet-v1-DeleteItemRequest) | [DeleteItemResponse](/reference/proto#services-universalwallet-v1-DeleteItemResponse) | Delete an item from the wallet permanently |

 <!-- end services -->


<a name="services-universalwallet-v1-DeleteItemRequest"></a>

### DeleteItemRequest
Delete item request


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | item identifier of the record to delete |






<a name="services-universalwallet-v1-DeleteItemResponse"></a>

### DeleteItemResponse
Delete item response






<a name="services-universalwallet-v1-GetItemRequest"></a>

### GetItemRequest
Get item request object


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | The item identifier |






<a name="services-universalwallet-v1-GetItemResponse"></a>

### GetItemResponse
Get item response object


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_json | [string](/reference/proto#string) | The item data represented as stringified JSON |
| item_type | [string](/reference/proto#string) | User set item type that described the content of this item |






<a name="services-universalwallet-v1-InsertItemRequest"></a>

### InsertItemRequest
Insert item request


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_json | [string](/reference/proto#string) | the document to insert as stringified json |
| item_type | [string](/reference/proto#string) | optional item type ex. "VerifiableCredential" |






<a name="services-universalwallet-v1-InsertItemResponse"></a>

### InsertItemResponse
Insert item response


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | The item identifier of the inserted record |






<a name="services-universalwallet-v1-SearchRequest"></a>

### SearchRequest
Search request object


| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-universalwallet-v1-SearchResponse"></a>

### SearchResponse
Search response object


| Field | Type | Description |
| ----- | ---- | ----------- |
| items | [string](/reference/proto#string)[] |  |
| has_more | [bool](/reference/proto#bool) |  |
| continuation_token | [string](/reference/proto#string) | int32 count = 3; |






<a name="services-universalwallet-v1-UpdateItemRequest"></a>

### UpdateItemRequest
Update item request object


| Field | Type | Description |
| ----- | ---- | ----------- |
| item_id | [string](/reference/proto#string) | The item identifier |
| item_type | [string](/reference/proto#string) | The item type that described the content of this item |






<a name="services-universalwallet-v1-UpdateItemResponse"></a>

### UpdateItemResponse
Update item response object





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
| Create | [CreateCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest) | [CreateCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse) |  |
| Get | [GetCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest) | [GetCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse) |  |
| List | [ListCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest) | [ListCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse) |  |
| Search | [SearchCredentialTemplatesRequest](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest) | [SearchCredentialTemplatesResponse](/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse) |  |
| Delete | [DeleteCredentialTemplateRequest](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest) | [DeleteCredentialTemplateResponse](/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse) |  |

 <!-- end services -->


<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest"></a>

### CreateCredentialTemplateRequest
Request to create new template


| Field | Type | Description |
| ----- | ---- | ----------- |
| name | [string](/reference/proto#string) |  |
| fields | [CreateCredentialTemplateRequest.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry)[] |  |
| allow_additional_fields | [bool](/reference/proto#bool) |  |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry"></a>

### CreateCredentialTemplateRequest.FieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [TemplateField](/reference/proto#services-verifiablecredentials-templates-v1-TemplateField) |  |






<a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse"></a>

### CreateCredentialTemplateResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| data | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) |  |






<a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest"></a>

### DeleteCredentialTemplateRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse"></a>

### DeleteCredentialTemplateResponse







<a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest"></a>

### GetCredentialTemplateRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse"></a>

### GetCredentialTemplateResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| template | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) |  |






<a name="services-verifiablecredentials-templates-v1-GetTemplateRequest"></a>

### GetTemplateRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-GetTemplateResponse"></a>

### GetTemplateResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| data | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData) |  |






<a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest"></a>

### ListCredentialTemplatesRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SELECT * FROM c WHERE c.name = 'Diploma' |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse"></a>

### ListCredentialTemplatesResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| templates | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData)[] |  |
| has_more_results | [bool](/reference/proto#bool) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-ListTemplatesRequest"></a>

### ListTemplatesRequest







<a name="services-verifiablecredentials-templates-v1-ListTemplatesResponse"></a>

### ListTemplatesResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| templates | [TemplateData](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData)[] |  |






<a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest"></a>

### SearchCredentialTemplatesRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| query | [string](/reference/proto#string) | SELECT * FROM c WHERE c.name = 'Diploma' |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse"></a>

### SearchCredentialTemplatesResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| items_json | [string](/reference/proto#string) |  |
| has_more | [bool](/reference/proto#bool) |  |
| count | [int32](/reference/proto#int32) |  |
| continuation_token | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-TemplateData"></a>

### TemplateData



| Field | Type | Description |
| ----- | ---- | ----------- |
| id | [string](/reference/proto#string) |  |
| name | [string](/reference/proto#string) |  |
| version | [int32](/reference/proto#int32) |  |
| fields | [TemplateData.FieldsEntry](/reference/proto#services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry)[] |  |
| allow_additional_fields | [bool](/reference/proto#bool) |  |
| schema_uri | [string](/reference/proto#string) |  |
| context_uri | [string](/reference/proto#string) |  |
| ecosystem_id | [string](/reference/proto#string) |  |
| type | [string](/reference/proto#string) |  |
| created_by | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry"></a>

### TemplateData.FieldsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [TemplateField](/reference/proto#services-verifiablecredentials-templates-v1-TemplateField) |  |






<a name="services-verifiablecredentials-templates-v1-TemplateField"></a>

### TemplateField



| Field | Type | Description |
| ----- | ---- | ----------- |
| description | [string](/reference/proto#string) |  |
| optional | [bool](/reference/proto#bool) |  |
| type | [FieldType](/reference/proto#services-verifiablecredentials-templates-v1-FieldType) |  |





 <!-- end messages -->


<a name="services-verifiablecredentials-templates-v1-FieldType"></a>

### FieldType


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
request object to check the status of the revocation entry


| Field | Type | Description |
| ----- | ---- | ----------- |
| credential_status_id | [string](/reference/proto#string) | the credential status id |






<a name="services-verifiablecredentials-v1-CheckStatusResponse"></a>

### CheckStatusResponse
response object for checking the status of revocation entry


| Field | Type | Description |
| ----- | ---- | ----------- |
| revoked | [bool](/reference/proto#bool) | indicates if the status is revoked |






<a name="services-verifiablecredentials-v1-CreateProofRequest"></a>

### CreateProofRequest
Create Proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| reveal_document_json | [string](/reference/proto#string) | Optional document that describes which fields should be revealed in the generated proof. If specified, this document must be a valid JSON-LD frame. If this field is not specified, a default reveal document will be used and all fields in the signed document will be revealed |
| item_id | [string](/reference/proto#string) | The item identifier that contains a record with a verifiable credential to be used for generating the proof. |
| document_json | [string](/reference/proto#string) | A document that contains a valid verifiable credential with an unbound signature. The proof will be derived from this document directly. The document will not be stored in the wallet. |






<a name="services-verifiablecredentials-v1-CreateProofResponse"></a>

### CreateProofResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| proof_document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-IssueFromTemplateRequest"></a>

### IssueFromTemplateRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| template_id | [string](/reference/proto#string) |  |
| values_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-IssueFromTemplateResponse"></a>

### IssueFromTemplateResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-IssueRequest"></a>

### IssueRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-IssueResponse"></a>

### IssueResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| signed_document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-SendRequest"></a>

### SendRequest



| Field | Type | Description |
| ----- | ---- | ----------- |
| email | [string](/reference/proto#string) |  |
| did_uri | [string](/reference/proto#string) |  |
| didcomm_invitation_json | [string](/reference/proto#string) |  |
| document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-SendResponse"></a>

### SendResponse







<a name="services-verifiablecredentials-v1-UpdateStatusRequest"></a>

### UpdateStatusRequest
request object to update the status of the revocation entry


| Field | Type | Description |
| ----- | ---- | ----------- |
| credential_status_id | [string](/reference/proto#string) | the credential status id |
| revoked | [bool](/reference/proto#bool) | indicates if the status is revoked |






<a name="services-verifiablecredentials-v1-UpdateStatusResponse"></a>

### UpdateStatusResponse
response object for update of status of revocation entry






<a name="services-verifiablecredentials-v1-ValidationMessage"></a>

### ValidationMessage
validation message that contains results and error messages


| Field | Type | Description |
| ----- | ---- | ----------- |
| is_valid | [bool](/reference/proto#bool) | the validation result |
| messages | [string](/reference/proto#string)[] | set of messages that contain validation results |






<a name="services-verifiablecredentials-v1-VerifyProofRequest"></a>

### VerifyProofRequest
Verify Proof


| Field | Type | Description |
| ----- | ---- | ----------- |
| proof_document_json | [string](/reference/proto#string) |  |






<a name="services-verifiablecredentials-v1-VerifyProofResponse"></a>

### VerifyProofResponse



| Field | Type | Description |
| ----- | ---- | ----------- |
| is_valid | [bool](/reference/proto#bool) | Indicates if the proof is valid |
| validation_messages | [string](/reference/proto#string)[] | **Deprecated.**  |
| validation_results | [VerifyProofResponse.ValidationResultsEntry](/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry)[] | Validation messages that describe invalid verifications based on different factors, such as schema validation, proof verification, revocation registry membership, etc. If the proof is not valid, this field will contain detailed results where this verification failed. |






<a name="services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry"></a>

### VerifyProofResponse.ValidationResultsEntry



| Field | Type | Description |
| ----- | ---- | ----------- |
| key | [string](/reference/proto#string) |  |
| value | [ValidationMessage](/reference/proto#services-verifiablecredentials-v1-ValidationMessage) |  |





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
