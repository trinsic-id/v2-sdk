# Trinsic.Connect.Model.Session

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**State** | **SessionState** | The state of the session | 
**FailCode** | **SessionFailCode** | If the session is in state &#x60;IdvFailed&#x60;, this field contains the reason for failure. | [optional] 
**Verification** | [**Verification**](Verification.md) | The underlying verification for this Session | 
**DisclosedFields** | [**DisclosedFields**](DisclosedFields.md) | The fields that were requested to be disclosed when the Session was created | 
**Created** | **long** | The unix timestamp, in seconds, when this session was created | 
**Updated** | **long** | The unix timestamp, in seconds, when this session&#39;s state last changed | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

