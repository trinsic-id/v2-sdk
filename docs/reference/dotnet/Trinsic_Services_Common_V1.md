#### [Trinsic](index.md 'index')
## Trinsic.Services.Common.V1 Namespace
### Classes
<a name='Trinsic_Services_Common_V1_Common'></a>
## Common Class
```csharp
public static class Common
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Common  
### Properties
<a name='Trinsic_Services_Common_V1_Common_Descriptor'></a>
## Common.Descriptor Property
Service descriptor
```csharp
public static Google.Protobuf.Reflection.ServiceDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.ServiceDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.ServiceDescriptor 'Google.Protobuf.Reflection.ServiceDescriptor')
  
### Methods
<a name='Trinsic_Services_Common_V1_Common_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Common_V1_Common_CommonBase)'></a>
## Common.BindService(ServiceBinderBase, CommonBase) Method
Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.  
            Note: this method is part of an experimental API that can change or be removed without any prior notice.
```csharp
public static void BindService(Grpc.Core.ServiceBinderBase serviceBinder, Trinsic.Services.Common.V1.Common.CommonBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Common_V1_Common_CommonBase)_serviceBinder'></a>
`serviceBinder` [Grpc.Core.ServiceBinderBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServiceBinderBase 'Grpc.Core.ServiceBinderBase')  
Service methods will be bound by calling `AddMethod` on this object.
  
<a name='Trinsic_Services_Common_V1_Common_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Common_V1_Common_CommonBase)_serviceImpl'></a>
`serviceImpl` [CommonBase](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Common_CommonBase 'Trinsic.Services.Common.V1.Common.CommonBase')  
An object implementing the server-side handling logic.
  
  
<a name='Trinsic_Services_Common_V1_Common_BindService(Trinsic_Services_Common_V1_Common_CommonBase)'></a>
## Common.BindService(CommonBase) Method
Creates service definition that can be registered with a server
```csharp
public static Grpc.Core.ServerServiceDefinition BindService(Trinsic.Services.Common.V1.Common.CommonBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_BindService(Trinsic_Services_Common_V1_Common_CommonBase)_serviceImpl'></a>
`serviceImpl` [CommonBase](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Common_CommonBase 'Trinsic.Services.Common.V1.Common.CommonBase')  
An object implementing the server-side handling logic.
  
#### Returns
[Grpc.Core.ServerServiceDefinition](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerServiceDefinition 'Grpc.Core.ServerServiceDefinition')  
  
  
<a name='Trinsic_Services_Common_V1_Common_CommonBase'></a>
## Common.CommonBase Class
Base class for server-side implementations of Common
```csharp
public abstract class Common.CommonBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; CommonBase  
  
<a name='Trinsic_Services_Common_V1_Common_CommonClient'></a>
## Common.CommonClient Class
Client for Common
```csharp
public class Common.CommonClient : Grpc.Core.ClientBase<Trinsic.Services.Common.V1.Common.CommonClient>
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [Grpc.Core.ClientBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase 'Grpc.Core.ClientBase') &#129106; [Grpc.Core.ClientBase&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1')[CommonClient](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Common_CommonClient 'Trinsic.Services.Common.V1.Common.CommonClient')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1') &#129106; CommonClient  
### Constructors
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient()'></a>
## Common.CommonClient.CommonClient() Constructor
Protected parameterless constructor to allow creation of test doubles.
```csharp
protected CommonClient();
```
  
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_CallInvoker)'></a>
## Common.CommonClient.CommonClient(CallInvoker) Constructor
Creates a new client for Common that uses a custom `CallInvoker`.
```csharp
public CommonClient(Grpc.Core.CallInvoker callInvoker);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_CallInvoker)_callInvoker'></a>
`callInvoker` [Grpc.Core.CallInvoker](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallInvoker 'Grpc.Core.CallInvoker')  
The callInvoker to use to make remote calls.
  
  
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_ChannelBase)'></a>
## Common.CommonClient.CommonClient(ChannelBase) Constructor
Creates a new client for Common
```csharp
public CommonClient(Grpc.Core.ChannelBase channel);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_ChannelBase)_channel'></a>
`channel` [Grpc.Core.ChannelBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ChannelBase 'Grpc.Core.ChannelBase')  
The channel to use to make remote calls.
  
  
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Common.CommonClient.CommonClient(ClientBaseConfiguration) Constructor
Protected constructor to allow creation of configured clients.
```csharp
protected CommonClient(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_CommonClient_CommonClient(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
The client configuration.
  
  
### Methods
<a name='Trinsic_Services_Common_V1_Common_CommonClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Common.CommonClient.NewInstance(ClientBaseConfiguration) Method
Creates a new instance of client from given `ClientBaseConfiguration`.
```csharp
protected override Trinsic.Services.Common.V1.Common.CommonClient NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Common_V1_Common_CommonClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
  
