# Trinsic.Connect.Api.SessionsApi

All URIs are relative to *https://connect.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelSession**](SessionsApi.md#cancelsession) | **POST** /api/v1/sessions/{sessionId}/cancel | Cancel a Session by its ID |
| [**CreateSession**](SessionsApi.md#createsession) | **POST** /api/v1/sessions | Create a Session to verify a user&#39;s identity |
| [**GetSession**](SessionsApi.md#getsession) | **GET** /api/v1/sessions/{sessionId} | Get a Session by its ID |
| [**ListSessions**](SessionsApi.md#listsessions) | **GET** /api/v1/sessions | List Sessions created by your account |
| [**RedactSession**](SessionsApi.md#redactsession) | **POST** /api/v1/sessions/{sessionId}/redact | Redact a Session |

<a id="cancelsession"></a>
# **CancelSession**
> CancelSessionResponse CancelSession (string sessionId)

Cancel a Session by its ID

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
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var sessionId = "sessionId_example";  // string | 

            try
            {
                // Cancel a Session by its ID
                CancelSessionResponse result = apiInstance.CancelSession(sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionsApi.CancelSession: " + e.Message);
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
    // Cancel a Session by its ID
    ApiResponse<CancelSessionResponse> response = apiInstance.CancelSessionWithHttpInfo(sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionsApi.CancelSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sessionId** | **string** |  |  |

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

<a id="createsession"></a>
# **CreateSession**
> CreateSessionResponse CreateSession (CreateSessionRequest? createSessionRequest = null)

Create a Session to verify a user's identity

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
    public class CreateSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var createSessionRequest = new CreateSessionRequest?(); // CreateSessionRequest? |  (optional) 

            try
            {
                // Create a Session to verify a user's identity
                CreateSessionResponse result = apiInstance.CreateSession(createSessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionsApi.CreateSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a Session to verify a user's identity
    ApiResponse<CreateSessionResponse> response = apiInstance.CreateSessionWithHttpInfo(createSessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionsApi.CreateSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
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
> GetSessionResponseV1 GetSession (string sessionId)

Get a Session by its ID

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
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var sessionId = "sessionId_example";  // string | 

            try
            {
                // Get a Session by its ID
                GetSessionResponseV1 result = apiInstance.GetSession(sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionsApi.GetSession: " + e.Message);
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
    // Get a Session by its ID
    ApiResponse<GetSessionResponseV1> response = apiInstance.GetSessionWithHttpInfo(sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionsApi.GetSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sessionId** | **string** |  |  |

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
> ListSessionsResponse ListSessions (SessionOrdering? orderBy = null, OrderDirection? orderDirection = null, int? pageSize = null, int? page = null)

List Sessions created by your account

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
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var orderBy = new SessionOrdering?(); // SessionOrdering? | The field by which sessions should be ordered (optional) 
            var orderDirection = new OrderDirection?(); // OrderDirection? |  (optional) 
            var pageSize = 10;  // int? | The number of items to return per page - - must be between `1` and `10` (optional) 
            var page = 1;  // int? | The page number to return - - starts at `1` (optional) 

            try
            {
                // List Sessions created by your account
                ListSessionsResponse result = apiInstance.ListSessions(orderBy, orderDirection, pageSize, page);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionsApi.ListSessions: " + e.Message);
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
    // List Sessions created by your account
    ApiResponse<ListSessionsResponse> response = apiInstance.ListSessionsWithHttpInfo(orderBy, orderDirection, pageSize, page);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionsApi.ListSessionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orderBy** | [**SessionOrdering?**](SessionOrdering?.md) | The field by which sessions should be ordered | [optional]  |
| **orderDirection** | [**OrderDirection?**](OrderDirection?.md) |  | [optional]  |
| **pageSize** | **int?** | The number of items to return per page - - must be between &#x60;1&#x60; and &#x60;10&#x60; | [optional]  |
| **page** | **int?** | The page number to return - - starts at &#x60;1&#x60; | [optional]  |

### Return type

[**ListSessionsResponse**](ListSessionsResponse.md)

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

<a id="redactsession"></a>
# **RedactSession**
> void RedactSession (string sessionId)

Redact a Session

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
    public class RedactSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var sessionId = "sessionId_example";  // string | 

            try
            {
                // Redact a Session
                apiInstance.RedactSession(sessionId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SessionsApi.RedactSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RedactSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Redact a Session
    apiInstance.RedactSessionWithHttpInfo(sessionId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SessionsApi.RedactSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sessionId** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

