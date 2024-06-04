# openapi.api.SessionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://connect-api.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sessionCancelSession**](SessionApi.md#sessioncancelsession) | **POST** /v1/sessions/cancel | 
[**sessionCreateSession**](SessionApi.md#sessioncreatesession) | **POST** /v1/sessions | 
[**sessionGetSession**](SessionApi.md#sessiongetsession) | **GET** /v1/sessions/get | 
[**sessionListSessions**](SessionApi.md#sessionlistsessions) | **POST** /v1/sessions/list | 


# **sessionCancelSession**
> CancelSessionResponse sessionCancelSession(trinsicAuthorization, sessionId)



### Example
```dart
import 'package:openapi/api.dart';
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
    final result = api_instance.sessionCancelSession(trinsicAuthorization, sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->sessionCancelSession: $e\n');
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

# **sessionCreateSession**
> CreateSessionResponse sessionCreateSession(trinsicAuthorization, createSessionRequest)



### Example
```dart
import 'package:openapi/api.dart';
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
    final result = api_instance.sessionCreateSession(trinsicAuthorization, createSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->sessionCreateSession: $e\n');
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

# **sessionGetSession**
> GetSessionResponseV1 sessionGetSession(trinsicAuthorization, sessionId)



### Example
```dart
import 'package:openapi/api.dart';
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
    final result = api_instance.sessionGetSession(trinsicAuthorization, sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->sessionGetSession: $e\n');
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

# **sessionListSessions**
> ListSessionsResponseV1 sessionListSessions(trinsicAuthorization, listSessionsRequest)



### Example
```dart
import 'package:openapi/api.dart';
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
    final result = api_instance.sessionListSessions(trinsicAuthorization, listSessionsRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionApi->sessionListSessions: $e\n');
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

