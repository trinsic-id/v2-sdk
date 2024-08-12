# Trinsic.Connect.Api.AcceptanceApi

All URIs are relative to *https://connect.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateVerificationSession**](AcceptanceApi.md#createverificationsession) | **PUT** /api/v1/acceptance/verification-session | Create a new &#x60;VerificationSession&#x60; for the given integration. |
| [**ExchangeToken**](AcceptanceApi.md#exchangetoken) | **POST** /api/v1/acceptance/verification-session/{verificationSessionId}/exchange | Exchange a token for the results of a &#x60;VerificationSession&#x60; |
| [**GetLinkedResource**](AcceptanceApi.md#getlinkedresource) | **GET** /api/v1/acceptance/resource | Exchange a Resource Access Token (from &#x60;IdentityData.LinkedResources&#x60;) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant. |
| [**ListIntegrations**](AcceptanceApi.md#listintegrations) | **GET** /api/v1/acceptance/integrations | List all integrations available for use |

<a id="createverificationsession"></a>
# **CreateVerificationSession**
> CreateVerificationSessionResponse CreateVerificationSession (CreateVerificationSessionRequest? createVerificationSessionRequest = null)

Create a new `VerificationSession` for the given integration.

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
    public class CreateVerificationSessionExample
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
            var apiInstance = new AcceptanceApi(httpClient, config, httpClientHandler);
            var createVerificationSessionRequest = new CreateVerificationSessionRequest?(); // CreateVerificationSessionRequest? |  (optional) 

            try
            {
                // Create a new `VerificationSession` for the given integration.
                CreateVerificationSessionResponse result = apiInstance.CreateVerificationSession(createVerificationSessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AcceptanceApi.CreateVerificationSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateVerificationSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a new `VerificationSession` for the given integration.
    ApiResponse<CreateVerificationSessionResponse> response = apiInstance.CreateVerificationSessionWithHttpInfo(createVerificationSessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AcceptanceApi.CreateVerificationSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **createVerificationSessionRequest** | [**CreateVerificationSessionRequest?**](CreateVerificationSessionRequest?.md) |  | [optional]  |

### Return type

[**CreateVerificationSessionResponse**](CreateVerificationSessionResponse.md)

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

<a id="exchangetoken"></a>
# **ExchangeToken**
> ExchangeTokenResponse ExchangeToken (string verificationSessionId, ExchangeTokenRequest? exchangeTokenRequest = null)

Exchange a token for the results of a `VerificationSession`

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
    public class ExchangeTokenExample
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
            var apiInstance = new AcceptanceApi(httpClient, config, httpClientHandler);
            var verificationSessionId = "verificationSessionId_example";  // string | 
            var exchangeTokenRequest = new ExchangeTokenRequest?(); // ExchangeTokenRequest? |  (optional) 

            try
            {
                // Exchange a token for the results of a `VerificationSession`
                ExchangeTokenResponse result = apiInstance.ExchangeToken(verificationSessionId, exchangeTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AcceptanceApi.ExchangeToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExchangeTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchange a token for the results of a `VerificationSession`
    ApiResponse<ExchangeTokenResponse> response = apiInstance.ExchangeTokenWithHttpInfo(verificationSessionId, exchangeTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AcceptanceApi.ExchangeTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **verificationSessionId** | **string** |  |  |
| **exchangeTokenRequest** | [**ExchangeTokenRequest?**](ExchangeTokenRequest?.md) |  | [optional]  |

### Return type

[**ExchangeTokenResponse**](ExchangeTokenResponse.md)

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

<a id="getlinkedresource"></a>
# **GetLinkedResource**
> void GetLinkedResource (string? resourceToken = null)

Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.

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
    public class GetLinkedResourceExample
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
            var apiInstance = new AcceptanceApi(httpClient, config, httpClientHandler);
            var resourceToken = "resourceToken_example";  // string? |  (optional) 

            try
            {
                // Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
                apiInstance.GetLinkedResource(resourceToken);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AcceptanceApi.GetLinkedResource: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetLinkedResourceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
    apiInstance.GetLinkedResourceWithHttpInfo(resourceToken);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AcceptanceApi.GetLinkedResourceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **resourceToken** | **string?** |  | [optional]  |

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

<a id="listintegrations"></a>
# **ListIntegrations**
> ListIntegrationsResponse ListIntegrations ()

List all integrations available for use

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
    public class ListIntegrationsExample
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
            var apiInstance = new AcceptanceApi(httpClient, config, httpClientHandler);

            try
            {
                // List all integrations available for use
                ListIntegrationsResponse result = apiInstance.ListIntegrations();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AcceptanceApi.ListIntegrations: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListIntegrationsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all integrations available for use
    ApiResponse<ListIntegrationsResponse> response = apiInstance.ListIntegrationsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AcceptanceApi.ListIntegrationsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Validation Failed |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