#### Returns
[CommonClient](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Common_CommonClient 'Trinsic.Services.Common.V1.Common.CommonClient')  
  
  
<a name='Trinsic_Services_Common_V1_CommonReflection'></a>
## CommonReflection Class
Holder for reflection information generated from services/common/v1/common.proto
```csharp
public static class CommonReflection
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; CommonReflection  
### Properties
<a name='Trinsic_Services_Common_V1_CommonReflection_Descriptor'></a>
## CommonReflection.Descriptor Property
File descriptor for services/common/v1/common.proto
```csharp
public static Google.Protobuf.Reflection.FileDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.FileDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.FileDescriptor 'Google.Protobuf.Reflection.FileDescriptor')
  
  
<a name='Trinsic_Services_Common_V1_JsonPayload'></a>
## JsonPayload Class
```csharp
public sealed class JsonPayload :
Google.Protobuf.IMessage<Trinsic.Services.Common.V1.JsonPayload>,
Google.Protobuf.IMessage,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Common.V1.JsonPayload>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [System.IEquatable](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable 'System.IEquatable') &#129106; JsonPayload  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[JsonPayload](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_JsonPayload 'Trinsic.Services.Common.V1.JsonPayload')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[JsonPayload](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_JsonPayload 'Trinsic.Services.Common.V1.JsonPayload')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Common_V1_JsonPayload_JsonBytesFieldNumber'></a>
## JsonPayload.JsonBytesFieldNumber Field
Field number for the "json_bytes" field.
```csharp
public const int JsonBytesFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_JsonPayload_JsonStringFieldNumber'></a>
## JsonPayload.JsonStringFieldNumber Field
Field number for the "json_string" field.
```csharp
public const int JsonStringFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_JsonPayload_JsonStructFieldNumber'></a>
## JsonPayload.JsonStructFieldNumber Field
Field number for the "json_struct" field.
```csharp
public const int JsonStructFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Common_V1_Nonce'></a>
## Nonce Class
Nonce used to generate an oberon proof  
```csharp
public sealed class Nonce :
Google.Protobuf.IMessage<Trinsic.Services.Common.V1.Nonce>,
Google.Protobuf.IMessage,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Common.V1.Nonce>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [System.IEquatable](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable 'System.IEquatable') &#129106; Nonce  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[Nonce](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Nonce 'Trinsic.Services.Common.V1.Nonce')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[Nonce](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_Nonce 'Trinsic.Services.Common.V1.Nonce')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Common_V1_Nonce_RequestHashFieldNumber'></a>
## Nonce.RequestHashFieldNumber Field
Field number for the "request_hash" field.
```csharp
public const int RequestHashFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_Nonce_TimestampFieldNumber'></a>
## Nonce.TimestampFieldNumber Field
Field number for the "timestamp" field.
```csharp
public const int TimestampFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Common_V1_Nonce_RequestHash'></a>
## Nonce.RequestHash Property
blake3256 hash of the request body  
```csharp
public Google.Protobuf.ByteString RequestHash { get; set; }
```
#### Property Value
[Google.Protobuf.ByteString](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.ByteString 'Google.Protobuf.ByteString')
  
<a name='Trinsic_Services_Common_V1_Nonce_Timestamp'></a>
## Nonce.Timestamp Property
UTC unix millisecond timestamp the request was made  
```csharp
public long Timestamp { get; set; }
```
#### Property Value
[System.Int64](https://docs.microsoft.com/en-us/dotnet/api/System.Int64 'System.Int64')
  
  
<a name='Trinsic_Services_Common_V1_RequestOptions'></a>
## RequestOptions Class
```csharp
public sealed class RequestOptions :
Google.Protobuf.IMessage<Trinsic.Services.Common.V1.RequestOptions>,
Google.Protobuf.IMessage,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Common.V1.RequestOptions>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [System.IEquatable](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable 'System.IEquatable') &#129106; RequestOptions  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[RequestOptions](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_RequestOptions 'Trinsic.Services.Common.V1.RequestOptions')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[RequestOptions](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_RequestOptions 'Trinsic.Services.Common.V1.RequestOptions')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Common_V1_RequestOptions_ResponseJsonFormatFieldNumber'></a>
## RequestOptions.ResponseJsonFormatFieldNumber Field
Field number for the "response_json_format" field.
```csharp
public const int ResponseJsonFormatFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Common_V1_ServerConfig'></a>
## ServerConfig Class
```csharp
public sealed class ServerConfig :
Google.Protobuf.IMessage<Trinsic.Services.Common.V1.ServerConfig>,
Google.Protobuf.IMessage,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Common.V1.ServerConfig>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [System.IEquatable](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable 'System.IEquatable') &#129106; ServerConfig  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[ServerConfig](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_ServerConfig 'Trinsic.Services.Common.V1.ServerConfig')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[ServerConfig](Trinsic_Services_Common_V1.md#Trinsic_Services_Common_V1_ServerConfig 'Trinsic.Services.Common.V1.ServerConfig')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Common_V1_ServerConfig_EndpointFieldNumber'></a>
## ServerConfig.EndpointFieldNumber Field
Field number for the "endpoint" field.
```csharp
public const int EndpointFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_ServerConfig_PortFieldNumber'></a>
## ServerConfig.PortFieldNumber Field
Field number for the "port" field.
```csharp
public const int PortFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_ServerConfig_UseTlsFieldNumber'></a>
## ServerConfig.UseTlsFieldNumber Field
Field number for the "use_tls" field.
```csharp
public const int UseTlsFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Common_V1_ServerConfig_Endpoint'></a>
## ServerConfig.Endpoint Property
service endpoint  
```csharp
public string Endpoint { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Common_V1_ServerConfig_Port'></a>
## ServerConfig.Port Property
service port  
```csharp
public int Port { get; set; }
```
#### Property Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Common_V1_ServerConfig_UseTls'></a>
## ServerConfig.UseTls Property
indicates if tls is used  
```csharp
public bool UseTls { get; set; }
```
#### Property Value
[System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')
  
  
### Enums
<a name='Trinsic_Services_Common_V1_JsonPayload_JsonOneofCase'></a>
## JsonPayload.JsonOneofCase Enum
Enum of possible cases for the "json" oneof.
```csharp
public enum JsonPayload.JsonOneofCase

```
  
