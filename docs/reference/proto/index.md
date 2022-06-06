


# Protocol Documentation
<a name="top"></a>

This page documents the Protobuf Services and Messages which compose the Trinsic API.



<a name="sdk_options_v1_options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sdk/options/v1/options.proto


 <!-- end services -->

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="sdk-options-v1-ServiceOptions">
    <div class="proto-obj-name"><a name="sdk-options-v1-ServiceOptions" href="/reference/proto#sdk-options-v1-ServiceOptions">ServiceOptions</a></div>
    <div class="proto-obj-description" markdown>Configuration for Trinsic SDK Services</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">server_endpoint</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Trinsic API endpoint; defaults to `prod.trinsic.cloud`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">server_port</div>
            <div class="proto-field-type">
              
                int32
              
            </div>
            <div class="proto-field-description">Trinsic API port; defaults to `443`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">server_use_tls</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether TLS is enabled between SDK and Trinsic API; defaults to `true`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">auth_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Authentication token for SDK calls; defaults to empty string (unauthenticated)</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">default_ecosystem</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Default ecosystem ID to use for various SDK calls; defaults to `default`</div>
            
          </div>
        
      </div>
    
  </div>
 
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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-account-v1-AccountDetails">
    <div class="proto-obj-name"><a name="services-account-v1-AccountDetails" href="/reference/proto#services-account-v1-AccountDetails">AccountDetails</a></div>
    <div class="proto-obj-description" markdown>Account registration details</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Account name</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">email</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Email account</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">sms</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">SMS number including country code</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-AccountEcosystem">
    <div class="proto-obj-name"><a name="services-account-v1-AccountEcosystem" href="/reference/proto#services-account-v1-AccountEcosystem">AccountEcosystem</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-AccountProfile">
    <div class="proto-obj-name"><a name="services-account-v1-AccountProfile" href="/reference/proto#services-account-v1-AccountProfile">AccountProfile</a></div>
    <div class="proto-obj-description" markdown>Device profile containing sensitive authentication data.
