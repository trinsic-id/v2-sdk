#### [Trinsic](index.md 'index')
## Trinsic.Services.Account.V1 Namespace
### Classes
<a name='Trinsic_Services_Account_V1_Account'></a>
## Account Class
```csharp
public static class Account
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; Account  
### Properties
<a name='Trinsic_Services_Account_V1_Account_Descriptor'></a>
## Account.Descriptor Property
Service descriptor
```csharp
public static Google.Protobuf.Reflection.ServiceDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.ServiceDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.ServiceDescriptor 'Google.Protobuf.Reflection.ServiceDescriptor')
  
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient'></a>
## Account.AccountClient Class
Client for Account
```csharp
public class Account.AccountClient : Grpc.Core.ClientBase<Trinsic.Services.Account.V1.Account.AccountClient>
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; [Grpc.Core.ClientBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase 'Grpc.Core.ClientBase') &#129106; [Grpc.Core.ClientBase&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1')[AccountClient](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_Account_AccountClient 'Trinsic.Services.Account.V1.Account.AccountClient')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase-1 'Grpc.Core.ClientBase`1') &#129106; AccountClient  
### Constructors
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient()'></a>
## Account.AccountClient.AccountClient() Constructor
Protected parameterless constructor to allow creation of test doubles.
```csharp
protected AccountClient();
```
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_CallInvoker)'></a>
## Account.AccountClient.AccountClient(CallInvoker) Constructor
Creates a new client for Account that uses a custom `CallInvoker`.
```csharp
public AccountClient(Grpc.Core.CallInvoker callInvoker);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_CallInvoker)_callInvoker'></a>
`callInvoker` [Grpc.Core.CallInvoker](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallInvoker 'Grpc.Core.CallInvoker')  
The callInvoker to use to make remote calls.
  
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_ChannelBase)'></a>
## Account.AccountClient.AccountClient(ChannelBase) Constructor
Creates a new client for Account
```csharp
public AccountClient(Grpc.Core.ChannelBase channel);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_ChannelBase)_channel'></a>
`channel` [Grpc.Core.ChannelBase](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ChannelBase 'Grpc.Core.ChannelBase')  
The channel to use to make remote calls.
  
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Account.AccountClient.AccountClient(ClientBaseConfiguration) Constructor
Protected constructor to allow creation of configured clients.
```csharp
protected AccountClient(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_AccountClient(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
The client configuration.
  
  
### Methods
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.Info(InfoRequest, CallOptions) Method
Get account information  
```csharp
public virtual Trinsic.Services.Account.V1.InfoResponse Info(Trinsic.Services.Account.V1.InfoRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.InfoRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.InfoRequest 'Trinsic.Services.Account.V1.InfoRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.Info(InfoRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Get account information  
```csharp
public virtual Trinsic.Services.Account.V1.InfoResponse Info(Trinsic.Services.Account.V1.InfoRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.InfoRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.InfoRequest 'Trinsic.Services.Account.V1.InfoRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_Info(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.InfoAsync(InfoRequest, CallOptions) Method
Get account information  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.InfoResponse> InfoAsync(Trinsic.Services.Account.V1.InfoRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.InfoRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.InfoRequest 'Trinsic.Services.Account.V1.InfoRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.InfoAsync(InfoRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Get account information  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.InfoResponse> InfoAsync(Trinsic.Services.Account.V1.InfoRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.InfoRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.InfoRequest 'Trinsic.Services.Account.V1.InfoRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_InfoAsync(Trinsic_Services_Account_V1_InfoRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.ListDevices(ListDevicesRequest, CallOptions) Method
List all connected devices  
```csharp
public virtual Trinsic.Services.Account.V1.ListDevicesResponse ListDevices(Trinsic.Services.Account.V1.ListDevicesRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.ListDevicesRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Trinsic.Services.Account.V1.ListDevicesResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesResponse 'Trinsic.Services.Account.V1.ListDevicesResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.ListDevices(ListDevicesRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
List all connected devices  
```csharp
public virtual Trinsic.Services.Account.V1.ListDevicesResponse ListDevices(Trinsic.Services.Account.V1.ListDevicesRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.ListDevicesRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevices(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Trinsic.Services.Account.V1.ListDevicesResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesResponse 'Trinsic.Services.Account.V1.ListDevicesResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.ListDevicesAsync(ListDevicesRequest, CallOptions) Method
List all connected devices  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.ListDevicesResponse> ListDevicesAsync(Trinsic.Services.Account.V1.ListDevicesRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.ListDevicesRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[Trinsic.Services.Account.V1.ListDevicesResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesResponse 'Trinsic.Services.Account.V1.ListDevicesResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.ListDevicesAsync(ListDevicesRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
List all connected devices  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.ListDevicesResponse> ListDevicesAsync(Trinsic.Services.Account.V1.ListDevicesRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.ListDevicesRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_ListDevicesAsync(Trinsic_Services_Account_V1_ListDevicesRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[Trinsic.Services.Account.V1.ListDevicesResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.ListDevicesResponse 'Trinsic.Services.Account.V1.ListDevicesResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)'></a>
## Account.AccountClient.NewInstance(ClientBaseConfiguration) Method
Creates a new instance of client from given `ClientBaseConfiguration`.
```csharp
protected override Trinsic.Services.Account.V1.Account.AccountClient NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration configuration);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_NewInstance(Grpc_Core_ClientBase_ClientBaseConfiguration)_configuration'></a>
`configuration` [Grpc.Core.ClientBase.ClientBaseConfiguration](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.ClientBase.ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration')  
  
#### Returns
[AccountClient](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_Account_AccountClient 'Trinsic.Services.Account.V1.Account.AccountClient')  
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.RevokeDevice(RevokeDeviceRequest, CallOptions) Method
Revoke device access to the account's cloud wallet  
```csharp
public virtual Trinsic.Services.Account.V1.RevokeDeviceResponse RevokeDevice(Trinsic.Services.Account.V1.RevokeDeviceRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.RevokeDeviceRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Trinsic.Services.Account.V1.RevokeDeviceResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceResponse 'Trinsic.Services.Account.V1.RevokeDeviceResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.RevokeDevice(RevokeDeviceRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Revoke device access to the account's cloud wallet  
```csharp
public virtual Trinsic.Services.Account.V1.RevokeDeviceResponse RevokeDevice(Trinsic.Services.Account.V1.RevokeDeviceRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.RevokeDeviceRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDevice(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Trinsic.Services.Account.V1.RevokeDeviceResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceResponse 'Trinsic.Services.Account.V1.RevokeDeviceResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.RevokeDeviceAsync(RevokeDeviceRequest, CallOptions) Method
Revoke device access to the account's cloud wallet  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.RevokeDeviceResponse> RevokeDeviceAsync(Trinsic.Services.Account.V1.RevokeDeviceRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)_request'></a>
`request` [Trinsic.Services.Account.V1.RevokeDeviceRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[Trinsic.Services.Account.V1.RevokeDeviceResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceResponse 'Trinsic.Services.Account.V1.RevokeDeviceResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.RevokeDeviceAsync(RevokeDeviceRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Revoke device access to the account's cloud wallet  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.RevokeDeviceResponse> RevokeDeviceAsync(Trinsic.Services.Account.V1.RevokeDeviceRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [Trinsic.Services.Account.V1.RevokeDeviceRequest](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_RevokeDeviceAsync(Trinsic_Services_Account_V1_RevokeDeviceRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[Trinsic.Services.Account.V1.RevokeDeviceResponse](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Account.V1.RevokeDeviceResponse 'Trinsic.Services.Account.V1.RevokeDeviceResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.SignIn(SignInRequest, CallOptions) Method
Sign in to an already existing account  
```csharp
public virtual Trinsic.Services.Account.V1.SignInResponse SignIn(Trinsic.Services.Account.V1.SignInRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)_request'></a>
`request` [SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.SignIn(SignInRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Sign in to an already existing account  
```csharp
public virtual Trinsic.Services.Account.V1.SignInResponse SignIn(Trinsic.Services.Account.V1.SignInRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignIn(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')  
The response received from the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)'></a>
## Account.AccountClient.SignInAsync(SignInRequest, CallOptions) Method
Sign in to an already existing account  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.SignInResponse> SignInAsync(Trinsic.Services.Account.V1.SignInRequest request, Grpc.Core.CallOptions options);
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)_request'></a>
`request` [SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_CallOptions)_options'></a>
`options` [Grpc.Core.CallOptions](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.CallOptions 'Grpc.Core.CallOptions')  
The options for the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)'></a>
## Account.AccountClient.SignInAsync(SignInRequest, Metadata, Nullable&lt;DateTime&gt;, CancellationToken) Method
Sign in to an already existing account  
```csharp
public virtual Grpc.Core.AsyncUnaryCall<Trinsic.Services.Account.V1.SignInResponse> SignInAsync(Trinsic.Services.Account.V1.SignInRequest request, Grpc.Core.Metadata headers=null, System.Nullable<System.DateTime> deadline=null, System.Threading.CancellationToken cancellationToken=default(System.Threading.CancellationToken));
```
#### Parameters
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_request'></a>
`request` [SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')  
The request to send to the server.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_headers'></a>
`headers` [Grpc.Core.Metadata](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.Metadata 'Grpc.Core.Metadata')  
The initial metadata to send with the call. This parameter is optional.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_deadline'></a>
`deadline` [System.Nullable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')[System.DateTime](https://docs.microsoft.com/en-us/dotnet/api/System.DateTime 'System.DateTime')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.Nullable-1 'System.Nullable`1')  
An optional deadline for the call. The call will be cancelled if deadline is hit.
  
<a name='Trinsic_Services_Account_V1_Account_AccountClient_SignInAsync(Trinsic_Services_Account_V1_SignInRequest_Grpc_Core_Metadata_System_Nullable_System_DateTime__System_Threading_CancellationToken)_cancellationToken'></a>
`cancellationToken` [System.Threading.CancellationToken](https://docs.microsoft.com/en-us/dotnet/api/System.Threading.CancellationToken 'System.Threading.CancellationToken')  
An optional token for canceling the call.
  
#### Returns
[Grpc.Core.AsyncUnaryCall&lt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Grpc.Core.AsyncUnaryCall-1 'Grpc.Core.AsyncUnaryCall`1')  
The call object.
  
  
<a name='Trinsic_Services_Account_V1_AccountDetails'></a>
## AccountDetails Class
Account Registration Details  
```csharp
public sealed class AccountDetails :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.AccountDetails>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.AccountDetails>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.AccountDetails>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; AccountDetails  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_AccountDetails_EmailFieldNumber'></a>
## AccountDetails.EmailFieldNumber Field
Field number for the "email" field.
```csharp
public const int EmailFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountDetails_NameFieldNumber'></a>
## AccountDetails.NameFieldNumber Field
Field number for the "name" field.
```csharp
public const int NameFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountDetails_SmsFieldNumber'></a>
## AccountDetails.SmsFieldNumber Field
Field number for the "sms" field.
```csharp
public const int SmsFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_AccountDetails_Email'></a>
## AccountDetails.Email Property
Email account (required)  
```csharp
public string Email { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Account_V1_AccountDetails_Name'></a>
## AccountDetails.Name Property
Account name (optional)  
```csharp
public string Name { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Account_V1_AccountDetails_Sms'></a>
## AccountDetails.Sms Property
SMS number including country code (optional)  
```csharp
public string Sms { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
  
<a name='Trinsic_Services_Account_V1_AccountEcosystem'></a>
## AccountEcosystem Class
```csharp
public sealed class AccountEcosystem :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.AccountEcosystem>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.AccountEcosystem>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.AccountEcosystem>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; AccountEcosystem  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[AccountEcosystem](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountEcosystem 'Trinsic.Services.Account.V1.AccountEcosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[AccountEcosystem](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountEcosystem 'Trinsic.Services.Account.V1.AccountEcosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[AccountEcosystem](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountEcosystem 'Trinsic.Services.Account.V1.AccountEcosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_AccountEcosystem_DescriptionFieldNumber'></a>
## AccountEcosystem.DescriptionFieldNumber Field
Field number for the "description" field.
```csharp
public const int DescriptionFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountEcosystem_IdFieldNumber'></a>
## AccountEcosystem.IdFieldNumber Field
Field number for the "id" field.
```csharp
public const int IdFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountEcosystem_NameFieldNumber'></a>
## AccountEcosystem.NameFieldNumber Field
Field number for the "name" field.
```csharp
public const int NameFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountEcosystem_UriFieldNumber'></a>
## AccountEcosystem.UriFieldNumber Field
Field number for the "uri" field.
```csharp
public const int UriFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
  
<a name='Trinsic_Services_Account_V1_AccountProfile'></a>
## AccountProfile Class
Device profile containing sensitive authentication data.  
This information should be stored securely  
```csharp
public sealed class AccountProfile :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.AccountProfile>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.AccountProfile>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.AccountProfile>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; AccountProfile  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_AccountProfile_AuthDataFieldNumber'></a>
## AccountProfile.AuthDataFieldNumber Field
Field number for the "auth_data" field.
```csharp
public const int AuthDataFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_AuthTokenFieldNumber'></a>
## AccountProfile.AuthTokenFieldNumber Field
Field number for the "auth_token" field.
```csharp
public const int AuthTokenFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_ProfileTypeFieldNumber'></a>
## AccountProfile.ProfileTypeFieldNumber Field
Field number for the "profile_type" field.
```csharp
public const int ProfileTypeFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_ProtectionFieldNumber'></a>
## AccountProfile.ProtectionFieldNumber Field
Field number for the "protection" field.
```csharp
public const int ProtectionFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_AccountProfile_AuthData'></a>
## AccountProfile.AuthData Property
Auth data containg information about the current device access  
```csharp
public Google.Protobuf.ByteString AuthData { get; set; }
```
#### Property Value
[Google.Protobuf.ByteString](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.ByteString 'Google.Protobuf.ByteString')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_AuthToken'></a>
## AccountProfile.AuthToken Property
Secure token issued by server used to generate zero-knowledge proofs  
```csharp
public Google.Protobuf.ByteString AuthToken { get; set; }
```
#### Property Value
[Google.Protobuf.ByteString](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.ByteString 'Google.Protobuf.ByteString')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_ProfileType'></a>
## AccountProfile.ProfileType Property
The type of profile, used to differentiate between  
protocol schemes or versions  
```csharp
public string ProfileType { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Account_V1_AccountProfile_Protection'></a>
## AccountProfile.Protection Property
Token security information about the token.  
If token protection is enabled, implementations must supply  
protection secret before using the token for authentication.  
```csharp
public Trinsic.Services.Account.V1.TokenProtection Protection { get; set; }
```
#### Property Value
[TokenProtection](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_TokenProtection 'Trinsic.Services.Account.V1.TokenProtection')
  
  
<a name='Trinsic_Services_Account_V1_AccountReflection'></a>
## AccountReflection Class
Holder for reflection information generated from services/account/v1/account.proto
```csharp
public static class AccountReflection
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; AccountReflection  
### Properties
<a name='Trinsic_Services_Account_V1_AccountReflection_Descriptor'></a>
## AccountReflection.Descriptor Property
File descriptor for services/account/v1/account.proto
```csharp
public static Google.Protobuf.Reflection.FileDescriptor Descriptor { get; }
```
#### Property Value
[Google.Protobuf.Reflection.FileDescriptor](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Reflection.FileDescriptor 'Google.Protobuf.Reflection.FileDescriptor')
  
  
<a name='Trinsic_Services_Account_V1_InfoResponse'></a>
## InfoResponse Class
```csharp
public sealed class InfoResponse :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.InfoResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.InfoResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.InfoResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; InfoResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[InfoResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_InfoResponse_DetailsFieldNumber'></a>
## InfoResponse.DetailsFieldNumber Field
Field number for the "details" field.
```csharp
public const int DetailsFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_InfoResponse_EcosystemsFieldNumber'></a>
## InfoResponse.EcosystemsFieldNumber Field
Field number for the "ecosystems" field.
```csharp
public const int EcosystemsFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_InfoResponse_Details'></a>
## InfoResponse.Details Property
The account details associated with  
the calling request context  
```csharp
public Trinsic.Services.Account.V1.AccountDetails Details { get; set; }
```
#### Property Value
[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')
  
<a name='Trinsic_Services_Account_V1_InfoResponse_Ecosystems'></a>
## InfoResponse.Ecosystems Property
any ecosystems the account has access to  
```csharp
public Google.Protobuf.Collections.RepeatedField<Trinsic.Services.Account.V1.AccountEcosystem> Ecosystems { get; }
```
#### Property Value
[Google.Protobuf.Collections.RepeatedField&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Collections.RepeatedField-1 'Google.Protobuf.Collections.RepeatedField`1')[AccountEcosystem](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountEcosystem 'Trinsic.Services.Account.V1.AccountEcosystem')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.Collections.RepeatedField-1 'Google.Protobuf.Collections.RepeatedField`1')
  
  
<a name='Trinsic_Services_Account_V1_SignInRequest'></a>
## SignInRequest Class
Request for creating new account  
```csharp
public sealed class SignInRequest :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.SignInRequest>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.SignInRequest>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.SignInRequest>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; SignInRequest  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[SignInRequest](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_SignInRequest_DetailsFieldNumber'></a>
## SignInRequest.DetailsFieldNumber Field
Field number for the "details" field.
```csharp
public const int DetailsFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_SignInRequest_EcosystemIdFieldNumber'></a>
## SignInRequest.EcosystemIdFieldNumber Field
Field number for the "ecosystem_id" field.
```csharp
public const int EcosystemIdFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_SignInRequest_InvitationCodeFieldNumber'></a>
## SignInRequest.InvitationCodeFieldNumber Field
Field number for the "invitation_code" field.
```csharp
public const int InvitationCodeFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_SignInRequest_Details'></a>
## SignInRequest.Details Property
Account registration details  
```csharp
public Trinsic.Services.Account.V1.AccountDetails Details { get; set; }
```
#### Property Value
[AccountDetails](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')
  
<a name='Trinsic_Services_Account_V1_SignInRequest_EcosystemId'></a>
## SignInRequest.EcosystemId Property
EcosystemId to sign in. This field is optional  
and will be ignored if invitation_code is passed  
```csharp
public string EcosystemId { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
<a name='Trinsic_Services_Account_V1_SignInRequest_InvitationCode'></a>
## SignInRequest.InvitationCode Property
Invitation code associated with this registration  
This field is optional.  
```csharp
public string InvitationCode { get; set; }
```
#### Property Value
[System.String](https://docs.microsoft.com/en-us/dotnet/api/System.String 'System.String')
  
  
<a name='Trinsic_Services_Account_V1_SignInResponse'></a>
## SignInResponse Class
Response for creating new account  
This object will indicate if a confirmation code  
was sent to one of the users two-factor methods  
like email, SMS, etc.  
```csharp
public sealed class SignInResponse :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.SignInResponse>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.SignInResponse>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.SignInResponse>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; SignInResponse  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[SignInResponse](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_SignInResponse_ConfirmationMethodFieldNumber'></a>
## SignInResponse.ConfirmationMethodFieldNumber Field
Field number for the "confirmation_method" field.
```csharp
public const int ConfirmationMethodFieldNumber = 3;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_SignInResponse_ProfileFieldNumber'></a>
## SignInResponse.ProfileFieldNumber Field
Field number for the "profile" field.
```csharp
public const int ProfileFieldNumber = 4;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_SignInResponse_StatusFieldNumber'></a>
## SignInResponse.StatusFieldNumber Field
Field number for the "status" field.
```csharp
public const int StatusFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_SignInResponse_ConfirmationMethod'></a>
## SignInResponse.ConfirmationMethod Property
Indicates if confirmation of account is required.  
This settings is configured globally by the server administrator.  
```csharp
public Trinsic.Services.Account.V1.ConfirmationMethod ConfirmationMethod { get; set; }
```
#### Property Value
[ConfirmationMethod](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_ConfirmationMethod 'Trinsic.Services.Account.V1.ConfirmationMethod')
  
<a name='Trinsic_Services_Account_V1_SignInResponse_Profile'></a>
## SignInResponse.Profile Property
Contains authentication data for use with the current device.  
This object must be stored in a secure place. It can also be  
protected with a PIN, but this is optional.  
See the docs at https://docs.trinsic.id for more information  
on working with authentication data.  
```csharp
public Trinsic.Services.Account.V1.AccountProfile Profile { get; set; }
```
#### Property Value
[AccountProfile](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')
  
<a name='Trinsic_Services_Account_V1_SignInResponse_Status'></a>
## SignInResponse.Status Property
The status of the response  
```csharp
public Trinsic.Services.Common.V1.ResponseStatus Status { get; set; }
```
#### Property Value
[Trinsic.Services.Common.V1.ResponseStatus](https://docs.microsoft.com/en-us/dotnet/api/Trinsic.Services.Common.V1.ResponseStatus 'Trinsic.Services.Common.V1.ResponseStatus')
  
  
<a name='Trinsic_Services_Account_V1_TokenProtection'></a>
## TokenProtection Class
Token protection info  
```csharp
public sealed class TokenProtection :
Google.Protobuf.IMessage<Trinsic.Services.Account.V1.TokenProtection>,
Google.Protobuf.IMessage,
System.IEquatable<Trinsic.Services.Account.V1.TokenProtection>,
Google.Protobuf.IDeepCloneable<Trinsic.Services.Account.V1.TokenProtection>,
Google.Protobuf.IBufferMessage
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; TokenProtection  

Implements [Google.Protobuf.IMessage&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1')[TokenProtection](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_TokenProtection 'Trinsic.Services.Account.V1.TokenProtection')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage-1 'Google.Protobuf.IMessage`1'), [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage'), [System.IEquatable&lt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1')[TokenProtection](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_TokenProtection 'Trinsic.Services.Account.V1.TokenProtection')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/System.IEquatable-1 'System.IEquatable`1'), [Google.Protobuf.IDeepCloneable&lt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1')[TokenProtection](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_TokenProtection 'Trinsic.Services.Account.V1.TokenProtection')[&gt;](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IDeepCloneable-1 'Google.Protobuf.IDeepCloneable`1'), [Google.Protobuf.IBufferMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IBufferMessage 'Google.Protobuf.IBufferMessage')  
### Fields
<a name='Trinsic_Services_Account_V1_TokenProtection_EnabledFieldNumber'></a>
## TokenProtection.EnabledFieldNumber Field
Field number for the "enabled" field.
```csharp
public const int EnabledFieldNumber = 1;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
<a name='Trinsic_Services_Account_V1_TokenProtection_MethodFieldNumber'></a>
## TokenProtection.MethodFieldNumber Field
Field number for the "method" field.
```csharp
public const int MethodFieldNumber = 2;
```
#### Field Value
[System.Int32](https://docs.microsoft.com/en-us/dotnet/api/System.Int32 'System.Int32')
  
### Properties
<a name='Trinsic_Services_Account_V1_TokenProtection_Enabled'></a>
## TokenProtection.Enabled Property
Indicates if token is protected using a PIN,  
security code, HSM secret, etc.  
```csharp
public bool Enabled { get; set; }
```
#### Property Value
[System.Boolean](https://docs.microsoft.com/en-us/dotnet/api/System.Boolean 'System.Boolean')
  
<a name='Trinsic_Services_Account_V1_TokenProtection_Method'></a>
## TokenProtection.Method Property
The method used to protect the token  
```csharp
public Trinsic.Services.Account.V1.ConfirmationMethod Method { get; set; }
```
#### Property Value
[ConfirmationMethod](Trinsic_Services_Account_V1.md#Trinsic_Services_Account_V1_ConfirmationMethod 'Trinsic.Services.Account.V1.ConfirmationMethod')
  
  
### Enums
<a name='Trinsic_Services_Account_V1_ConfirmationMethod'></a>
## ConfirmationMethod Enum
Confirmation method type for two-factor workflows  
```csharp
public enum ConfirmationMethod

```
#### Fields
<a name='Trinsic_Services_Account_V1_ConfirmationMethod_ConnectedDevice'></a>
`ConnectedDevice` 3  
Confirmation from a connected device is required  
  
<a name='Trinsic_Services_Account_V1_ConfirmationMethod_Email'></a>
`Email` 1  
Email confirmation required  
  
<a name='Trinsic_Services_Account_V1_ConfirmationMethod_None'></a>
`None` 0  
No confirmation required  
  
<a name='Trinsic_Services_Account_V1_ConfirmationMethod_Other'></a>
`Other` 10  
Indicates third-party method of confirmation is required  
  
<a name='Trinsic_Services_Account_V1_ConfirmationMethod_Sms'></a>
`Sms` 2  
SMS confirmation required  
  
  
