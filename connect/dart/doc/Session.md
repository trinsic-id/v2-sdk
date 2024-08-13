# TrinsicConnect.model.Session

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**clientToken** | **String** | The Client Token for this session -- passed to your frontend to securely invoke the Connect Widget on your user's device.                Client Tokens are one-time use: once the frontend has been invoked on your user's device, the token is invalid and may no longer be used.  If re-invocation is necessary, you must create a new session. | 
**state** | [**IDVSessionState**](IDVSessionState.md) | The state of the session | 
**failCode** | [**SessionFailCode**](SessionFailCode.md) | If the session is in state `IdvFailed`, this field contains the reason for failure. | [optional] 
**verification** | [**Verification**](Verification.md) | The underlying verification for this Session | 
**created** | **int** | The unix timestamp, in seconds, when this session was created | 
**updated** | **int** | The unix timestamp, in seconds, when this session's state last changed | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


