# TrinsicConnect.api.SessionApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect-api.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSessionAsync**](SessionApi.md#cancelsessionasync) | **POST** /v1/sessions/cancel | 
[**createSessionAsync**](SessionApi.md#createsessionasync) | **POST** /v1/sessions/create | 
[**getSessionAsync**](SessionApi.md#getsessionasync) | **GET** /v1/sessions/get | 
[**listSessionsAsync**](SessionApi.md#listsessionsasync) | **POST** /v1/sessions/list | 


# **cancelSessionAsync**
> CancelSessionResponse cancelSessionAsync(sessionId)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionApi();
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.cancelSessionAsync(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->cancelSessionAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | [optional] 

### Return type

[**CancelSessionResponse**](CancelSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSessionAsync**
> CreateSessionResponse createSessionAsync(createSessionRequest)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionApi();
final createSessionRequest = CreateSessionRequest(); // CreateSessionRequest | 

try {
    final result = api_instance.createSessionAsync(createSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->createSessionAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSessionRequest** | [**CreateSessionRequest**](CreateSessionRequest.md)|  | [optional] 

### Return type

[**CreateSessionResponse**](CreateSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionAsync**
> GetSessionResponseV1 getSessionAsync(sessionId)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionApi();
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.getSessionAsync(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->getSessionAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | [optional] 

### Return type

[**GetSessionResponseV1**](GetSessionResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessionsAsync**
> ListSessionsResponseV1 listSessionsAsync(listSessionsRequest)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionApi();
final listSessionsRequest = ListSessionsRequest(); // ListSessionsRequest | 

try {
    final result = api_instance.listSessionsAsync(listSessionsRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->listSessionsAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSessionsRequest** | [**ListSessionsRequest**](ListSessionsRequest.md)|  | [optional] 

### Return type

[**ListSessionsResponseV1**](ListSessionsResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

