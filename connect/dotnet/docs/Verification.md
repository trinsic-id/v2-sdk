# Trinsic.Connect.Model.Verification
A Verification contained within a Session

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | The ID of the Verification within the Session | 
**State** | **VerificationState** |  | 
**FailCode** | **VerificationFailCode** | If the Verification is in state &#x60;VerificationFailed&#x60;, this field contains the reason for failure | [optional] 
**Reused** | **bool** | Whether the Verification was completed by reusing a Trinsic Connect identity credential (&#x60;true&#x60;) or via a fresh verification (&#x60;false&#x60;) | 
**Updated** | **long** | The unix timestamp, in seconds, when this Verification&#39;s state last changed | 
**DisclosedFields** | [**DisclosedFields**](DisclosedFields.md) | The fields that were requested to be disclosed when the Session for this Verification was created | 
**IdentityData** | [**IdentityData**](IdentityData.md) | The results of the Verification. Only present if the Session&#39;s &#x60;state&#x60; is &#x60;IdvSuccess&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

