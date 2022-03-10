#### [Trinsic](index.md 'index')
## Trinsic.Sdk.Options.V1 Namespace
### Classes
<a name='Trinsic_Sdk_Options_V1_OptionsReflection'></a>
## OptionsReflection Class
Holder for reflection information generated from sdk/options/v1/options.proto
```csharp
public static class OptionsReflection
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; OptionsReflection  
### Properties
<a name='Trinsic_Sdk_Options_V1_OptionsReflection_Descriptor'></a>
## OptionsReflection.Descriptor Property
File descriptor for sdk/options/v1/options.proto
```csharp
public static Google.Protobuf.Reflection.FileDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.FileDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.FileDescriptor 'Google.Protobuf.Reflection.FileDescriptor')
  
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions'></a>
## ServiceOptions Class
service options  
```csharp
public sealed class ServiceOptions :
Google.Protobuf.IMessage<Trinsic.Sdk.Options.V1.ServiceOptions>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Sdk.Options.V1.ServiceOptions>,
Google.Protobuf.IDeepCloneable<Trinsic.Sdk.Options.V1.ServiceOptions>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ServiceOptions  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[ServiceOptions](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServiceOptions 'Trinsic.Sdk.Options.V1.ServiceOptions')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[ServiceOptions](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServiceOptions 'Trinsic.Sdk.Options.V1.ServiceOptions')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[ServiceOptions](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServiceOptions 'Trinsic.Sdk.Options.V1.ServiceOptions')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_AuthTokenFieldNumber'></a>
## ServiceOptions.AuthTokenFieldNumber Field
Field number for the "auth_token" field.
```csharp
public const int AuthTokenFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_DefaultEcosystemFieldNumber'></a>
## ServiceOptions.DefaultEcosystemFieldNumber Field
Field number for the "default_ecosystem" field.
```csharp
public const int DefaultEcosystemFieldNumber = 5;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerEndpointFieldNumber'></a>
## ServiceOptions.ServerEndpointFieldNumber Field
Field number for the "server_endpoint" field.
```csharp
public const int ServerEndpointFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerPortFieldNumber'></a>
## ServiceOptions.ServerPortFieldNumber Field
Field number for the "server_port" field.
```csharp
public const int ServerPortFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerUseTlsFieldNumber'></a>
## ServiceOptions.ServerUseTlsFieldNumber Field
Field number for the "server_use_tls" field.
```csharp
public const int ServerUseTlsFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_AuthToken'></a>
## ServiceOptions.AuthToken Property
default auth token for oberon security scheme  
```csharp
public string AuthToken { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_DefaultEcosystem'></a>
## ServiceOptions.DefaultEcosystem Property
ecosystem to use with endpoints that require it  
```csharp
public string DefaultEcosystem { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerEndpoint'></a>
## ServiceOptions.ServerEndpoint Property
service endpoint  
```csharp
public string ServerEndpoint { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerPort'></a>
## ServiceOptions.ServerPort Property
service port  
```csharp
public int ServerPort { get; set; }
```
#### Property Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerUseTls'></a>
## ServiceOptions.ServerUseTls Property
indicates if tls is used  
```csharp
public bool ServerUseTls { get; set; }
```
#### Property Value
[System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')
  
  