This information should be stored securely</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">profile_type</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">The type of profile, used to differentiate between protocol schemes or versions</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">auth_data</div>
            <div class="proto-field-type">
              
                bytes
              
            </div>
            <div class="proto-field-description">Auth data containg information about the current device access</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">auth_token</div>
            <div class="proto-field-type">
              
                bytes
              
            </div>
            <div class="proto-field-description">Secure token issued by server used to generate zero-knowledge proofs</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">protection</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-TokenProtection">TokenProtection</a>
              
            </div>
            <div class="proto-field-description">Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication.</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-TokenProtection');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-InfoRequest">
    <div class="proto-obj-name"><a name="services-account-v1-InfoRequest" href="/reference/proto#services-account-v1-InfoRequest">InfoRequest</a></div>
    <div class="proto-obj-description" markdown>Request for information about the account used to make the request</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-InfoResponse">
    <div class="proto-obj-name"><a name="services-account-v1-InfoResponse" href="/reference/proto#services-account-v1-InfoResponse">InfoResponse</a></div>
    <div class="proto-obj-description" markdown>Information about the account used to make the request</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">details</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountDetails">AccountDetails</a>
              
            </div>
            <div class="proto-field-description">The account details associated with the calling request context</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountDetails');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">ecosystems</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountEcosystem">AccountEcosystem</a>[]
              
            </div>
            <div class="proto-field-description">**Deprecated.** Use `ecosystem_id` instead</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountEcosystem');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">wallet_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">The wallet ID associated with this account</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">device_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">The device ID associated with this account session</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">ecosystem_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">The ecosystem ID within which this account resides</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">public_did</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">The public DID associated with this account. This DID is used as "issuer" when signing verifiable credentials</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-ListDevicesRequest">
    <div class="proto-obj-name"><a name="services-account-v1-ListDevicesRequest" href="/reference/proto#services-account-v1-ListDevicesRequest">ListDevicesRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-ListDevicesResponse">
    <div class="proto-obj-name"><a name="services-account-v1-ListDevicesResponse" href="/reference/proto#services-account-v1-ListDevicesResponse">ListDevicesResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-RevokeDeviceRequest">
    <div class="proto-obj-name"><a name="services-account-v1-RevokeDeviceRequest" href="/reference/proto#services-account-v1-RevokeDeviceRequest">RevokeDeviceRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-RevokeDeviceResponse">
    <div class="proto-obj-name"><a name="services-account-v1-RevokeDeviceResponse" href="/reference/proto#services-account-v1-RevokeDeviceResponse">RevokeDeviceResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-SignInRequest">
    <div class="proto-obj-name"><a name="services-account-v1-SignInRequest" href="/reference/proto#services-account-v1-SignInRequest">SignInRequest</a></div>
    <div class="proto-obj-description" markdown>Request for creating or signing into an account</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">details</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountDetails">AccountDetails</a>
              
            </div>
            <div class="proto-field-description">Account registration details</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountDetails');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">invitation_code</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Invitation code associated with this registration</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">ecosystem_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of Ecosystem to sign into. Ignored if `invitation_code` is passed</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-SignInResponse">
    <div class="proto-obj-name"><a name="services-account-v1-SignInResponse" href="/reference/proto#services-account-v1-SignInResponse">SignInResponse</a></div>
    <div class="proto-obj-description" markdown>Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">confirmation_method</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-ConfirmationMethod">ConfirmationMethod</a>
              
            </div>
            <div class="proto-field-description">Indicates if confirmation of account is required. This settings is configured globally by the server administrator.</div>
            
              
              
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">profile</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountProfile">AccountProfile</a>
              
            </div>
            <div class="proto-field-description">Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data.</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountProfile');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-account-v1-TokenProtection">
    <div class="proto-obj-name"><a name="services-account-v1-TokenProtection" href="/reference/proto#services-account-v1-TokenProtection">TokenProtection</a></div>
    <div class="proto-obj-description" markdown>Token protection info</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">enabled</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Indicates if token is protected using a PIN, security code, HSM secret, etc.</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">method</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-ConfirmationMethod">ConfirmationMethod</a>
              
            </div>
            <div class="proto-field-description">The method used to protect the token</div>
            
              
              
            
          </div>
        
      </div>
    
  </div>
 
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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-common-v1-Nonce">
    <div class="proto-obj-name"><a name="services-common-v1-Nonce" href="/reference/proto#services-common-v1-Nonce">Nonce</a></div>
    <div class="proto-obj-description" markdown>Nonce used to generate an oberon proof</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">timestamp</div>
            <div class="proto-field-type">
              
                int64
              
            </div>
            <div class="proto-field-description">UTC unix millisecond timestamp the request was made</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">request_hash</div>
            <div class="proto-field-type">
              
                bytes
              
            </div>
            <div class="proto-field-description">blake3256 hash of the request body</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-common-v1-ServerConfig">
    <div class="proto-obj-name"><a name="services-common-v1-ServerConfig" href="/reference/proto#services-common-v1-ServerConfig">ServerConfig</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">endpoint</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">service endpoint</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">port</div>
            <div class="proto-field-type">
              
                int32
              
            </div>
            <div class="proto-field-description">service port</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">use_tls</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">indicates if tls is used</div>
            
          </div>
        
      </div>
    
  </div>
 
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

<!-- start messages -->
 
<!-- end messages -->

 <!-- end enums -->

 <!-- end HasExtensions -->



<a name="services_options_field-options-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## services/options/field-options.proto


 <!-- end services -->

<!-- start messages -->
 
<!-- end messages -->

 <!-- end enums -->


<a name="services_options_field-options-proto-extensions"></a>

