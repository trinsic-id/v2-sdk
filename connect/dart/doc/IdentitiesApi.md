# TrinsicConnect.api.IdentitiesApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**canReuseCredential**](IdentitiesApi.md#canreusecredential) | **POST** /api/v1/identities/credentials/can-reuse | 


# **canReuseCredential**
> CanReuseCredentialResponse canReuseCredential(canReuseCredentialRequest)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = IdentitiesApi();
final canReuseCredentialRequest = CanReuseCredentialRequest(); // CanReuseCredentialRequest | 

try {
    final result = api_instance.canReuseCredential(canReuseCredentialRequest);
    print(result);
} catch (e) {
    print('Exception when calling IdentitiesApi->canReuseCredential: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **canReuseCredentialRequest** | [**CanReuseCredentialRequest**](CanReuseCredentialRequest.md)|  | [optional] 

### Return type

[**CanReuseCredentialResponse**](CanReuseCredentialResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

