#### [Trinsic](index.md 'index')
## Trinsic Namespace
### Classes
<a name='Trinsic_AccountService'></a>
## AccountService Class
Account Service  
```csharp
public class AccountService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; AccountService  
### Methods
<a name='Trinsic_AccountService_GetInfo()'></a>
## AccountService.GetInfo() Method
Return the details about the currently active account  
```csharp
public Trinsic.Services.Account.V1.InfoResponse GetInfo();
```
#### Returns
[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')  
  
<a name='Trinsic_AccountService_GetInfoAsync()'></a>
## AccountService.GetInfoAsync() Method
Return the details about the currently active account  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.Account.V1.InfoResponse> GetInfoAsync();
```
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_AccountService_Protect(Trinsic_Services_Account_V1_AccountProfile_string)'></a>
## AccountService.Protect(AccountProfile, string) Method
Protects the account profile with a security code.  
The code can be a PIN, password, keychain secret, etc.  
```csharp
public static Trinsic.Services.Account.V1.AccountProfile Protect(Trinsic.Services.Account.V1.AccountProfile profile, string securityCode);
```
#### Parameters
<a name='Trinsic_AccountService_Protect(Trinsic_Services_Account_V1_AccountProfile_string)_profile'></a>
`profile` [AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')  
  
<a name='Trinsic_AccountService_Protect(Trinsic_Services_Account_V1_AccountProfile_string)_securityCode'></a>
`securityCode` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
#### Returns
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')  
  
<a name='Trinsic_AccountService_SignIn(Trinsic_Services_Account_V1_AccountDetails_)'></a>
## AccountService.SignIn(AccountDetails?) Method
Perform a sign-in to obtain an account profile. If the [AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails') are  
specified, they will be used to associate  
```csharp
public Trinsic.Services.Account.V1.AccountProfile SignIn(Trinsic.Services.Account.V1.AccountDetails? details=null);
```
#### Parameters
<a name='Trinsic_AccountService_SignIn(Trinsic_Services_Account_V1_AccountDetails_)_details'></a>
`details` [AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')  
  
#### Returns
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')  
  
<a name='Trinsic_AccountService_SignInAsync(Trinsic_Services_Account_V1_AccountDetails_)'></a>
## AccountService.SignInAsync(AccountDetails?) Method
Perform a sign-in to obtain an account profile. If the [AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails') are  
specified, they will be used to associate  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.Account.V1.AccountProfile> SignInAsync(Trinsic.Services.Account.V1.AccountDetails? details=null);
```
#### Parameters
<a name='Trinsic_AccountService_SignInAsync(Trinsic_Services_Account_V1_AccountDetails_)_details'></a>
`details` [AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_AccountService_Unprotect(Trinsic_Services_Account_V1_AccountProfile_string)'></a>
## AccountService.Unprotect(AccountProfile, string) Method
Unprotects the account profile using a security code.  
The confirmation method field will specify how this code was  
communicated with the account owner.  
```csharp
public static Trinsic.Services.Account.V1.AccountProfile Unprotect(Trinsic.Services.Account.V1.AccountProfile profile, string securityCode);
```
#### Parameters
<a name='Trinsic_AccountService_Unprotect(Trinsic_Services_Account_V1_AccountProfile_string)_profile'></a>
`profile` [AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')  
  
<a name='Trinsic_AccountService_Unprotect(Trinsic_Services_Account_V1_AccountProfile_string)_securityCode'></a>
`securityCode` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
#### Returns
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')  
  
  
<a name='Trinsic_CredentialsService'></a>
## CredentialsService Class
```csharp
public class CredentialsService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; CredentialsService  
### Methods
<a name='Trinsic_CredentialsService_CheckStatusAsync(string)'></a>
## CredentialsService.CheckStatusAsync(string) Method
Check credential template status  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.VerifiableCredentials.V1.CheckStatusResponse> CheckStatusAsync(string credentialStatusId);
```
#### Parameters
<a name='Trinsic_CredentialsService_CheckStatusAsync(string)_credentialStatusId'></a>
`credentialStatusId` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[CheckStatusResponse](Trinsic_Services_VerifiableCredentials_V1.md#Trinsic_Services_VerifiableCredentials_V1_CheckStatusResponse 'Trinsic.Services.VerifiableCredentials.V1.CheckStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_CredentialsService_CreateProofAsync(string_Newtonsoft_Json_Linq_JObject)'></a>
## CredentialsService.CreateProofAsync(string, JObject) Method
Derive a proof from an existing document in the wallet using  
an input reveal document frame  
```csharp
public System.Threading.Tasks.Task<Newtonsoft.Json.Linq.JObject> CreateProofAsync(string documentId, Newtonsoft.Json.Linq.JObject revealDocument);
```
#### Parameters
<a name='Trinsic_CredentialsService_CreateProofAsync(string_Newtonsoft_Json_Linq_JObject)_documentId'></a>
`documentId` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
<a name='Trinsic_CredentialsService_CreateProofAsync(string_Newtonsoft_Json_Linq_JObject)_revealDocument'></a>
`revealDocument` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_CredentialsService_IssueCredentialAsync(Newtonsoft_Json_Linq_JObject)'></a>
## CredentialsService.IssueCredentialAsync(JObject) Method
Signs an input credential  
```csharp
public System.Threading.Tasks.Task<Newtonsoft.Json.Linq.JObject> IssueCredentialAsync(Newtonsoft.Json.Linq.JObject document);
```
#### Parameters
<a name='Trinsic_CredentialsService_IssueCredentialAsync(Newtonsoft_Json_Linq_JObject)_document'></a>
`document` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_CredentialsService_IssueFromTemplate(Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest)'></a>
## CredentialsService.IssueFromTemplate(IssueFromTemplateRequest) Method
Issue a verifiable credential from a predefined [TemplateData](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_TemplateData 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplateData').  
```csharp
public string IssueFromTemplate(Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest request);
```
#### Parameters
<a name='Trinsic_CredentialsService_IssueFromTemplate(Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest)_request'></a>
`request` [IssueFromTemplateRequest](Trinsic_Services_VerifiableCredentials_V1.md#Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest 'Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest')  
The request object with the template identifier and the values
  
#### Returns
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
Verifiable credential as JSON
  
<a name='Trinsic_CredentialsService_IssueFromTemplateAsync(Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest)'></a>
## CredentialsService.IssueFromTemplateAsync(IssueFromTemplateRequest) Method
Issue a verifiable credential from a predefined [TemplateData](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_TemplateData 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplateData').  
```csharp
public System.Threading.Tasks.Task<string> IssueFromTemplateAsync(Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest request);
```
#### Parameters
<a name='Trinsic_CredentialsService_IssueFromTemplateAsync(Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest)_request'></a>
`request` [IssueFromTemplateRequest](Trinsic_Services_VerifiableCredentials_V1.md#Trinsic_Services_VerifiableCredentials_V1_IssueFromTemplateRequest 'Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest')  
The request object with the template identifier and the values
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
Verifiable credential as JSON
  
<a name='Trinsic_CredentialsService_SendAsync(Newtonsoft_Json_Linq_JObject_string)'></a>
## CredentialsService.SendAsync(JObject, string) Method
Sends a document to the specified destination  
```csharp
public System.Threading.Tasks.Task SendAsync(Newtonsoft.Json.Linq.JObject document, string email);
```
#### Parameters
<a name='Trinsic_CredentialsService_SendAsync(Newtonsoft_Json_Linq_JObject_string)_document'></a>
`document` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
<a name='Trinsic_CredentialsService_SendAsync(Newtonsoft_Json_Linq_JObject_string)_email'></a>
`email` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
#### Returns
[System.Threading.Tasks.Task](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task 'System.Threading.Tasks.Task')  
  
<a name='Trinsic_CredentialsService_UpdateStatusAsync(string_bool)'></a>
## CredentialsService.UpdateStatusAsync(string, bool) Method
Update credential template revocation status  
```csharp
public System.Threading.Tasks.Task UpdateStatusAsync(string credentialStatusId, bool revoked);
```
#### Parameters
<a name='Trinsic_CredentialsService_UpdateStatusAsync(string_bool)_credentialStatusId'></a>
`credentialStatusId` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
<a name='Trinsic_CredentialsService_UpdateStatusAsync(string_bool)_revoked'></a>
`revoked` [System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')  
  
#### Returns
[System.Threading.Tasks.Task](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task 'System.Threading.Tasks.Task')  
  
<a name='Trinsic_CredentialsService_VerifyProofAsync(Newtonsoft_Json_Linq_JObject)'></a>
## CredentialsService.VerifyProofAsync(JObject) Method
Verifies a proof document  
```csharp
public System.Threading.Tasks.Task<bool> VerifyProofAsync(Newtonsoft.Json.Linq.JObject proofDocument);
```
#### Parameters
<a name='Trinsic_CredentialsService_VerifyProofAsync(Newtonsoft_Json_Linq_JObject)_proofDocument'></a>
`proofDocument` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
  
<a name='Trinsic_OberonSecurityProvider'></a>
## OberonSecurityProvider Class
```csharp
internal class OberonSecurityProvider :
Trinsic.ISecurityProvider
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; OberonSecurityProvider  

Implements [Trinsic.ISecurityProvider](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.ISecurityProvider 'Trinsic.ISecurityProvider')  
### Methods
<a name='Trinsic_OberonSecurityProvider_Base64UrlEncode(byte__)'></a>
## OberonSecurityProvider.Base64UrlEncode(byte[]) Method
Encoded a byte array to base64url string without padding  
```csharp
protected static string Base64UrlEncode(byte[] data);
```
#### Parameters
<a name='Trinsic_OberonSecurityProvider_Base64UrlEncode(byte__)_data'></a>
`data` [System.Byte](https://docs.microsoft.com/en-us/dotnet/api/System.Byte 'System.Byte')[[]](https://docs.microsoft.com/en-us/dotnet/api/System.Array 'System.Array')  
  
#### Returns
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
  
<a name='Trinsic_ProviderService'></a>
## ProviderService Class
```csharp
public class ProviderService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; ProviderService  
### Methods
<a name='Trinsic_ProviderService_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest)'></a>
## ProviderService.CreateEcosystemAsync(CreateEcosystemRequest) Method
Creates new ecosystem  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.CreateEcosystemResponse> CreateEcosystemAsync(Trinsic.Services.Provider.V1.CreateEcosystemRequest request);
```
#### Parameters
<a name='Trinsic_ProviderService_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_ProviderService_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest)'></a>
## ProviderService.InvitationStatusAsync(InvitationStatusRequest) Method
Gets the status of the onboarding invitation for a given invitation ID  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.InvitationStatusResponse> InvitationStatusAsync(Trinsic.Services.Provider.V1.InvitationStatusRequest request);
```
#### Parameters
<a name='Trinsic_ProviderService_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_ProviderService_InviteParticipantAsync(Trinsic_Services_Provider_V1_InviteRequest)'></a>
## ProviderService.InviteParticipantAsync(InviteRequest) Method
Initiates the participant onboarding flow using the input contact method  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.InviteResponse> InviteParticipantAsync(Trinsic.Services.Provider.V1.InviteRequest request);
```
#### Parameters
<a name='Trinsic_ProviderService_InviteParticipantAsync(Trinsic_Services_Provider_V1_InviteRequest)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_ProviderService_ListEcosystemsAsync()'></a>
## ProviderService.ListEcosystemsAsync() Method
List all ecosystems that are owned by the authorized user  
```csharp
public System.Threading.Tasks.Task<System.Collections.Generic.IEnumerable<Trinsic.Services.Provider.V1.Ecosystem>> ListEcosystemsAsync();
```
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[System.Collections.Generic.IEnumerable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Collections.Generic.IEnumerable-1 'System.Collections.Generic.IEnumerable`1')[Ecosystem](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Ecosystem 'Trinsic.Services.Provider.V1.Ecosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Collections.Generic.IEnumerable-1 'System.Collections.Generic.IEnumerable`1')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
  
<a name='Trinsic_ServiceBase'></a>
## ServiceBase Class
```csharp
public abstract class ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ServiceBase  

Derived  
&#8627; [AccountService](Trinsic.md#Trinsic_AccountService 'Trinsic.AccountService')  
&#8627; [CredentialsService](Trinsic.md#Trinsic_CredentialsService 'Trinsic.CredentialsService')  
&#8627; [ProviderService](Trinsic.md#Trinsic_ProviderService 'Trinsic.ProviderService')  
&#8627; [TemplateService](Trinsic.md#Trinsic_TemplateService 'Trinsic.TemplateService')  
&#8627; [TrustRegistryService](Trinsic.md#Trinsic_TrustRegistryService 'Trinsic.TrustRegistryService')  
&#8627; [WalletService](Trinsic.md#Trinsic_WalletService 'Trinsic.WalletService')  
### Properties
<a name='Trinsic_ServiceBase_Channel'></a>
## ServiceBase.Channel Property
Gets the gRPC channel used by this service. This channel can be reused  
by passing this instance to other service constructors.  
```csharp
public Grpc.Net.Client.GrpcChannel Channel { get; set; }
```
#### Property Value
[Grpc.Net.Client.GrpcChannel](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Net.Client.GrpcChannel 'Grpc.Net.Client.GrpcChannel')
  
### Methods
<a name='Trinsic_ServiceBase_BuildMetadata(Google_Protobuf_IMessage)'></a>
## ServiceBase.BuildMetadata(IMessage) Method
Create call metadata by setting the required authentication headers  
```csharp
protected Grpc.Core.Metadata BuildMetadata(Google.Protobuf.IMessage request);
```
#### Parameters
<a name='Trinsic_ServiceBase_BuildMetadata(Google_Protobuf_IMessage)_request'></a>
`request` [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage')  
  
#### Returns
[Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
  
<a name='Trinsic_ServiceBase_BuildMetadataAsync(Google_Protobuf_IMessage)'></a>
## ServiceBase.BuildMetadataAsync(IMessage) Method
Create call metadata by setting the required authentication headers  
```csharp
protected System.Threading.Tasks.Task<Grpc.Core.Metadata> BuildMetadataAsync(Google.Protobuf.IMessage request);
```
#### Parameters
<a name='Trinsic_ServiceBase_BuildMetadataAsync(Google_Protobuf_IMessage)_request'></a>
`request` [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
  
<a name='Trinsic_TemplateService'></a>
## TemplateService Class
Template Service for managing credential schemas  
```csharp
public class TemplateService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; TemplateService  
### Methods
<a name='Trinsic_TemplateService_CreateAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_CreateCredentialTemplateRequest)'></a>
## TemplateService.CreateAsync(CreateCredentialTemplateRequest) Method
Create new credential template with the given parameters  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateResponse> CreateAsync(Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest request);
```
#### Parameters
<a name='Trinsic_TemplateService_CreateAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_CreateCredentialTemplateRequest)_request'></a>
`request` [CreateCredentialTemplateRequest](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_CreateCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[CreateCredentialTemplateResponse](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_CreateCredentialTemplateResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_TemplateService_GetAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_GetCredentialTemplateRequest)'></a>
## TemplateService.GetAsync(GetCredentialTemplateRequest) Method
Returns the template object for the given identifier  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateResponse> GetAsync(Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateRequest request);
```
#### Parameters
<a name='Trinsic_TemplateService_GetAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_GetCredentialTemplateRequest)_request'></a>
`request` [GetCredentialTemplateRequest](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_GetCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[GetCredentialTemplateResponse](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_GetCredentialTemplateResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_TemplateService_ListAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_ListCredentialTemplatesRequest)'></a>
## TemplateService.ListAsync(ListCredentialTemplatesRequest) Method
List the available templates for the given ecosystem.  
Results can be customized using a SQL query.  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.VerifiableCredentials.Templates.V1.ListCredentialTemplatesResponse> ListAsync(Trinsic.Services.VerifiableCredentials.Templates.V1.ListCredentialTemplatesRequest request);
```
#### Parameters
<a name='Trinsic_TemplateService_ListAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_ListCredentialTemplatesRequest)_request'></a>
`request` [ListCredentialTemplatesRequest](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_ListCredentialTemplatesRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.ListCredentialTemplatesRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[ListCredentialTemplatesResponse](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_ListCredentialTemplatesResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.ListCredentialTemplatesResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The search response and continuation token, if available  
### Remarks
This endpoint returns strongly typed result set. If your query uses projections,  
use the [SearchAsync(SearchCredentialTemplatesRequest)](Trinsic.md#Trinsic_TemplateService_SearchAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_SearchCredentialTemplatesRequest) 'Trinsic.TemplateService.SearchAsync(Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest)') method instead and parse the result JSON as needed.  
  
<a name='Trinsic_TemplateService_SearchAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_SearchCredentialTemplatesRequest)'></a>
## TemplateService.SearchAsync(SearchCredentialTemplatesRequest) Method
Search the registry for any data in the given ecosystem.  
Results can be customized using a SQL query.  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse> SearchAsync(Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest request);
```
#### Parameters
<a name='Trinsic_TemplateService_SearchAsync(Trinsic_Services_VerifiableCredentials_Templates_V1_SearchCredentialTemplatesRequest)_request'></a>
`request` [SearchCredentialTemplatesRequest](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_SearchCredentialTemplatesRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[SearchCredentialTemplatesResponse](Trinsic_Services_VerifiableCredentials_Templates_V1.md#Trinsic_Services_VerifiableCredentials_Templates_V1_SearchCredentialTemplatesResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The search response and continuation token, if available  
### Remarks
This endpoint returns raw JSON results where the format can be customized using  
SELECT SQL projections and object composition.  
  
  
<a name='Trinsic_TrustRegistryService'></a>
## TrustRegistryService Class
```csharp
public class TrustRegistryService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; TrustRegistryService  
### Methods
<a name='Trinsic_TrustRegistryService_CheckIssuerStatusAsync(Trinsic_Services_TrustRegistry_V1_CheckIssuerStatusRequest)'></a>
## TrustRegistryService.CheckIssuerStatusAsync(CheckIssuerStatusRequest) Method
Checks the status of the issuer for a given credential type in the given governance framework  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.TrustRegistry.V1.RegistrationStatus> CheckIssuerStatusAsync(Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest request);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_CheckIssuerStatusAsync(Trinsic_Services_TrustRegistry_V1_CheckIssuerStatusRequest)_request'></a>
`request` [CheckIssuerStatusRequest](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_CheckIssuerStatusRequest 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[RegistrationStatus](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_RegistrationStatus 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_TrustRegistryService_CheckVerifierStatusAsync(Trinsic_Services_TrustRegistry_V1_CheckVerifierStatusRequest)'></a>
## TrustRegistryService.CheckVerifierStatusAsync(CheckVerifierStatusRequest) Method
Checks the status of the verifier for a given presentation type in the given governance framework  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.TrustRegistry.V1.RegistrationStatus> CheckVerifierStatusAsync(Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest request);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_CheckVerifierStatusAsync(Trinsic_Services_TrustRegistry_V1_CheckVerifierStatusRequest)_request'></a>
`request` [CheckVerifierStatusRequest](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_CheckVerifierStatusRequest 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[RegistrationStatus](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_RegistrationStatus 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The status of the registration
  
<a name='Trinsic_TrustRegistryService_RegisterGovernanceFrameworkAsync(string_string)'></a>
## TrustRegistryService.RegisterGovernanceFrameworkAsync(string, string) Method
Register a Governance Framework with the Trust Registry.  
```csharp
public System.Threading.Tasks.Task RegisterGovernanceFrameworkAsync(string governanceFramework, string description);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_RegisterGovernanceFrameworkAsync(string_string)_governanceFramework'></a>
`governanceFramework` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
The governance framework URI
  
<a name='Trinsic_TrustRegistryService_RegisterGovernanceFrameworkAsync(string_string)_description'></a>
`description` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
The framework description
  
#### Returns
[System.Threading.Tasks.Task](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task 'System.Threading.Tasks.Task')  
### Remarks
Calling this multiple times with the same URI will update the previously registered framework.  
  
<a name='Trinsic_TrustRegistryService_RegisterIssuerAsync(Trinsic_Services_TrustRegistry_V1_RegisterIssuerRequest)'></a>
## TrustRegistryService.RegisterIssuerAsync(RegisterIssuerRequest) Method
Register a DID as authoritative issuer with the configured governance framework.  
```csharp
public System.Threading.Tasks.Task RegisterIssuerAsync(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest request);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_RegisterIssuerAsync(Trinsic_Services_TrustRegistry_V1_RegisterIssuerRequest)_request'></a>
`request` [RegisterIssuerRequest](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task 'System.Threading.Tasks.Task')  
  
<a name='Trinsic_TrustRegistryService_RegisterVerifierAsync(Trinsic_Services_TrustRegistry_V1_RegisterVerifierRequest)'></a>
## TrustRegistryService.RegisterVerifierAsync(RegisterVerifierRequest) Method
Register a DID as authoritative verifier with the configured governance framework.  
```csharp
public System.Threading.Tasks.Task RegisterVerifierAsync(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest request);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_RegisterVerifierAsync(Trinsic_Services_TrustRegistry_V1_RegisterVerifierRequest)_request'></a>
`request` [RegisterVerifierRequest](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest')  
The request object
  
#### Returns
[System.Threading.Tasks.Task](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task 'System.Threading.Tasks.Task')  
  
<a name='Trinsic_TrustRegistryService_SearchRegistryAsync(string_string_)'></a>
## TrustRegistryService.SearchRegistryAsync(string, string?) Method
Search the trust registry  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse> SearchRegistryAsync(string query="SELECT * FROM c", string? continuationToken=null);
```
#### Parameters
<a name='Trinsic_TrustRegistryService_SearchRegistryAsync(string_string_)_query'></a>
`query` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
<a name='Trinsic_TrustRegistryService_SearchRegistryAsync(string_string_)_continuationToken'></a>
`continuationToken` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
continuation token from a previous search
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[SearchRegistryResponse](Trinsic_Services_TrustRegistry_V1.md#Trinsic_Services_TrustRegistry_V1_SearchRegistryResponse 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
  
<a name='Trinsic_WalletService'></a>
## WalletService Class
```csharp
public class WalletService : Trinsic.ServiceBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [ServiceBase](Trinsic.md#Trinsic_ServiceBase 'Trinsic.ServiceBase') &#129106; WalletService  
### Methods
<a name='Trinsic_WalletService_InsertItem(Newtonsoft_Json_Linq_JObject)'></a>
## WalletService.InsertItem(JObject) Method
Insert an item into the personal wallet  
```csharp
public string InsertItem(Newtonsoft.Json.Linq.JObject item);
```
#### Parameters
<a name='Trinsic_WalletService_InsertItem(Newtonsoft_Json_Linq_JObject)_item'></a>
`item` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
#### Returns
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
  
<a name='Trinsic_WalletService_InsertItemAsync(Newtonsoft_Json_Linq_JObject)'></a>
## WalletService.InsertItemAsync(JObject) Method
Insert an item into the personal wallet  
```csharp
public System.Threading.Tasks.Task<string> InsertItemAsync(Newtonsoft.Json.Linq.JObject item);
```
#### Parameters
<a name='Trinsic_WalletService_InsertItemAsync(Newtonsoft_Json_Linq_JObject)_item'></a>
`item` [Newtonsoft.Json.Linq.JObject](https://docs.microsoft.com/en-us/dotnet/api/Newtonsoft.Json.Linq.JObject 'Newtonsoft.Json.Linq.JObject')  
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
  
<a name='Trinsic_WalletService_Search(string)'></a>
## WalletService.Search(string) Method
Search the wallet for records matching the specified criteria  
```csharp
public Trinsic.Services.UniversalWallet.V1.SearchResponse Search(string query="SELECT * FROM c");
```
#### Parameters
<a name='Trinsic_WalletService_Search(string)_query'></a>
`query` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
The SQL query
  
#### Returns
[SearchResponse](Trinsic_Services_UniversalWallet_V1.md#Trinsic_Services_UniversalWallet_V1_SearchResponse 'Trinsic.Services.UniversalWallet.V1.SearchResponse')  
### Remarks
See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select  
  
<a name='Trinsic_WalletService_SearchAsync(string)'></a>
## WalletService.SearchAsync(string) Method
Search the wallet for records matching the specified criteria  
```csharp
public System.Threading.Tasks.Task<Trinsic.Services.UniversalWallet.V1.SearchResponse> SearchAsync(string query="SELECT * FROM c");
```
#### Parameters
<a name='Trinsic_WalletService_SearchAsync(string)_query'></a>
`query` [System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')  
The SQL query
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[SearchResponse](Trinsic_Services_UniversalWallet_V1.md#Trinsic_Services_UniversalWallet_V1_SearchResponse 'Trinsic.Services.UniversalWallet.V1.SearchResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
### Remarks
See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select  
  
  
