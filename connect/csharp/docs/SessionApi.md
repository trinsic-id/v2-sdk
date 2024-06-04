# Org.OpenAPITools.Api.SessionApi

All URIs are relative to *https://connect-api.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SessionCancelSession**](SessionApi.md#sessioncancelsession) | **POST** /v1/sessions/cancel |  |
| [**SessionCreateSession**](SessionApi.md#sessioncreatesession) | **POST** /v1/sessions |  |
| [**SessionGetSession**](SessionApi.md#sessiongetsession) | **GET** /v1/sessions/get |  |
| [**SessionListSessions**](SessionApi.md#sessionlistsessions) | **POST** /v1/sessions/list |  |

<a id="sessioncancelsession"></a>
# **SessionCancelSession**
> CancelSessionResponse SessionCancelSession (string trinsicAuthorization, string? sessionId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SessionCancelSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new SessionApi(config);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var sessionId = "sessionId_example";  // string? |  (optional) 

            try
            {
                CancelSessionResponse result = apiInstance.SessionCancelSession(trinsicAuthorization, sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.SessionCancelSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SessionCancelSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CancelSessionResponse> response = apiInstance.SessionCancelSessionWithHttpInfo(trinsicAuthorization, sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.SessionCancelSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **trinsicAuthorization** | **string** | Bearer token. Can be left empty on anonymous endpoints | [default to &quot;Bearer &quot;] |
| **sessionId** | **string?** |  | [optional]  |

### Return type

[**CancelSessionResponse**](CancelSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="sessioncreatesession"></a>
# **SessionCreateSession**
> CreateSessionResponse SessionCreateSession (string trinsicAuthorization, CreateSessionRequest? createSessionRequest = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SessionCreateSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new SessionApi(config);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var createSessionRequest = new CreateSessionRequest?(); // CreateSessionRequest? |  (optional) 

            try
            {
                CreateSessionResponse result = apiInstance.SessionCreateSession(trinsicAuthorization, createSessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.SessionCreateSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SessionCreateSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CreateSessionResponse> response = apiInstance.SessionCreateSessionWithHttpInfo(trinsicAuthorization, createSessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.SessionCreateSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **trinsicAuthorization** | **string** | Bearer token. Can be left empty on anonymous endpoints | [default to &quot;Bearer &quot;] |
| **createSessionRequest** | [**CreateSessionRequest?**](CreateSessionRequest?.md) |  | [optional]  |

### Return type

[**CreateSessionResponse**](CreateSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="sessiongetsession"></a>
# **SessionGetSession**
> GetSessionResponseV1 SessionGetSession (string trinsicAuthorization, string? sessionId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SessionGetSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new SessionApi(config);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var sessionId = "sessionId_example";  // string? |  (optional) 

            try
            {
                GetSessionResponseV1 result = apiInstance.SessionGetSession(trinsicAuthorization, sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.SessionGetSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SessionGetSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GetSessionResponseV1> response = apiInstance.SessionGetSessionWithHttpInfo(trinsicAuthorization, sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.SessionGetSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **trinsicAuthorization** | **string** | Bearer token. Can be left empty on anonymous endpoints | [default to &quot;Bearer &quot;] |
| **sessionId** | **string?** |  | [optional]  |

### Return type

[**GetSessionResponseV1**](GetSessionResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="sessionlistsessions"></a>
# **SessionListSessions**
> ListSessionsResponseV1 SessionListSessions (string trinsicAuthorization, ListSessionsRequest? listSessionsRequest = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SessionListSessionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new SessionApi(config);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var listSessionsRequest = new ListSessionsRequest?(); // ListSessionsRequest? |  (optional) 

            try
            {
                ListSessionsResponseV1 result = apiInstance.SessionListSessions(trinsicAuthorization, listSessionsRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.SessionListSessions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SessionListSessionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<ListSessionsResponseV1> response = apiInstance.SessionListSessionsWithHttpInfo(trinsicAuthorization, listSessionsRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.SessionListSessionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **trinsicAuthorization** | **string** | Bearer token. Can be left empty on anonymous endpoints | [default to &quot;Bearer &quot;] |
| **listSessionsRequest** | [**ListSessionsRequest?**](ListSessionsRequest?.md) |  | [optional]  |

### Return type

[**ListSessionsResponseV1**](ListSessionsResponseV1.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

