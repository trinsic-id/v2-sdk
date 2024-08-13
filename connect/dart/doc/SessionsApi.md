# TrinsicConnect.api.SessionsApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSession**](SessionsApi.md#cancelsession) | **POST** /api/v1/sessions/{sessionId}/cancel | Cancel a Session by its ID
[**createSession**](SessionsApi.md#createsession) | **POST** /api/v1/sessions | Create a Session to verify a user's identity
[**exchangeIdentityToken**](SessionsApi.md#exchangeidentitytoken) | **POST** /api/v1/sessions/{sessionId}/exchange | Exchange an Identity Exchange Token for Identity Data
[**getSession**](SessionsApi.md#getsession) | **GET** /api/v1/sessions/{sessionId} | Get a Session by its ID
[**listSessions**](SessionsApi.md#listsessions) | **GET** /api/v1/sessions | List Sessions created by your account
[**redactSession**](SessionsApi.md#redactsession) | **POST** /api/v1/sessions/{sessionId}/redact | Redact a Session


# **cancelSession**
> CancelSessionResponse cancelSession(sessionId)

Cancel a Session by its ID

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
 **sessionId** | **String**|  | 

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

Create a Session to verify a user's identity

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

# **exchangeIdentityToken**
> ExchangeIdentityTokenResponse exchangeIdentityToken(sessionId, exchangeIdentityTokenRequest)

Exchange an Identity Exchange Token for Identity Data

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
final exchangeIdentityTokenRequest = ExchangeIdentityTokenRequest(); // ExchangeIdentityTokenRequest | 

try {
    final result = api_instance.exchangeIdentityToken(sessionId, exchangeIdentityTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->exchangeIdentityToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 
 **exchangeIdentityTokenRequest** | [**ExchangeIdentityTokenRequest**](ExchangeIdentityTokenRequest.md)|  | [optional] 

### Return type

[**ExchangeIdentityTokenResponse**](ExchangeIdentityTokenResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
> GetSessionResponseV1 getSession(sessionId)

Get a Session by its ID

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
 **sessionId** | **String**|  | 

### Return type

[**GetSessionResponseV1**](GetSessionResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
> ListSessionsResponse listSessions(orderBy, orderDirection, pageSize, page)

List Sessions created by your account

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
final orderBy = Created; // SessionOrdering | The field by which sessions should be ordered
final orderDirection = Descending; // OrderDirection | 
final pageSize = 10; // int | The number of items to return per page -- must be between `1` and `10`
final page = 1; // int | The page number to return -- starts at `1`

try {
    final result = api_instance.listSessions(orderBy, orderDirection, pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->listSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBy** | [**SessionOrdering**](.md)| The field by which sessions should be ordered | [optional] 
 **orderDirection** | [**OrderDirection**](.md)|  | [optional] 
 **pageSize** | **int**| The number of items to return per page -- must be between `1` and `10` | [optional] 
 **page** | **int**| The page number to return -- starts at `1` | [optional] 

### Return type

[**ListSessionsResponse**](ListSessionsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redactSession**
> redactSession(sessionId)

Redact a Session

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
    api_instance.redactSession(sessionId);
} catch (e) {
    print('Exception when calling SessionsApi->redactSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