### File-level Extensions
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
| optional | bool | .google.protobuf.FieldOptions | 60000 | Whether field is optional in Trinsic's backend. This is not the same as an `optional` protobuf label; it only impacts documentation generation for the field. |

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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-provider-v1-CreateEcosystemRequest">
    <div class="proto-obj-name"><a name="services-provider-v1-CreateEcosystemRequest" href="/reference/proto#services-provider-v1-CreateEcosystemRequest">CreateEcosystemRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Globally unique name for the Ecosystem. This name will be part of the ecosystem specific URLs and namespaces. Allowed characters are lowercase letters, numbers, underscore and hyphen.</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Ecosystem description</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">External URL associated with your organization or ecosystem entity</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">details</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountDetails">AccountDetails</a>
              
            </div>
            <div class="proto-field-description">The account details of the owner of the ecosystem</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountDetails');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-CreateEcosystemResponse">
    <div class="proto-obj-name"><a name="services-provider-v1-CreateEcosystemResponse" href="/reference/proto#services-provider-v1-CreateEcosystemResponse">CreateEcosystemResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">ecosystem</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-provider-v1-Ecosystem">Ecosystem</a>
              
            </div>
            <div class="proto-field-description">Details of the created ecosystem</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-provider-v1-Ecosystem');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">profile</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountProfile">AccountProfile</a>
              
            </div>
            <div class="proto-field-description">Account profile for auth of the owner of the ecosystem</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountProfile');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">confirmation_method</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-ConfirmationMethod">ConfirmationMethod</a>
              
            </div>
            <div class="proto-field-description">Indicates if confirmation of account is required. This setting is configured globally by the server administrator.</div>
            
              
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-Ecosystem">
    <div class="proto-obj-name"><a name="services-provider-v1-Ecosystem" href="/reference/proto#services-provider-v1-Ecosystem">Ecosystem</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-GenerateTokenRequest">
    <div class="proto-obj-name"><a name="services-provider-v1-GenerateTokenRequest" href="/reference/proto#services-provider-v1-GenerateTokenRequest">GenerateTokenRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Description to identify this token</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-GenerateTokenResponse">
    <div class="proto-obj-name"><a name="services-provider-v1-GenerateTokenResponse" href="/reference/proto#services-provider-v1-GenerateTokenResponse">GenerateTokenResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">profile</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountProfile">AccountProfile</a>
              
            </div>
            <div class="proto-field-description">Account authentication profile that contains unprotected token</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountProfile');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-GetOberonKeyRequest">
    <div class="proto-obj-name"><a name="services-provider-v1-GetOberonKeyRequest" href="/reference/proto#services-provider-v1-GetOberonKeyRequest">GetOberonKeyRequest</a></div>
    <div class="proto-obj-description" markdown>request message for GetOberonKey</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-GetOberonKeyResponse">
    <div class="proto-obj-name"><a name="services-provider-v1-GetOberonKeyResponse" href="/reference/proto#services-provider-v1-GetOberonKeyResponse">GetOberonKeyResponse</a></div>
    <div class="proto-obj-description" markdown>response message for GetOberonKey</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">key</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Oberon Public Key as RAW base64 URL encoded string</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-InvitationStatusRequest">
    <div class="proto-obj-name"><a name="services-provider-v1-InvitationStatusRequest" href="/reference/proto#services-provider-v1-InvitationStatusRequest">InvitationStatusRequest</a></div>
    <div class="proto-obj-description" markdown>Request details for the status of onboarding
