# TrinsicConnect.api.NetworkApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**identityLookup**](NetworkApi.md#identitylookup) | **GET** /api/v1/network/identities/{phoneNumber} | Query the availability of an identity in the Trinsic Network by phone number
[**listProviders**](NetworkApi.md#listproviders) | **GET** /api/v1/network/providers | List all identity providers available for use


# **identityLookup**
> IdentityLookupResponse identityLookup(phoneNumber)

Query the availability of an identity in the Trinsic Network by phone number

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NetworkApi();
final phoneNumber = phoneNumber_example; // String | 

try {
    final result = api_instance.identityLookup(phoneNumber);
    print(result);
} catch (e) {
    print('Exception when calling NetworkApi->identityLookup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**|  | 

### Return type

[**IdentityLookupResponse**](IdentityLookupResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProviders**
> ListProvidersResponse listProviders()

List all identity providers available for use

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NetworkApi();

try {
    final result = api_instance.listProviders();
    print(result);
} catch (e) {
    print('Exception when calling NetworkApi->listProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListProvidersResponse**](ListProvidersResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

