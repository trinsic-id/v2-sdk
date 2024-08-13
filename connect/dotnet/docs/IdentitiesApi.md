# Trinsic.Connect.Api.IdentitiesApi

All URIs are relative to *https://connect.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CanReuseCredential**](IdentitiesApi.md#canreusecredential) | **POST** /api/v1/identities/credentials/can-reuse |  |

<a id="canreusecredential"></a>
# **CanReuseCredential**
> CanReuseCredentialResponse CanReuseCredential (CanReuseCredentialRequest? canReuseCredentialRequest = null)



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
    public class CanReuseCredentialExample
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
            var apiInstance = new IdentitiesApi(httpClient, config, httpClientHandler);
            var canReuseCredentialRequest = new CanReuseCredentialRequest?(); // CanReuseCredentialRequest? |  (optional) 

            try
            {
                CanReuseCredentialResponse result = apiInstance.CanReuseCredential(canReuseCredentialRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IdentitiesApi.CanReuseCredential: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CanReuseCredentialWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<CanReuseCredentialResponse> response = apiInstance.CanReuseCredentialWithHttpInfo(canReuseCredentialRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IdentitiesApi.CanReuseCredentialWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **canReuseCredentialRequest** | [**CanReuseCredentialRequest?**](CanReuseCredentialRequest?.md) |  | [optional]  |

### Return type

[**CanReuseCredentialResponse**](CanReuseCredentialResponse.md)

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

