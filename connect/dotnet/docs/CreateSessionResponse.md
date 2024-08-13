# Trinsic.Connect.Model.CreateSessionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Session** | [**Session**](Session.md) | The created Acceptance Session | 
**LaunchUrl** | **string** | The URL that should be used to invoke the Acceptance Session on your user&#39;s device.                If the Session was created in &#x60;direct&#x60; mode, you should redirect your user&#39;s browser to this URL. The frontend SDK cannot presently be used to  invoke direct mode Sessions.                If the Session was not created in &#x60;direct&#x60; mode, you should pass this URL to your user&#39;s frontend and use the frontend SDK to invoke the Session.                This URL is sensitive and as such can only be obtained once. If you need to obtain it again, you will need to create a new Acceptance Session. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

