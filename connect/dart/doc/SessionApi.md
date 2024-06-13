# TrinsicConnect.api.SessionApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect-api.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSession**](SessionApi.md#cancelsession) | **POST** /v1/sessions/cancel | 
[**createSessionAsync**](SessionApi.md#createsessionasync) | **POST** /v1/sessions | 
[**getSession**](SessionApi.md#getsession) | **GET** /v1/sessions/get | 
[**listSessions**](SessionApi.md#listsessions) | **POST** /v1/sessions/list | 


# **cancelSession**
> CancelSessionResponse cancelSession(trinsicAuthorization, sessionId)



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
final trinsicAuthorization = trinsicAuthorization_example; // String | Bearer token. Can be left empty on anonymous endpoints
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.cancelSession(trinsicAuthorization, sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->cancelSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trinsicAuthorization** | **String**| Bearer token. Can be left empty on anonymous endpoints | [default to 'Bearer ']
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
> CreateSessionResponse createSessionAsync(trinsicAuthorization, createSessionRequest)



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
final trinsicAuthorization = trinsicAuthorization_example; // String | Bearer token. Can be left empty on anonymous endpoints
final createSessionRequest = CreateSessionRequest(); // CreateSessionRequest | 

try {
    final result = api_instance.createSessionAsync(trinsicAuthorization, createSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->createSessionAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trinsicAuthorization** | **String**| Bearer token. Can be left empty on anonymous endpoints | [default to 'Bearer ']
 **createSessionRequest** | [**CreateSessionRequest**](CreateSessionRequest.md)|  | [optional] 

### Return type

[**CreateSessionResponse**](CreateSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
> GetSessionResponseV1 getSession(trinsicAuthorization, sessionId)



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
final trinsicAuthorization = trinsicAuthorization_example; // String | Bearer token. Can be left empty on anonymous endpoints
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.getSession(trinsicAuthorization, sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->getSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trinsicAuthorization** | **String**| Bearer token. Can be left empty on anonymous endpoints | [default to 'Bearer ']
 **sessionId** | **String**|  | [optional] 

### Return type

[**GetSessionResponseV1**](GetSessionResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
> ListSessionsResponseV1 listSessions(trinsicAuthorization, listSessionsRequest)



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
final trinsicAuthorization = trinsicAuthorization_example; // String | Bearer token. Can be left empty on anonymous endpoints
final listSessionsRequest = ListSessionsRequest(); // ListSessionsRequest | 

try {
    final result = api_instance.listSessions(trinsicAuthorization, listSessionsRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->listSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trinsicAuthorization** | **String**| Bearer token. Can be left empty on anonymous endpoints | [default to 'Bearer ']
 **listSessionsRequest** | [**ListSessionsRequest**](ListSessionsRequest.md)|  | [optional] 

### Return type

[**ListSessionsResponseV1**](ListSessionsResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

