# TrinsicConnect.model.ExchangeTokenResponse

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionId** | **String** | The ID of the `VerificationSession` in question | 
**state** | [**VerificationSessionState**](VerificationSessionState.md) | The `VerificationSession`'s current state | 
**failCode** | [**VerificationFailCode**](VerificationFailCode.md) | If the `VerificationSession` failed, contains the reason why | [optional] 
**identityData** | [**IdentityData**](IdentityData.md) | The verified identity data, if the `VerificationSession` was successful | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


