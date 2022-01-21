#### [Trinsic](index.md 'index')
## Trinsic.Services.Debug.V1 Namespace
### Classes
<a name='Trinsic_Services_Debug_V1_Debugging'></a>
## Debugging Class
```csharp
public static class Debugging
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Debugging  
### Properties
<a name='Trinsic_Services_Debug_V1_Debugging_Descriptor'></a>
## Debugging.Descriptor Property
Service descriptor
```csharp
public static Google.Protobuf.Reflection.ServiceDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.ServiceDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.ServiceDescriptor 'Google.Protobuf.Reflection.ServiceDescriptor')
  
### Methods
<a name='Trinsic_Services_Debug_V1_Debugging_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Debug_V1_Debugging_DebuggingBase)'></a>
## Debugging.BindService(ServiceBinderBase, DebuggingBase) Method
Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.  
            Note: this method is part of an experimental API that can change or be removed without any prior notice.
```csharp
public static void BindService(Grpc.Core.ServiceBinderBase serviceBinder, Trinsic.Services.Debug.V1.Debugging.DebuggingBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Debug_V1_Debugging_DebuggingBase)_serviceBinder'></a>
`serviceBinder` [Grpc.Core.ServiceBinderBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServiceBinderBase 'Grpc.Core.ServiceBinderBase')  
Service methods will be bound by calling `AddMethod` on this object.
  
<a name='Trinsic_Services_Debug_V1_Debugging_BindService(Grpc_Core_ServiceBinderBase_Trinsic_Services_Debug_V1_Debugging_DebuggingBase)_serviceImpl'></a>
`serviceImpl` [DebuggingBase](Trinsic_Services_Debug_V1.md#Trinsic_Services_Debug_V1_Debugging_DebuggingBase 'Trinsic.Services.Debug.V1.Debugging.DebuggingBase')  
An object implementing the server-side handling logic.
  
  
<a name='Trinsic_Services_Debug_V1_Debugging_BindService(Trinsic_Services_Debug_V1_Debugging_DebuggingBase)'></a>
## Debugging.BindService(DebuggingBase) Method
Creates service definition that can be registered with a server
```csharp
public static Grpc.Core.ServerServiceDefinition BindService(Trinsic.Services.Debug.V1.Debugging.DebuggingBase serviceImpl);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_BindService(Trinsic_Services_Debug_V1_Debugging_DebuggingBase)_serviceImpl'></a>
`serviceImpl` [DebuggingBase](Trinsic_Services_Debug_V1.md#Trinsic_Services_Debug_V1_Debugging_DebuggingBase 'Trinsic.Services.Debug.V1.Debugging.DebuggingBase')  
An object implementing the server-side handling logic.
  
#### Returns
[Grpc.Core.ServerServiceDefinition](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ServerServiceDefinition 'Grpc.Core.ServerServiceDefinition')  
  
  
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingBase'></a>
## Debugging.DebuggingBase Class
Base class for server-side implementations of Debugging
```csharp
public abstract class Debugging.DebuggingBase
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; DebuggingBase  
  
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient'></a>
## Debugging.DebuggingClient Class
Client for Debugging
```csharp
public class Debugging.DebuggingClient : Grpc.Core.ClientBase<Trinsic.Services.Debug.V1.Debugging.DebuggingClient>
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [Grpc.Core.ClientBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase 'Grpc.Core.ClientBase') &#129106; [Grpc.Core.ClientBase&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1')[DebuggingClient](Trinsic_Services_Debug_V1.md#Trinsic_Services_Debug_V1_Debugging_DebuggingClient 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1') &#129106; DebuggingClient  
### Constructors
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient()'></a>
## Debugging.DebuggingClient.DebuggingClient() Constructor
Protected parameterless constructor to allow creation of test doubles.
```csharp
protected DebuggingClient();
```
  
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_CallInvoker)'></a>
## Debugging.DebuggingClient.DebuggingClient(CallInvoker) Constructor
Creates a new client for Debugging that uses a custom `CallInvoker`.
```csharp
public DebuggingClient(Grpc.Core.CallInvoker callInvoker);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_CallInvoker)_callInvoker'></a>
`callInvoker` [Grpc.Core.CallInvoker](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallInvoker 'Grpc.Core.CallInvoker')  
The callInvoker to use to make remote calls.
  
  
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_ChannelBase)'></a>
## Debugging.DebuggingClient.DebuggingClient(ChannelBase) Constructor
Creates a new client for Debugging
```csharp
public DebuggingClient(Grpc.Core.ChannelBase channel);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_ChannelBase)_channel'></a>
`channel` [Grpc.Core.ChannelBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ChannelBase 'Grpc.Core.ChannelBase')  
The channel to use to make remote calls.
  
  
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Debugging.DebuggingClient.DebuggingClient(ClientBaseConfiguration) Constructor
Protected constructor to allow creation of configured clients.
```csharp
protected DebuggingClient(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_DebuggingClient(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
The client configuration.
  
  
### Methods
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Debugging.DebuggingClient.NewInstance(ClientBaseConfiguration) Method
Creates a new instance of client from given `ClientBaseConfiguration`.
```csharp
protected override Trinsic.Services.Debug.V1.Debugging.DebuggingClient NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Debug_V1_Debugging_DebuggingClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
  
#### Returns
[DebuggingClient](Trinsic_Services_Debug_V1.md#Trinsic_Services_Debug_V1_Debugging_DebuggingClient 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient')  
  
  
<a name='Trinsic_Services_Debug_V1_DebugReflection'></a>
## DebugReflection Class
Holder for reflection information generated from debug.proto
```csharp
public static class DebugReflection
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; DebugReflection  
### Properties
<a name='Trinsic_Services_Debug_V1_DebugReflection_Descriptor'></a>
## DebugReflection.Descriptor Property
File descriptor for debug.proto
```csharp
public static Google.Protobuf.Reflection.FileDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.FileDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.FileDescriptor 'Google.Protobuf.Reflection.FileDescriptor')
  
  
