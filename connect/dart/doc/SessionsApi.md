# TrinsicConnect.api.SessionsApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSession**](SessionsApi.md#cancelsession) | **POST** /api/v1/sessions/cancel | 
[**createSession**](SessionsApi.md#createsession) | **POST** /api/v1/sessions/create | 
[**getSession**](SessionsApi.md#getsession) | **GET** /api/v1/sessions/get | 
[**listSessions**](SessionsApi.md#listsessions) | **POST** /api/v1/sessions/list | 


# **cancelSession**
> CancelSessionResponse cancelSession(sessionId)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionsApi();
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.cancelSession(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->cancelSession: $e\n');
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

# **createSession**
> CreateSessionResponse createSession(createSessionRequest)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionsApi();
final createSessionRequest = CreateSessionRequest(); // CreateSessionRequest | 

try {
    final result = api_instance.createSession(createSessionRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->createSession: $e\n');
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

# **getSession**
> GetSessionResponseV1 getSession(sessionId)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionsApi();
final sessionId = sessionId_example; // String | 

try {
    final result = api_instance.getSession(sessionId);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->getSession: $e\n');
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

# **listSessions**
> ListSessionsResponse listSessions(listSessionsRequest)



### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SessionsApi();
final listSessionsRequest = ListSessionsRequest(); // ListSessionsRequest | 

try {
    final result = api_instance.listSessions(listSessionsRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->listSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSessionsRequest** | [**ListSessionsRequest**](ListSessionsRequest.md)|  | [optional] 

### Return type

[**ListSessionsResponse**](ListSessionsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

