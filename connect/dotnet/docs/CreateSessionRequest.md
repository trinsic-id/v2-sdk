# Trinsic.Connect.Model.CreateSessionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Direct** | **bool** | Whether to create this Session in Direct mode.                Direct mode is used to execute a verification against a specific identity provider.  Users will not be shown the Connect Widget; therefore, reuse of Connect credentials, selection of an identity provider, and saving a verification for future reuse  are not available to the end user in direct mode.                Sessions created in direct mode must be created with a &#x60;RedirectUrl&#x60; specified, and cannot be invoked using the frontend SDK at this time. | [optional] 
**RedirectUrl** | **string** | The URL to redirect to after the user has completed the identity verification process.                If &#x60;Direct&#x60; is set to &#x60;true&#x60;, this field is required. | [optional] 
**Providers** | **List&lt;string&gt;** | The list of allowed identity providers. If not specified, all available providers will be allowed.                If &#x60;Direct&#x60; is &#x60;true&#x60;, this field must be set, and must have only a single entry.  If &#x60;Direct&#x60; is not specified or is &#x60;false&#x60;, this field may have any number of entries. | [optional] 
**DisclosedFields** | [**DisclosedFieldsRequest**](DisclosedFieldsRequest.md) | Specific identity attributes to request. If not provided, all available attributes will be requested. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

