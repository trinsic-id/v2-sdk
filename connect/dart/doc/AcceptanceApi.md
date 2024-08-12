# TrinsicConnect.api.AcceptanceApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVerificationSession**](AcceptanceApi.md#createverificationsession) | **PUT** /api/v1/acceptance/verification-session | Create a new `VerificationSession` for the given integration.
[**exchangeToken**](AcceptanceApi.md#exchangetoken) | **POST** /api/v1/acceptance/verification-session/{verificationSessionId}/exchange | Exchange a token for the results of a `VerificationSession`
[**getLinkedResource**](AcceptanceApi.md#getlinkedresource) | **GET** /api/v1/acceptance/resource | Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
[**listIntegrations**](AcceptanceApi.md#listintegrations) | **GET** /api/v1/acceptance/integrations | List all integrations available for use


# **createVerificationSession**
> CreateVerificationSessionResponse createVerificationSession(createVerificationSessionRequest)

Create a new `VerificationSession` for the given integration.

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AcceptanceApi();
final createVerificationSessionRequest = CreateVerificationSessionRequest(); // CreateVerificationSessionRequest | 

try {
    final result = api_instance.createVerificationSession(createVerificationSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling AcceptanceApi->createVerificationSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createVerificationSessionRequest** | [**CreateVerificationSessionRequest**](CreateVerificationSessionRequest.md)|  | [optional] 

### Return type

[**CreateVerificationSessionResponse**](CreateVerificationSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangeToken**
> ExchangeTokenResponse exchangeToken(verificationSessionId, exchangeTokenRequest)

Exchange a token for the results of a `VerificationSession`

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AcceptanceApi();
final verificationSessionId = verificationSessionId_example; // String | 
final exchangeTokenRequest = ExchangeTokenRequest(); // ExchangeTokenRequest | 

try {
    final result = api_instance.exchangeToken(verificationSessionId, exchangeTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling AcceptanceApi->exchangeToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verificationSessionId** | **String**|  | 
 **exchangeTokenRequest** | [**ExchangeTokenRequest**](ExchangeTokenRequest.md)|  | [optional] 

### Return type

[**ExchangeTokenResponse**](ExchangeTokenResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLinkedResource**
> getLinkedResource(resourceToken)

Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AcceptanceApi();
final resourceToken = resourceToken_example; // String | 

try {
    api_instance.getLinkedResource(resourceToken);
} catch (e) {
    print('Exception when calling AcceptanceApi->getLinkedResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceToken** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIntegrations**
> ListIntegrationsResponse listIntegrations()

List all integrations available for use

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AcceptanceApi();

try {
    final result = api_instance.listIntegrations();
    print(result);
} catch (e) {
    print('Exception when calling AcceptanceApi->listIntegrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListIntegrationsResponse**](ListIntegrationsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

