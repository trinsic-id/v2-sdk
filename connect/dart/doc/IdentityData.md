# TrinsicConnect.model.IdentityData

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**originatingProviderId** | **String** | The ID of the integration from which this data originated (eg \"yoti\", \"clear\") | [optional] 
**person** | [**PersonData**](PersonData.md) | Identity data of the individual who was verified | [optional] 
**document** | [**DocumentData**](DocumentData.md) | Identity data of the document involved in verification, if relevant | [optional] 
**attachments** | [**Attachments**](Attachments.md) | Access keys for attachments (eg document/selfie images) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


