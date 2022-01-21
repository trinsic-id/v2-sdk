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
  
  
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration'></a>
## ServerConfiguration Class
```csharp
public sealed class ServerConfiguration :
Google.Protobuf.IMessage<Trinsic.Sdk.Options.V1.ServerConfiguration>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Sdk.Options.V1.ServerConfiguration>,
Google.Protobuf.IDeepCloneable<Trinsic.Sdk.Options.V1.ServerConfiguration>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ServerConfiguration  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[ServerConfiguration](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServerConfiguration 'Trinsic.Sdk.Options.V1.ServerConfiguration')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[ServerConfiguration](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServerConfiguration 'Trinsic.Sdk.Options.V1.ServerConfiguration')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[ServerConfiguration](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServerConfiguration 'Trinsic.Sdk.Options.V1.ServerConfiguration')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_EndpointFieldNumber'></a>
## ServerConfiguration.EndpointFieldNumber Field
Field number for the "endpoint" field.
```csharp
public const int EndpointFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_PortFieldNumber'></a>
## ServerConfiguration.PortFieldNumber Field
Field number for the "port" field.
```csharp
public const int PortFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_UseTlsFieldNumber'></a>
## ServerConfiguration.UseTlsFieldNumber Field
Field number for the "use_tls" field.
```csharp
public const int UseTlsFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_Endpoint'></a>
## ServerConfiguration.Endpoint Property
service endpoint  
```csharp
public string Endpoint { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_Port'></a>
## ServerConfiguration.Port Property
service port  
```csharp
public int Port { get; set; }
```
#### Property Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServerConfiguration_UseTls'></a>
## ServerConfiguration.UseTls Property
indicates if tls is used  
```csharp
public bool UseTls { get; set; }
```
#### Property Value
[System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')
  
  
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
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_EcosystemFieldNumber'></a>
## ServiceOptions.EcosystemFieldNumber Field
Field number for the "ecosystem" field.
```csharp
public const int EcosystemFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ProfileFieldNumber'></a>
## ServiceOptions.ProfileFieldNumber Field
Field number for the "profile" field.
```csharp
public const int ProfileFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_ServerFieldNumber'></a>
## ServiceOptions.ServerFieldNumber Field
Field number for the "server" field.
```csharp
public const int ServerFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_Ecosystem'></a>
## ServiceOptions.Ecosystem Property
ecosystem to use with endpoints that require it  
```csharp
public string Ecosystem { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_Profile'></a>
## ServiceOptions.Profile Property
account profile to use for authentication  
```csharp
public Trinsic.Services.Account.V1.AccountProfile Profile { get; set; }
```
#### Property Value
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')
  
<a name='Trinsic_Sdk_Options_V1_ServiceOptions_Server'></a>
## ServiceOptions.Server Property
server configuration  
```csharp
public Trinsic.Sdk.Options.V1.ServerConfiguration Server { get; set; }
```
#### Property Value
[ServerConfiguration](Trinsic_Sdk_Options_V1.md#Trinsic_Sdk_Options_V1_ServerConfiguration 'Trinsic.Sdk.Options.V1.ServerConfiguration')
  
  
