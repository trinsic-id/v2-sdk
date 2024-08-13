# Trinsic.Connect.Api.AttachmentsApi

All URIs are relative to *https://connect.trinsic.id*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetAttachment**](AttachmentsApi.md#getattachment) | **GET** /api/v1/attachments/fetch | Exchange an Attachment Access Key (from &#x60;IdentityData.Attachments&#x60;) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant. |

<a id="getattachment"></a>
# **GetAttachment**
> void GetAttachment (string? attachmentAccessKey = null)

Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.

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
    public class GetAttachmentExample
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
            var apiInstance = new AttachmentsApi(httpClient, config, httpClientHandler);
            var attachmentAccessKey = "attachmentAccessKey_example";  // string? |  (optional) 

            try
            {
                // Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
                apiInstance.GetAttachment(attachmentAccessKey);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AttachmentsApi.GetAttachment: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAttachmentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
    apiInstance.GetAttachmentWithHttpInfo(attachmentAccessKey);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AttachmentsApi.GetAttachmentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **attachmentAccessKey** | **string?** |  | [optional]  |

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

