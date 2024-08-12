# Trinsic.Connect.Model.Session

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**ClientToken** | **string** | The Client Token for this session - - passed to your frontend to securely invoke the Connect Widget on your user&#39;s device.                Client Tokens are one-time use: once the frontend has been invoked on your user&#39;s device, the token is invalid and may no longer be used.  If re-invocation is necessary, you must create a new session. | 
**State** | **IDVSessionState** | The state of the session | 
**FailCode** | **SessionFailCode** | If the session is in state &#x60;IdvFailed&#x60;, this field contains the reason for failure. | [optional] 
**Verification** | [**Verification**](Verification.md) | The underlying verification for this Session | 
**Created** | **long** | The unix timestamp, in seconds, when this session was created | 
**Updated** | **long** | The unix timestamp, in seconds, when this session&#39;s state last changed | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

