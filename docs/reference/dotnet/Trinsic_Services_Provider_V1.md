#### [Trinsic](index.md 'index')
## Trinsic.Services.Provider.V1 Namespace
### Classes
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest'></a>
## CreateEcosystemRequest Class
```csharp
public sealed class CreateEcosystemRequest :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.CreateEcosystemRequest>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.CreateEcosystemRequest>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.CreateEcosystemRequest>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; CreateEcosystemRequest  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_DescriptionFieldNumber'></a>
## CreateEcosystemRequest.DescriptionFieldNumber Field
Field number for the "description" field.
```csharp
public const int DescriptionFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_DetailsFieldNumber'></a>
## CreateEcosystemRequest.DetailsFieldNumber Field
Field number for the "details" field.
```csharp
public const int DetailsFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_NameFieldNumber'></a>
## CreateEcosystemRequest.NameFieldNumber Field
Field number for the "name" field.
```csharp
public const int NameFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_UriFieldNumber'></a>
## CreateEcosystemRequest.UriFieldNumber Field
Field number for the "uri" field.
```csharp
public const int UriFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_Description'></a>
## CreateEcosystemRequest.Description Property
Ecosystem description.  
This field is optional.  
```csharp
public string Description { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_Details'></a>
## CreateEcosystemRequest.Details Property
The account details of the owner of the ecosystem  
```csharp
public Trinsic.Services.Account.V1.AccountDetails Details { get; set; }
```
#### Property Value
[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_Name'></a>
## CreateEcosystemRequest.Name Property
Globally unique name for the Ecosystem. This name will be  
part of the ecosystem specific URLs and namespaces.  
Allowed characters are lowercase letters, numbers, underscore and hyphen.  
```csharp
public string Name { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemRequest_Uri'></a>
## CreateEcosystemRequest.Uri Property
External URL associated with your organization or ecosystem entity.  
This field is optional  
```csharp
public string Uri { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse'></a>
## CreateEcosystemResponse Class
```csharp
public sealed class CreateEcosystemResponse :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.CreateEcosystemResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.CreateEcosystemResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.CreateEcosystemResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; CreateEcosystemResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_ConfirmationMethodFieldNumber'></a>
## CreateEcosystemResponse.ConfirmationMethodFieldNumber Field
Field number for the "confirmation_method" field.
```csharp
public const int ConfirmationMethodFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_EcosystemFieldNumber'></a>
## CreateEcosystemResponse.EcosystemFieldNumber Field
Field number for the "ecosystem" field.
```csharp
public const int EcosystemFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_ProfileFieldNumber'></a>
## CreateEcosystemResponse.ProfileFieldNumber Field
Field number for the "profile" field.
```csharp
public const int ProfileFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_ConfirmationMethod'></a>
## CreateEcosystemResponse.ConfirmationMethod Property
Indicates if confirmation of account is required.  
This settings is configured globally by the server administrator.  
```csharp
public Trinsic.Services.Account.V1.ConfirmationMethod ConfirmationMethod { get; set; }
```
#### Property Value
[ConfirmationMethod](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_ConfirmationMethod 'Trinsic.Services.Account.V1.ConfirmationMethod')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_Ecosystem'></a>
## CreateEcosystemResponse.Ecosystem Property
Details of the created ecosystem  
```csharp
public Trinsic.Services.Provider.V1.Ecosystem Ecosystem { get; set; }
```
#### Property Value
[Ecosystem](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Ecosystem 'Trinsic.Services.Provider.V1.Ecosystem')
  
<a name='Trinsic_Services_Provider_V1_CreateEcosystemResponse_Profile'></a>
## CreateEcosystemResponse.Profile Property
Account profile for auth of the owner of the ecosystem  
```csharp
public Trinsic.Services.Account.V1.AccountProfile Profile { get; set; }
```
#### Property Value
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')
  
  
<a name='Trinsic_Services_Provider_V1_Ecosystem'></a>
## Ecosystem Class
```csharp
public sealed class Ecosystem :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.Ecosystem>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.Ecosystem>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.Ecosystem>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Ecosystem  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[Ecosystem](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Ecosystem 'Trinsic.Services.Provider.V1.Ecosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[Ecosystem](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Ecosystem 'Trinsic.Services.Provider.V1.Ecosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[Ecosystem](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Ecosystem 'Trinsic.Services.Provider.V1.Ecosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_Ecosystem_DescriptionFieldNumber'></a>
## Ecosystem.DescriptionFieldNumber Field
Field number for the "description" field.
```csharp
public const int DescriptionFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Ecosystem_IdFieldNumber'></a>
## Ecosystem.IdFieldNumber Field
Field number for the "id" field.
```csharp
public const int IdFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Ecosystem_NameFieldNumber'></a>
## Ecosystem.NameFieldNumber Field
Field number for the "name" field.
```csharp
public const int NameFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Ecosystem_UriFieldNumber'></a>
## Ecosystem.UriFieldNumber Field
Field number for the "uri" field.
```csharp
public const int UriFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Provider_V1_GenerateTokenRequest'></a>
## GenerateTokenRequest Class
```csharp
public sealed class GenerateTokenRequest :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.GenerateTokenRequest>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.GenerateTokenRequest>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.GenerateTokenRequest>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; GenerateTokenRequest  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_GenerateTokenRequest_DescriptionFieldNumber'></a>
## GenerateTokenRequest.DescriptionFieldNumber Field
Field number for the "description" field.
```csharp
public const int DescriptionFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Provider_V1_GenerateTokenRequest_Description'></a>
## GenerateTokenRequest.Description Property
Optional description to identify this token  
```csharp
public string Description { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
  
<a name='Trinsic_Services_Provider_V1_GenerateTokenResponse'></a>
## GenerateTokenResponse Class
```csharp
public sealed class GenerateTokenResponse :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.GenerateTokenResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.GenerateTokenResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.GenerateTokenResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; GenerateTokenResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_GenerateTokenResponse_ProfileFieldNumber'></a>
## GenerateTokenResponse.ProfileFieldNumber Field
Field number for the "profile" field.
```csharp
public const int ProfileFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Provider_V1_GenerateTokenResponse_Profile'></a>
## GenerateTokenResponse.Profile Property
Account authentication profile that contains unprotected token  
```csharp
public Trinsic.Services.Account.V1.AccountProfile Profile { get; set; }
```
#### Property Value
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')
  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusRequest'></a>
## InvitationStatusRequest Class
Request details for the status of onboarding  
an individual or organization.  
The reference_id passed is the response from the  
`Onboard` method call  
```csharp
public sealed class InvitationStatusRequest :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.InvitationStatusRequest>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.InvitationStatusRequest>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.InvitationStatusRequest>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; InvitationStatusRequest  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_InvitationStatusRequest_InvitationIdFieldNumber'></a>
## InvitationStatusRequest.InvitationIdFieldNumber Field
Field number for the "invitation_id" field.
```csharp
public const int InvitationIdFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse'></a>
## InvitationStatusResponse Class
```csharp
public sealed class InvitationStatusResponse :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.InvitationStatusResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.InvitationStatusResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.InvitationStatusResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; InvitationStatusResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_StatusDetailsFieldNumber'></a>
## InvitationStatusResponse.StatusDetailsFieldNumber Field
Field number for the "status_details" field.
```csharp
public const int StatusDetailsFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_StatusFieldNumber'></a>
## InvitationStatusResponse.StatusFieldNumber Field
Field number for the "status" field.
```csharp
public const int StatusFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types'></a>
## InvitationStatusResponse.Types Class
Container for nested types declared in the InvitationStatusResponse message type.
```csharp
public static class InvitationStatusResponse.Types
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Types  
  
<a name='Trinsic_Services_Provider_V1_Invite'></a>
## Invite Class
```csharp
public sealed class Invite :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.Invite>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.Invite>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.Invite>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Invite  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[Invite](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Invite 'Trinsic.Services.Provider.V1.Invite')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[Invite](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Invite 'Trinsic.Services.Provider.V1.Invite')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[Invite](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Invite 'Trinsic.Services.Provider.V1.Invite')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_Invite_AcceptedFieldNumber'></a>
## Invite.AcceptedFieldNumber Field
Field number for the "accepted" field.
```csharp
public const int AcceptedFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Invite_CodeFieldNumber'></a>
## Invite.CodeFieldNumber Field
Field number for the "code" field.
```csharp
public const int CodeFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Invite_CreatedFieldNumber'></a>
## Invite.CreatedFieldNumber Field
Field number for the "created" field.
```csharp
public const int CreatedFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Invite_ExpiresFieldNumber'></a>
## Invite.ExpiresFieldNumber Field
Field number for the "expires" field.
```csharp
public const int ExpiresFieldNumber = 5;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_Invite_IdFieldNumber'></a>
## Invite.IdFieldNumber Field
Field number for the "id" field.
```csharp
public const int IdFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Provider_V1_InviteRequest'></a>
## InviteRequest Class
```csharp
public sealed class InviteRequest :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.InviteRequest>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.InviteRequest>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.InviteRequest>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; InviteRequest  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_InviteRequest_DescriptionFieldNumber'></a>
## InviteRequest.DescriptionFieldNumber Field
Field number for the "description" field.
```csharp
public const int DescriptionFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_InviteRequest_DetailsFieldNumber'></a>
## InviteRequest.DetailsFieldNumber Field
Field number for the "details" field.
```csharp
public const int DetailsFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_InviteRequest_ParticipantFieldNumber'></a>
## InviteRequest.ParticipantFieldNumber Field
Field number for the "participant" field.
```csharp
public const int ParticipantFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Provider_V1_InviteRequest_Types'></a>
## InviteRequest.Types Class
Container for nested types declared in the InviteRequest message type.
```csharp
public static class InviteRequest.Types
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Types  
  
<a name='Trinsic_Services_Provider_V1_InviteResponse'></a>
## InviteResponse Class
```csharp
public sealed class InviteResponse :
Google.Protobuf.IMessage<Trinsic.Services.Provider.V1.InviteResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Provider.V1.InviteResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Provider.V1.InviteResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; InviteResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Provider_V1_InviteResponse_InvitationCodeFieldNumber'></a>
## InviteResponse.InvitationCodeFieldNumber Field
Field number for the "invitation_code" field.
```csharp
public const int InvitationCodeFieldNumber = 11;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_InviteResponse_InvitationIdFieldNumber'></a>
## InviteResponse.InvitationIdFieldNumber Field
Field number for the "invitation_id" field.
```csharp
public const int InvitationIdFieldNumber = 10;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Provider_V1_InviteResponse_StatusFieldNumber'></a>
## InviteResponse.StatusFieldNumber Field
Field number for the "status" field.
```csharp
public const int StatusFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Provider_V1_InviteResponse_InvitationCode'></a>
## InviteResponse.InvitationCode Property
Invitation Code that must be passed with the account 'SignIn' request  
to correlate this user with the invitation sent.  
```csharp
public string InvitationCode { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
  
<a name='Trinsic_Services_Provider_V1_Provider'></a>
## Provider Class
```csharp
public static class Provider
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Provider  
### Properties
<a name='Trinsic_Services_Provider_V1_Provider_Descriptor'></a>
## Provider.Descriptor Property
Service descriptor
```csharp
public static Google.Protobuf.Reflection.ServiceDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.ServiceDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.ServiceDescriptor 'Google.Protobuf.Reflection.ServiceDescriptor')
  
### Methods
<a name='Trinsic_Services_Provider_V1_Provider_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Provider_V1_Provider_ProviderBase)'></a>
## Provider.BindService(ServiceBinderBase, ProviderBase) Method
Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.  
            Note: this method is part of an experimental API that can change or be removed without any prior notice.
```csharp
public static void BindService(Grpc.Core.ServiceBinderBase serviceBinder, Trinsic.Services.Provider.V1.Provider.ProviderBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Provider_V1_Provider_ProviderBase)_serviceBinder'></a>
`serviceBinder` [Grpc.Core.ServiceBinderBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServiceBinderBase 'Grpc.Core.ServiceBinderBase')  
Service methods will be bound by calling `AddMethod` on this object.
  
<a name='Trinsic_Services_Provider_V1_Provider_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Provider_V1_Provider_ProviderBase)_serviceImpl'></a>
`serviceImpl` [ProviderBase](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Provider_ProviderBase 'Trinsic.Services.Provider.V1.Provider.ProviderBase')  
An object implementing the server-side handling logic.
  
  
<a name='Trinsic_Services_Provider_V1_Provider_BindService(Trinsic_Services_Provider_V1_Provider_ProviderBase)'></a>
## Provider.BindService(ProviderBase) Method
Creates service definition that can be registered with a server
```csharp
public static Grpc.Core.ServerServiceDefinition BindService(Trinsic.Services.Provider.V1.Provider.ProviderBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_BindService(Trinsic_Services_Provider_V1_Provider_ProviderBase)_serviceImpl'></a>
`serviceImpl` [ProviderBase](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Provider_ProviderBase 'Trinsic.Services.Provider.V1.Provider.ProviderBase')  
An object implementing the server-side handling logic.
  
#### Returns
[Grpc.Core.ServerServiceDefinition](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerServiceDefinition 'Grpc.Core.ServerServiceDefinition')  
  
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase'></a>
## Provider.ProviderBase Class
Base class for server-side implementations of Provider
```csharp
public abstract class Provider.ProviderBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ProviderBase  
### Methods
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_ServerCallContext)'></a>
## Provider.ProviderBase.CreateEcosystem(CreateEcosystemRequest, ServerCallContext) Method
Create new ecosystem and assign the authenticated user as owner  
```csharp
public virtual System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.CreateEcosystemResponse> CreateEcosystem(Trinsic.Services.Provider.V1.CreateEcosystemRequest request, Grpc.Core.ServerCallContext context);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_ServerCallContext)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
The request received from the client.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_ServerCallContext)_context'></a>
`context` [Grpc.Core.ServerCallContext](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerCallContext 'Grpc.Core.ServerCallContext')  
The context of the server-side call handler being invoked.
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The response to send back to the client (wrapped by a task).
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_ServerCallContext)'></a>
## Provider.ProviderBase.GenerateToken(GenerateTokenRequest, ServerCallContext) Method
Generates an unprotected authentication token that can be used to  
configure server side applications  
```csharp
public virtual System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.GenerateTokenResponse> GenerateToken(Trinsic.Services.Provider.V1.GenerateTokenRequest request, Grpc.Core.ServerCallContext context);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_ServerCallContext)_request'></a>
`request` [GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')  
The request received from the client.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_ServerCallContext)_context'></a>
`context` [Grpc.Core.ServerCallContext](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerCallContext 'Grpc.Core.ServerCallContext')  
The context of the server-side call handler being invoked.
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The response to send back to the client (wrapped by a task).
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_ServerCallContext)'></a>
## Provider.ProviderBase.InvitationStatus(InvitationStatusRequest, ServerCallContext) Method
Check the invitation status  
```csharp
public virtual System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.InvitationStatusResponse> InvitationStatus(Trinsic.Services.Provider.V1.InvitationStatusRequest request, Grpc.Core.ServerCallContext context);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_ServerCallContext)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
The request received from the client.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_ServerCallContext)_context'></a>
`context` [Grpc.Core.ServerCallContext](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerCallContext 'Grpc.Core.ServerCallContext')  
The context of the server-side call handler being invoked.
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The response to send back to the client (wrapped by a task).
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_ServerCallContext)'></a>
## Provider.ProviderBase.Invite(InviteRequest, ServerCallContext) Method
Invite a user to the ecosystem  
```csharp
public virtual System.Threading.Tasks.Task<Trinsic.Services.Provider.V1.InviteResponse> Invite(Trinsic.Services.Provider.V1.InviteRequest request, Grpc.Core.ServerCallContext context);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_ServerCallContext)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
The request received from the client.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderBase_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_ServerCallContext)_context'></a>
`context` [Grpc.Core.ServerCallContext](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerCallContext 'Grpc.Core.ServerCallContext')  
The context of the server-side call handler being invoked.
  
#### Returns
[System.Threading.Tasks.Task&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.Tasks.Task-1 'System.Threading.Tasks.Task`1')  
The response to send back to the client (wrapped by a task).
  
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient'></a>
## Provider.ProviderClient Class
Client for Provider
```csharp
public class Provider.ProviderClient : Grpc.Core.ClientBase<Trinsic.Services.Provider.V1.Provider.ProviderClient>
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [Grpc.Core.ClientBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase 'Grpc.Core.ClientBase') &#129106; [Grpc.Core.ClientBase&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1')[ProviderClient](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Provider_ProviderClient 'Trinsic.Services.Provider.V1.Provider.ProviderClient')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1') &#129106; ProviderClient  
### Constructors
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient()'></a>
## Provider.ProviderClient.ProviderClient() Constructor
Protected parameterless constructor to allow creation of test doubles.
```csharp
protected ProviderClient();
```
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_CallInvoker)'></a>
## Provider.ProviderClient.ProviderClient(CallInvoker) Constructor
Creates a new client for Provider that uses a custom `CallInvoker`.
```csharp
public ProviderClient(Grpc.Core.CallInvoker callInvoker);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_CallInvoker)_callInvoker'></a>
`callInvoker` [Grpc.Core.CallInvoker](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallInvoker 'Grpc.Core.CallInvoker')  
The callInvoker to use to make remote calls.
  
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_ChannelBase)'></a>
## Provider.ProviderClient.ProviderClient(ChannelBase) Constructor
Creates a new client for Provider
```csharp
public ProviderClient(Grpc.Core.ChannelBase channel);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_ChannelBase)_channel'></a>
`channel` [Grpc.Core.ChannelBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ChannelBase 'Grpc.Core.ChannelBase')  
The channel to use to make remote calls.
  
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Provider.ProviderClient.ProviderClient(ClientBaseConfiguration) Constructor
Protected constructor to allow creation of configured clients.
```csharp
protected ProviderClient(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_ProviderClient(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
The client configuration.
  
  
### Methods
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.CreateEcosystem(CreateEcosystemRequest, CallOptions) Method
Create new ecosystem and assign the authenticated user as owner  
```csharp
public virtual Trinsic.Services.Provider.V1.CreateEcosystemResponse CreateEcosystem(Trinsic.Services.Provider.V1.CreateEcosystemRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.CreateEcosystem(CreateEcosystemRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Create new ecosystem and assign the authenticated user as owner  
```csharp
public virtual Trinsic.Services.Provider.V1.CreateEcosystemResponse CreateEcosystem(Trinsic.Services.Provider.V1.CreateEcosystemRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystem(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.CreateEcosystemAsync(CreateEcosystemRequest, CallOptions) Method
Create new ecosystem and assign the authenticated user as owner  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.CreateEcosystemResponse> CreateEcosystemAsync(Trinsic.Services.Provider.V1.CreateEcosystemRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.CreateEcosystemAsync(CreateEcosystemRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Create new ecosystem and assign the authenticated user as owner  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.CreateEcosystemResponse> CreateEcosystemAsync(Trinsic.Services.Provider.V1.CreateEcosystemRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [CreateEcosystemRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemRequest 'Trinsic.Services.Provider.V1.CreateEcosystemRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_CreateEcosystemAsync(Trinsic_Services_Provider_V1_CreateEcosystemRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[CreateEcosystemResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_CreateEcosystemResponse 'Trinsic.Services.Provider.V1.CreateEcosystemResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.GenerateToken(GenerateTokenRequest, CallOptions) Method
Generates an unprotected authentication token that can be used to  
configure server side applications  
```csharp
public virtual Trinsic.Services.Provider.V1.GenerateTokenResponse GenerateToken(Trinsic.Services.Provider.V1.GenerateTokenRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)_request'></a>
`request` [GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.GenerateToken(GenerateTokenRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Generates an unprotected authentication token that can be used to  
configure server side applications  
```csharp
public virtual Trinsic.Services.Provider.V1.GenerateTokenResponse GenerateToken(Trinsic.Services.Provider.V1.GenerateTokenRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateToken(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.GenerateTokenAsync(GenerateTokenRequest, CallOptions) Method
Generates an unprotected authentication token that can be used to  
configure server side applications  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.GenerateTokenResponse> GenerateTokenAsync(Trinsic.Services.Provider.V1.GenerateTokenRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)_request'></a>
`request` [GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.GenerateTokenAsync(GenerateTokenRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Generates an unprotected authentication token that can be used to  
configure server side applications  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.GenerateTokenResponse> GenerateTokenAsync(Trinsic.Services.Provider.V1.GenerateTokenRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [GenerateTokenRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenRequest 'Trinsic.Services.Provider.V1.GenerateTokenRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_GenerateTokenAsync(Trinsic_Services_Provider_V1_GenerateTokenRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[GenerateTokenResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_GenerateTokenResponse 'Trinsic.Services.Provider.V1.GenerateTokenResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.InvitationStatus(InvitationStatusRequest, CallOptions) Method
Check the invitation status  
```csharp
public virtual Trinsic.Services.Provider.V1.InvitationStatusResponse InvitationStatus(Trinsic.Services.Provider.V1.InvitationStatusRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.InvitationStatus(InvitationStatusRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Check the invitation status  
```csharp
public virtual Trinsic.Services.Provider.V1.InvitationStatusResponse InvitationStatus(Trinsic.Services.Provider.V1.InvitationStatusRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatus(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.InvitationStatusAsync(InvitationStatusRequest, CallOptions) Method
Check the invitation status  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.InvitationStatusResponse> InvitationStatusAsync(Trinsic.Services.Provider.V1.InvitationStatusRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.InvitationStatusAsync(InvitationStatusRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Check the invitation status  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.InvitationStatusResponse> InvitationStatusAsync(Trinsic.Services.Provider.V1.InvitationStatusRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [InvitationStatusRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusRequest 'Trinsic.Services.Provider.V1.InvitationStatusRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InvitationStatusAsync(Trinsic_Services_Provider_V1_InvitationStatusRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InvitationStatusResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InvitationStatusResponse 'Trinsic.Services.Provider.V1.InvitationStatusResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.Invite(InviteRequest, CallOptions) Method
Invite a user to the ecosystem  
```csharp
public virtual Trinsic.Services.Provider.V1.InviteResponse Invite(Trinsic.Services.Provider.V1.InviteRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.Invite(InviteRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Invite a user to the ecosystem  
```csharp
public virtual Trinsic.Services.Provider.V1.InviteResponse Invite(Trinsic.Services.Provider.V1.InviteRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_Invite(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)'></a>
## Provider.ProviderClient.InviteAsync(InviteRequest, CallOptions) Method
Invite a user to the ecosystem  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.InviteResponse> InviteAsync(Trinsic.Services.Provider.V1.InviteRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Provider.ProviderClient.InviteAsync(InviteRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Invite a user to the ecosystem  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Provider.V1.InviteResponse> InviteAsync(Trinsic.Services.Provider.V1.InviteRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [InviteRequest](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteRequest 'Trinsic.Services.Provider.V1.InviteRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_InviteAsync(Trinsic_Services_Provider_V1_InviteRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InviteResponse](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_InviteResponse 'Trinsic.Services.Provider.V1.InviteResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Provider.ProviderClient.NewInstance(ClientBaseConfiguration) Method
Creates a new instance of client from given `ClientBaseConfiguration`.
```csharp
protected override Trinsic.Services.Provider.V1.Provider.ProviderClient NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Provider_V1_Provider_ProviderClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
  
#### Returns
[ProviderClient](Trinsic_Services_Provider_V1.md#Trinsic_Services_Provider_V1_Provider_ProviderClient 'Trinsic.Services.Provider.V1.Provider.ProviderClient')  
  
  
<a name='Trinsic_Services_Provider_V1_ProviderReflection'></a>
## ProviderReflection Class
Holder for reflection information generated from services/provider/v1/provider.proto
```csharp
public static class ProviderReflection
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ProviderReflection  
### Properties
<a name='Trinsic_Services_Provider_V1_ProviderReflection_Descriptor'></a>
## ProviderReflection.Descriptor Property
File descriptor for services/provider/v1/provider.proto
```csharp
public static Google.Protobuf.Reflection.FileDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.FileDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.FileDescriptor 'Google.Protobuf.Reflection.FileDescriptor')
  
  
### Enums
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types_Status'></a>
## InvitationStatusResponse.Types.Status Enum
```csharp
public enum InvitationStatusResponse.Types.Status

```
#### Fields
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types_Status_Completed'></a>
`Completed` 2  
The participant has been onboarded  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types_Status_Error'></a>
`Error` 0  
Onboarding resulted in error  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types_Status_Expired'></a>
`Expired` 3  
The invite has expired  
  
<a name='Trinsic_Services_Provider_V1_InvitationStatusResponse_Types_Status_InvitationSent'></a>
`InvitationSent` 1  
The participant has been invited  
  
  
