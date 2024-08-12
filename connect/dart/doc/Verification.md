# TrinsicConnect.model.Verification

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the Verification within the Session | 
**state** | [**VerificationState**](VerificationState.md) |  | 
**failCode** | [**VerificationFailCode**](VerificationFailCode.md) | If the Verification is in state `VerificationFailed`, this field contains the reason for failure | [optional] 
**reused** | **bool** | Whether the Verification was completed by reusing a Trinsic Connect identity credential (`true`) or via a fresh verification (`false`) | 
**updated** | **int** | The unix timestamp, in seconds, when this Verification's state last changed | 
**disclosedFields** | [**DisclosedFields**](DisclosedFields.md) | The fields that were requested to be disclosed when the Session for this Verification was created | 
**identityData** | [**IdentityData**](IdentityData.md) | The results of the Verification. Only present if the Session's `state` is `IdvSuccess`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


