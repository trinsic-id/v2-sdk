# Trinsic.Connect.Api.SessionApi

All URIs are relative to *https://connect-api.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelSession**](SessionApi.md#cancelsession) | **POST** /v1/sessions/cancel |  |
| [**CreateSessionAsync**](SessionApi.md#createsessionasync) | **POST** /v1/sessions |  |
| [**GetSession**](SessionApi.md#getsession) | **GET** /v1/sessions/get |  |
| [**ListSessions**](SessionApi.md#listsessions) | **POST** /v1/sessions/list |  |

<a id="cancelsession"></a>
# **CancelSession**
> CancelSessionResponse CancelSession (string trinsicAuthorization, string? sessionId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;

namespace Example
{
    public class CancelSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionApi(httpClient, config, httpClientHandler);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var sessionId = "sessionId_example";  // string? |  (optional) 

            try
            {
                CancelSessionResponse result = apiInstance.CancelSession(trinsicAuthorization, sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.CancelSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CancelSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CancelSessionResponse> response = apiInstance.CancelSessionWithHttpInfo(trinsicAuthorization, sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.CancelSessionWithHttpInfo: " + e.Message);
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

<a id="createsessionasync"></a>
# **CreateSessionAsync**
> CreateSessionResponse CreateSessionAsync (string trinsicAuthorization, CreateSessionRequest? createSessionRequest = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;

namespace Example
{
    public class CreateSessionAsyncExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionApi(httpClient, config, httpClientHandler);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var createSessionRequest = new CreateSessionRequest?(); // CreateSessionRequest? |  (optional) 

            try
            {
                CreateSessionResponse result = apiInstance.CreateSessionAsync(trinsicAuthorization, createSessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.CreateSessionAsync: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateSessionAsyncWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CreateSessionResponse> response = apiInstance.CreateSessionAsyncWithHttpInfo(trinsicAuthorization, createSessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.CreateSessionAsyncWithHttpInfo: " + e.Message);
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

<a id="getsession"></a>
# **GetSession**
> GetSessionResponseV1 GetSession (string trinsicAuthorization, string? sessionId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;

namespace Example
{
    public class GetSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionApi(httpClient, config, httpClientHandler);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var sessionId = "sessionId_example";  // string? |  (optional) 

            try
            {
                GetSessionResponseV1 result = apiInstance.GetSession(trinsicAuthorization, sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.GetSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GetSessionResponseV1> response = apiInstance.GetSessionWithHttpInfo(trinsicAuthorization, sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.GetSessionWithHttpInfo: " + e.Message);
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

<a id="listsessions"></a>
# **ListSessions**
> ListSessionsResponseV1 ListSessions (string trinsicAuthorization, ListSessionsRequest? listSessionsRequest = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;

namespace Example
{
    public class ListSessionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect-api.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionApi(httpClient, config, httpClientHandler);
            var trinsicAuthorization = "\"Bearer \"";  // string | Bearer token. Can be left empty on anonymous endpoints (default to "Bearer ")
            var listSessionsRequest = new ListSessionsRequest?(); // ListSessionsRequest? |  (optional) 

            try
            {
                ListSessionsResponseV1 result = apiInstance.ListSessions(trinsicAuthorization, listSessionsRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionApi.ListSessions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListSessionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<ListSessionsResponseV1> response = apiInstance.ListSessionsWithHttpInfo(trinsicAuthorization, listSessionsRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionApi.ListSessionsWithHttpInfo: " + e.Message);
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

