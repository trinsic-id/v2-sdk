# TrinsicConnect.api.AttachmentsApi

## Load the API package
```dart
import 'package:TrinsicConnect/api.dart';
```

All URIs are relative to *https://connect.trinsic.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAttachment**](AttachmentsApi.md#getattachment) | **GET** /api/v1/attachments/fetch | Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.


# **getAttachment**
> getAttachment(attachmentAccessKey)

Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.

### Example
```dart
import 'package:TrinsicConnect/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttachmentsApi();
final attachmentAccessKey = attachmentAccessKey_example; // String | 

try {
    api_instance.getAttachment(attachmentAccessKey);
} catch (e) {
    print('Exception when calling AttachmentsApi->getAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentAccessKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

