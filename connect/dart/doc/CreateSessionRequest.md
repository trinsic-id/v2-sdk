# TrinsicConnect.model.CreateSessionRequest

## Load the model package
```dart
import 'package:TrinsicConnect/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direct** | **bool** | Whether to create this Session in Direct mode.                Direct mode is used to execute a verification against a specific identity provider.  Users will not be shown the Connect Widget; therefore, reuse of Connect credentials, selection of an identity provider, and saving a verification for future reuse  are not available to the end user in direct mode.                Sessions created in direct mode must be created with a `RedirectUrl` specified, and cannot be invoked using the frontend SDK at this time. | [optional] 
**redirectUrl** | **String** | The URL to redirect to after the user has completed the identity verification process.                If `Direct` is set to `true`, this field is required. | [optional] 
**providers** | **List<String>** | The list of allowed identity providers. If not specified, all available providers will be allowed.                If `Direct` is `true`, this field must be set, and must have only a single entry.  If `Direct` is not specified or is `false`, this field may have any number of entries. | [optional] [default to const []]
**disclosedFields** | [**DisclosedFieldsRequest**](DisclosedFieldsRequest.md) | Specific identity attributes to request. If not provided, all available attributes will be requested. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