an individual or organization.
The reference_id passed is the response from the
`Onboard` method call</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">invitation_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of invitation</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-InvitationStatusResponse">
    <div class="proto-obj-name"><a name="services-provider-v1-InvitationStatusResponse" href="/reference/proto#services-provider-v1-InvitationStatusResponse">InvitationStatusResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">status</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-provider-v1-InvitationStatusResponse-Status">Status</a>
              
            </div>
            <div class="proto-field-description">Status of invitation</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-provider-v1-InvitationStatusResponse-Status');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">status_details</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Human-readable string with details about invitation status</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-Invite">
    <div class="proto-obj-name"><a name="services-provider-v1-Invite" href="/reference/proto#services-provider-v1-Invite">Invite</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">code</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">created</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">accepted</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">expires</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-InviteRequest">
    <div class="proto-obj-name"><a name="services-provider-v1-InviteRequest" href="/reference/proto#services-provider-v1-InviteRequest">InviteRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">participant</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-provider-v1-ParticipantType">ParticipantType</a>
              
            </div>
            <div class="proto-field-description">Type of participant being invited (individual/organization)</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-provider-v1-ParticipantType');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Description of invitation</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">details</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-account-v1-AccountDetails">AccountDetails</a>
              
            </div>
            <div class="proto-field-description">Account details of invitee</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-account-v1-AccountDetails');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-InviteRequest-DidCommInvitation">
    <div class="proto-obj-name"><a name="services-provider-v1-InviteRequest-DidCommInvitation" href="/reference/proto#services-provider-v1-InviteRequest-DidCommInvitation">InviteRequest.DidCommInvitation</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-provider-v1-InviteResponse">
    <div class="proto-obj-name"><a name="services-provider-v1-InviteResponse" href="/reference/proto#services-provider-v1-InviteResponse">InviteResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">invitation_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of created invitation</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">invitation_code</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Invitation Code that must be passed with the account 'SignIn' request to correlate this user with the invitation sent.</div>
            
          </div>
        
      </div>
    
  </div>
 
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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-AddFrameworkRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-AddFrameworkRequest" href="/reference/proto#services-trustregistry-v1-AddFrameworkRequest">AddFrameworkRequest</a></div>
    <div class="proto-obj-description" markdown>Register new ecosystem governance framework</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">governance_framework_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-AddFrameworkResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-AddFrameworkResponse" href="/reference/proto#services-trustregistry-v1-AddFrameworkResponse">AddFrameworkResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Unique framework identifier</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">governing_authority</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">trust_registry</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-FetchDataRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-FetchDataRequest" href="/reference/proto#services-trustregistry-v1-FetchDataRequest">FetchDataRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">governance_framework_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">query</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-FetchDataResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-FetchDataResponse" href="/reference/proto#services-trustregistry-v1-FetchDataResponse">FetchDataResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">response_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">has_more_results</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-GetMembershipStatusRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-GetMembershipStatusRequest" href="/reference/proto#services-trustregistry-v1-GetMembershipStatusRequest">GetMembershipStatusRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">governance_framework_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">did_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">x509_cert</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">schema_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-GetMembershipStatusResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-GetMembershipStatusResponse" href="/reference/proto#services-trustregistry-v1-GetMembershipStatusResponse">GetMembershipStatusResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">status</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-trustregistry-v1-RegistrationStatus">RegistrationStatus</a>
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-trustregistry-v1-RegistrationStatus');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-GovernanceFramework">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-GovernanceFramework" href="/reference/proto#services-trustregistry-v1-GovernanceFramework">GovernanceFramework</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">governance_framework_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">trust_registry_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-RegisterMemberRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-RegisterMemberRequest" href="/reference/proto#services-trustregistry-v1-RegisterMemberRequest">RegisterMemberRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">did_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">wallet_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">email</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">schema_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">valid_from_utc</div>
            <div class="proto-field-type">
              
                uint64
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">valid_until_utc</div>
            <div class="proto-field-type">
              
                uint64
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">framework_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">the id of the governance framework</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-RegisterMemberResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-RegisterMemberResponse" href="/reference/proto#services-trustregistry-v1-RegisterMemberResponse">RegisterMemberResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-RemoveFrameworkRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-RemoveFrameworkRequest" href="/reference/proto#services-trustregistry-v1-RemoveFrameworkRequest">RemoveFrameworkRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-RemoveFrameworkResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-RemoveFrameworkResponse" href="/reference/proto#services-trustregistry-v1-RemoveFrameworkResponse">RemoveFrameworkResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-SearchRegistryRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-SearchRegistryRequest" href="/reference/proto#services-trustregistry-v1-SearchRegistryRequest">SearchRegistryRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">query</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">SELECT c from c where c.type == 'GovernanceFramework'</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-SearchRegistryResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-SearchRegistryResponse" href="/reference/proto#services-trustregistry-v1-SearchRegistryResponse">SearchRegistryResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">items_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">has_more</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-UnregisterMemberRequest">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-UnregisterMemberRequest" href="/reference/proto#services-trustregistry-v1-UnregisterMemberRequest">UnregisterMemberRequest</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">did_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">wallet_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">email</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">schema_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">framework_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-trustregistry-v1-UnregisterMemberResponse">
    <div class="proto-obj-name"><a name="services-trustregistry-v1-UnregisterMemberResponse" href="/reference/proto#services-trustregistry-v1-UnregisterMemberResponse">UnregisterMemberResponse</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
  </div>
 
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
| UpdateItem | [UpdateItemRequest](/reference/proto#services-universalwallet-v1-UpdateItemRequest) | [UpdateItemResponse](/reference/proto#services-universalwallet-v1-UpdateItemResponse) | Update an item in the wallet |
| DeleteItem | [DeleteItemRequest](/reference/proto#services-universalwallet-v1-DeleteItemRequest) | [DeleteItemResponse](/reference/proto#services-universalwallet-v1-DeleteItemResponse) | Delete an item from the wallet permanently |

 <!-- end services -->

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-DeleteItemRequest">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-DeleteItemRequest" href="/reference/proto#services-universalwallet-v1-DeleteItemRequest">DeleteItemRequest</a></div>
    <div class="proto-obj-description" markdown>Request to delete an item in a wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of item to delete</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-DeleteItemResponse">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-DeleteItemResponse" href="/reference/proto#services-universalwallet-v1-DeleteItemResponse">DeleteItemResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `DeleteItemRequest`</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-GetItemRequest">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-GetItemRequest" href="/reference/proto#services-universalwallet-v1-GetItemRequest">GetItemRequest</a></div>
    <div class="proto-obj-description" markdown>Request to fetch an item from wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of item in wallet</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-GetItemResponse">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-GetItemResponse" href="/reference/proto#services-universalwallet-v1-GetItemResponse">GetItemResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `GetItemRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Item data as a JSON string</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_type</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Type of item specified when item was inserted into wallet</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-InsertItemRequest">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-InsertItemRequest" href="/reference/proto#services-universalwallet-v1-InsertItemRequest">InsertItemRequest</a></div>
    <div class="proto-obj-description" markdown>Request to insert a JSON document into a wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Document to insert; must be stringified JSON</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_type</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Item type (ex. "VerifiableCredential")</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-InsertItemResponse">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-InsertItemResponse" href="/reference/proto#services-universalwallet-v1-InsertItemResponse">InsertItemResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `InsertItemRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of item inserted into wallet</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-SearchRequest">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-SearchRequest" href="/reference/proto#services-universalwallet-v1-SearchRequest">SearchRequest</a></div>
    <div class="proto-obj-description" markdown>Request to search items in wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">query</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">SQL Query to execute against items in wallet</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Token provided by previous `SearchResponse` if more data is available for query</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-SearchResponse">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-SearchResponse" href="/reference/proto#services-universalwallet-v1-SearchResponse">SearchResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `SearchRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">items</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Array of query results, as JSON strings</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">has_more</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether more results are available for this query via `continuation_token`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Token to fetch next set of results via `SearchRequest`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-UpdateItemRequest">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-UpdateItemRequest" href="/reference/proto#services-universalwallet-v1-UpdateItemRequest">UpdateItemRequest</a></div>
    <div class="proto-obj-description" markdown>Request to update item in wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of item in wallet</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_type</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Item type (ex. "VerifiableCredential")</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-universalwallet-v1-UpdateItemResponse">
    <div class="proto-obj-name"><a name="services-universalwallet-v1-UpdateItemResponse" href="/reference/proto#services-universalwallet-v1-UpdateItemResponse">UpdateItemResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `UpdateItemRequest`</div>
    
    
  </div>
 
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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest">CreateCredentialTemplateRequest</a></div>
    <div class="proto-obj-description" markdown>Request to create a new template</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Name of new template</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">fields</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry">FieldsEntry</a>[]
              
            </div>
            <div class="proto-field-description">Fields which compose the template</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">allow_additional_fields</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether credentials may be issued against this template which have fields not specified in `fields`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry" href="/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateRequest-FieldsEntry">CreateCredentialTemplateRequest.FieldsEntry</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">key</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">value</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateField">TemplateField</a>
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateField');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-CreateCredentialTemplateResponse">CreateCredentialTemplateResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `CreateCredentialTemplateRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">data</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a>
              
            </div>
            <div class="proto-field-description">Created template</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateRequest">DeleteCredentialTemplateRequest</a></div>
    <div class="proto-obj-description" markdown>Request to delete a template by ID</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of template to delete</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-DeleteCredentialTemplateResponse">DeleteCredentialTemplateResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `DeleteCredentialTemplateRequest`</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateRequest">GetCredentialTemplateRequest</a></div>
    <div class="proto-obj-description" markdown>Request to fetch a template by ID</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of template to fetch</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-GetCredentialTemplateResponse">GetCredentialTemplateResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `GetCredentialTemplateRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">template</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a>
              
            </div>
            <div class="proto-field-description">Template fetched by ID</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-GetTemplateRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-GetTemplateRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-GetTemplateRequest">GetTemplateRequest</a></div>
    <div class="proto-obj-description" markdown>Unused</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-GetTemplateResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-GetTemplateResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-GetTemplateResponse">GetTemplateResponse</a></div>
    <div class="proto-obj-description" markdown>Unused</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">data</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a>
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesRequest">ListCredentialTemplatesRequest</a></div>
    <div class="proto-obj-description" markdown>Request to list templates using a SQL query</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">query</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Token provided by previous `ListCredentialTemplatesResponse` if more data is available for query</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-ListCredentialTemplatesResponse">ListCredentialTemplatesResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `ListCredentialTemplatesRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">templates</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a>[]
              
            </div>
            <div class="proto-field-description">Templates found by query</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">has_more_results</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether more results are available for this query via `continuation_token`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Token to fetch next set of resuts via `ListCredentialTemplatesRequest`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-ListTemplatesRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-ListTemplatesRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-ListTemplatesRequest">ListTemplatesRequest</a></div>
    <div class="proto-obj-description" markdown>Unused</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-ListTemplatesResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-ListTemplatesResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-ListTemplatesResponse">ListTemplatesResponse</a></div>
    <div class="proto-obj-description" markdown>Unused</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        

          <div class="proto-field">
            <div class="proto-field-name">templates</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a>[]
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest" href="/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesRequest">SearchCredentialTemplatesRequest</a></div>
    <div class="proto-obj-description" markdown>Request to search templates using a SQL query</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">query</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Token provided by previous `SearchCredentialTemplatesResponse` if more data is available for query</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse" href="/reference/proto#services-verifiablecredentials-templates-v1-SearchCredentialTemplatesResponse">SearchCredentialTemplatesResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `SearchCredentialTemplatesRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">items_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Raw JSON data returned from query</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">has_more</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether more results are available for this query via `continuation_token`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">continuation_token</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Count of items in `items_json` int32 count = 3; unpopulated and unused Token to fetch next set of results via `SearchCredentialTemplatesRequest`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-TemplateData">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-TemplateData" href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData">TemplateData</a></div>
    <div class="proto-obj-description" markdown>Credential Template</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Template ID</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">name</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Template name</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">version</div>
            <div class="proto-field-type">
              
                int32
              
            </div>
            <div class="proto-field-description">Template version number</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">fields</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry">FieldsEntry</a>[]
              
            </div>
            <div class="proto-field-description">Fields defined for the template</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">allow_additional_fields</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether credentials issued against this template may contain fields not defined by template</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">schema_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">URI pointing to template JSON schema document</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">context_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">URI pointing to template JSON-LD context document</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">ecosystem_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of ecosystem in which template resides</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">type</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Template type (`VerifiableCredential`)</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">created_by</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of template creator</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry" href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateData-FieldsEntry">TemplateData.FieldsEntry</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">key</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">value</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateField">TemplateField</a>
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-TemplateField');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-templates-v1-TemplateField">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-templates-v1-TemplateField" href="/reference/proto#services-verifiablecredentials-templates-v1-TemplateField">TemplateField</a></div>
    <div class="proto-obj-description" markdown>A field defined in a template</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">description</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Human-readable description of the field</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">optional</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether this field may be omitted when a credential is issued against the template</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">type</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-templates-v1-FieldType">FieldType</a>
              
            </div>
            <div class="proto-field-description">The type of the field</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-templates-v1-FieldType');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>
 
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

<!-- start messages -->

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-CheckStatusRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-CheckStatusRequest" href="/reference/proto#services-verifiablecredentials-v1-CheckStatusRequest">CheckStatusRequest</a></div>
    <div class="proto-obj-description" markdown>Request to check a credential's revocation status</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">credential_status_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Credential Status ID to check</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-CheckStatusResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-CheckStatusResponse" href="/reference/proto#services-verifiablecredentials-v1-CheckStatusResponse">CheckStatusResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `CheckStatusRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">revoked</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">The credential's revocation status</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-CreateProofRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-CreateProofRequest" href="/reference/proto#services-verifiablecredentials-v1-CreateProofRequest">CreateProofRequest</a></div>
    <div class="proto-obj-description" markdown>Request to create a proof for a Verifiable Credential using public key tied to caller.
Either `item_id` or `document_json` may be provided, not both.</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">reveal_document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">A valid JSON-LD frame describing which fields should be revealed in the generated proof. If unspecified, all fields in the document will be revealed</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">item_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of wallet item stored in a Trinsic cloud wallet</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">A valid JSON-LD Verifiable Credential document string with an unbound signature. The proof will be derived from this document directly. The document will not be stored in the wallet.</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-CreateProofResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-CreateProofResponse" href="/reference/proto#services-verifiablecredentials-v1-CreateProofResponse">CreateProofResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `CreateProofRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">proof_document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Valid JSON-LD proof for the specified credential</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-IssueFromTemplateRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-IssueFromTemplateRequest" href="/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateRequest">IssueFromTemplateRequest</a></div>
    <div class="proto-obj-description" markdown>Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">template_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">ID of template to use</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">values_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">JSON document string with keys corresponding to the fields of the template referenced by `template_id`</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">framework_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Governance framework ID to use with issuance of this credential. If specified, the issued credential will contain extended issuer metadata with membership info for the given ecosystem governance framework (EGF)</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-IssueFromTemplateResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-IssueFromTemplateResponse" href="/reference/proto#services-verifiablecredentials-v1-IssueFromTemplateResponse">IssueFromTemplateResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `IssueFromTemplateRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Verifiable Credential document, in JSON-LD form, constructed from the specified template and values; signed with public key tied to caller of `IssueFromTemplateRequest`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-IssueRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-IssueRequest" href="/reference/proto#services-verifiablecredentials-v1-IssueRequest">IssueRequest</a></div>
    <div class="proto-obj-description" markdown>Request to sign a JSON-LD Credential using public key tied to caller</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Valid JSON-LD Credential document to be signed, in string form</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-IssueResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-IssueResponse" href="/reference/proto#services-verifiablecredentials-v1-IssueResponse">IssueResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `IssueRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">signed_document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Verifiable Credential document, signed with public key tied to caller of `IssueRequest`</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-SendRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-SendRequest" href="/reference/proto#services-verifiablecredentials-v1-SendRequest">SendRequest</a></div>
    <div class="proto-obj-description" markdown>Request to send a document to another user's wallet</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">email</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Email address of user to send item to</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">did_uri</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">DID of recipient (presently unsupported)</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">didcomm_invitation_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">DIDComm out-of-band invitation JSON (presently unsupported)</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">JSON document to send to recipient</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-SendResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-SendResponse" href="/reference/proto#services-verifiablecredentials-v1-SendResponse">SendResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `SendRequest`</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-UpdateStatusRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-UpdateStatusRequest" href="/reference/proto#services-verifiablecredentials-v1-UpdateStatusRequest">UpdateStatusRequest</a></div>
    <div class="proto-obj-description" markdown>Request to update a credential's revocation status</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">credential_status_id</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">Credential Status ID to update</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">revoked</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">New revocation status of credential</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-UpdateStatusResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-UpdateStatusResponse" href="/reference/proto#services-verifiablecredentials-v1-UpdateStatusResponse">UpdateStatusResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `UpdateStatusRequest`</div>
    
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-ValidationMessage">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-ValidationMessage" href="/reference/proto#services-verifiablecredentials-v1-ValidationMessage">ValidationMessage</a></div>
    <div class="proto-obj-description" markdown>Result of a validation check on a proof</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">is_valid</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether or not this validation check passed</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">messages</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">If validation failed, contains messages explaining why</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-VerifyProofRequest">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-VerifyProofRequest" href="/reference/proto#services-verifiablecredentials-v1-VerifyProofRequest">VerifyProofRequest</a></div>
    <div class="proto-obj-description" markdown>Request to verify a proof</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">proof_document_json</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">JSON-LD proof document string to verify</div>
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-VerifyProofResponse">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-VerifyProofResponse" href="/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse">VerifyProofResponse</a></div>
    <div class="proto-obj-description" markdown>Response to `VerifyProofRequest`</div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">is_valid</div>
            <div class="proto-field-type">
              
                bool
              
            </div>
            <div class="proto-field-description">Whether or not all validations in `validation_results` passed</div>
            
          </div>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">validation_messages</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description">**Deprecated.** Use `validation_results` instead</div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">validation_results</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry">ValidationResultsEntry</a>[]
              
            </div>
            <div class="proto-field-description">Results of each validation check performed, such as schema conformance, revocation status, signature, etc. Detailed results are provided for failed validations.</div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>

  <div class="proto-obj-container" data-proto-name="services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry">
    <div class="proto-obj-name"><a name="services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry" href="/reference/proto#services-verifiablecredentials-v1-VerifyProofResponse-ValidationResultsEntry">VerifyProofResponse.ValidationResultsEntry</a></div>
    <div class="proto-obj-description" markdown></div>
    
    
      <div class="proto-obj-fields" markdown>
        
        
          
        

          <div class="proto-field">
            <div class="proto-field-name">key</div>
            <div class="proto-field-type">
              
                string
              
            </div>
            <div class="proto-field-description"></div>
            
          </div>
        
        

          <div class="proto-field">
            <div class="proto-field-name">value</div>
            <div class="proto-field-type">
              
                <a href="/reference/proto#services-verifiablecredentials-v1-ValidationMessage">ValidationMessage</a>
              
            </div>
            <div class="proto-field-description"></div>
            
              
                <div class="proto-field-expand-btn" onclick="onClick(this, 'services-verifiablecredentials-v1-ValidationMessage');">Show child attributes</div>
                <div class="proto-field-sub-child empty hidden"></div>
              
            
          </div>
        
      </div>
    
  </div>
 
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
