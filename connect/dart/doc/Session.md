# TrinsicConnect.model.Session

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**state** | [**SessionState**](SessionState.md) | The state of the session | 
**failCode** | [**SessionFailCode**](SessionFailCode.md) | If the session is in state `IdvFailed`, this field contains the reason for failure. | [optional] 
**verification** | [**Verification**](Verification.md) | The underlying verification for this Session | 
**disclosedFields** | [**DisclosedFields**](DisclosedFields.md) | The fields that were requested to be disclosed when the Session was created | 
**created** | **int** | The unix timestamp, in seconds, when this session was created | 
**updated** | **int** | The unix timestamp, in seconds, when this session's state last changed | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


