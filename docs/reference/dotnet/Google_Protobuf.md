#### [Trinsic](index.md 'index')
## Google.Protobuf Namespace
### Classes
<a name='Google_Protobuf_ProtoMessageExtensions'></a>
## ProtoMessageExtensions Class
```csharp
public static class ProtoMessageExtensions
```

Inheritance [System.Object](https://docs.microsoft.com/en-us/dotnet/api/System.Object 'System.Object') &#129106; ProtoMessageExtensions  
### Methods
<a name='Google_Protobuf_ProtoMessageExtensions_As_T_(Google_Protobuf_IMessage)'></a>
## ProtoMessageExtensions.As&lt;T&gt;(IMessage) Method
Converts a message from one type into another. The two types must be compatible  
and generated from the same .proto file, but may have different namespaces.  
```csharp
public static T As<T>(this Google.Protobuf.IMessage message)
    where T : Google.Protobuf.IMessage, new();
```
#### Type parameters
<a name='Google_Protobuf_ProtoMessageExtensions_As_T_(Google_Protobuf_IMessage)_T'></a>
`T`  
  
#### Parameters
<a name='Google_Protobuf_ProtoMessageExtensions_As_T_(Google_Protobuf_IMessage)_message'></a>
`message` [Google.Protobuf.IMessage](https://docs.microsoft.com/en-us/dotnet/api/Google.Protobuf.IMessage 'Google.Protobuf.IMessage')  
  
#### Returns
[T](Google_Protobuf.md#Google_Protobuf_ProtoMessageExtensions_As_T_(Google_Protobuf_IMessage)_T 'Google.Protobuf.ProtoMessageExtensions.As&lt;T&gt;(Google.Protobuf.IMessage).T')  
  
  
