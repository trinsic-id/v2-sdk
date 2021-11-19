<a name='assembly'></a>
# Trinsic

## Contents

- [AccountDetails](#T-Trinsic-Services-Account-V1-AccountDetails 'Trinsic.Services.Account.V1.AccountDetails')
  - [EmailFieldNumber](#F-Trinsic-Services-Account-V1-AccountDetails-EmailFieldNumber 'Trinsic.Services.Account.V1.AccountDetails.EmailFieldNumber')
  - [NameFieldNumber](#F-Trinsic-Services-Account-V1-AccountDetails-NameFieldNumber 'Trinsic.Services.Account.V1.AccountDetails.NameFieldNumber')
  - [SmsFieldNumber](#F-Trinsic-Services-Account-V1-AccountDetails-SmsFieldNumber 'Trinsic.Services.Account.V1.AccountDetails.SmsFieldNumber')
  - [Email](#P-Trinsic-Services-Account-V1-AccountDetails-Email 'Trinsic.Services.Account.V1.AccountDetails.Email')
  - [Name](#P-Trinsic-Services-Account-V1-AccountDetails-Name 'Trinsic.Services.Account.V1.AccountDetails.Name')
  - [Sms](#P-Trinsic-Services-Account-V1-AccountDetails-Sms 'Trinsic.Services.Account.V1.AccountDetails.Sms')
- [AccountProfile](#T-Trinsic-Services-Account-V1-AccountProfile 'Trinsic.Services.Account.V1.AccountProfile')
  - [AuthDataFieldNumber](#F-Trinsic-Services-Account-V1-AccountProfile-AuthDataFieldNumber 'Trinsic.Services.Account.V1.AccountProfile.AuthDataFieldNumber')
  - [AuthTokenFieldNumber](#F-Trinsic-Services-Account-V1-AccountProfile-AuthTokenFieldNumber 'Trinsic.Services.Account.V1.AccountProfile.AuthTokenFieldNumber')
  - [ProfileTypeFieldNumber](#F-Trinsic-Services-Account-V1-AccountProfile-ProfileTypeFieldNumber 'Trinsic.Services.Account.V1.AccountProfile.ProfileTypeFieldNumber')
  - [ProtectionFieldNumber](#F-Trinsic-Services-Account-V1-AccountProfile-ProtectionFieldNumber 'Trinsic.Services.Account.V1.AccountProfile.ProtectionFieldNumber')
  - [AuthData](#P-Trinsic-Services-Account-V1-AccountProfile-AuthData 'Trinsic.Services.Account.V1.AccountProfile.AuthData')
  - [AuthToken](#P-Trinsic-Services-Account-V1-AccountProfile-AuthToken 'Trinsic.Services.Account.V1.AccountProfile.AuthToken')
  - [ProfileType](#P-Trinsic-Services-Account-V1-AccountProfile-ProfileType 'Trinsic.Services.Account.V1.AccountProfile.ProfileType')
  - [Protection](#P-Trinsic-Services-Account-V1-AccountProfile-Protection 'Trinsic.Services.Account.V1.AccountProfile.Protection')
- [AccountReflection](#T-Trinsic-Services-Account-V1-AccountReflection 'Trinsic.Services.Account.V1.AccountReflection')
  - [Descriptor](#P-Trinsic-Services-Account-V1-AccountReflection-Descriptor 'Trinsic.Services.Account.V1.AccountReflection.Descriptor')
- [AccountService](#T-Trinsic-AccountService 'Trinsic.AccountService')
- [AccountService](#T-Trinsic-Services-Account-V1-AccountService 'Trinsic.Services.Account.V1.AccountService')
  - [Descriptor](#P-Trinsic-Services-Account-V1-AccountService-Descriptor 'Trinsic.Services.Account.V1.AccountService.Descriptor')
  - [GetInfoAsync()](#M-Trinsic-AccountService-GetInfoAsync 'Trinsic.AccountService.GetInfoAsync')
  - [Protect(profile,securityCode)](#M-Trinsic-AccountService-Protect-Trinsic-Services-Account-V1-AccountProfile@,System-String- 'Trinsic.AccountService.Protect(Trinsic.Services.Account.V1.AccountProfile@,System.String)')
  - [SignInAsync(details)](#M-Trinsic-AccountService-SignInAsync-Trinsic-Services-Account-V1-AccountDetails- 'Trinsic.AccountService.SignInAsync(Trinsic.Services.Account.V1.AccountDetails)')
  - [Unprotect(profile,securityCode)](#M-Trinsic-AccountService-Unprotect-Trinsic-Services-Account-V1-AccountProfile@,System-String- 'Trinsic.AccountService.Unprotect(Trinsic.Services.Account.V1.AccountProfile@,System.String)')
  - [BindService(serviceImpl)](#M-Trinsic-Services-Account-V1-AccountService-BindService-Trinsic-Services-Account-V1-AccountService-AccountServiceBase- 'Trinsic.Services.Account.V1.AccountService.BindService(Trinsic.Services.Account.V1.AccountService.AccountServiceBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-Account-V1-AccountService-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Account-V1-AccountService-AccountServiceBase- 'Trinsic.Services.Account.V1.AccountService.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.Account.V1.AccountService.AccountServiceBase)')
- [AccountServiceBase](#T-Trinsic-Services-Account-V1-AccountService-AccountServiceBase 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase')
  - [Info(request,context)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase.Info(Trinsic.Services.Account.V1.InfoRequest,Grpc.Core.ServerCallContext)')
  - [ListDevices(request,context)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase.ListDevices(Trinsic.Services.Account.V1.ListDevicesRequest,Grpc.Core.ServerCallContext)')
  - [RevokeDevice(request,context)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase.RevokeDevice(Trinsic.Services.Account.V1.RevokeDeviceRequest,Grpc.Core.ServerCallContext)')
  - [SignIn(request,context)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase.SignIn(Trinsic.Services.Account.V1.SignInRequest,Grpc.Core.ServerCallContext)')
- [AccountServiceClient](#T-Trinsic-Services-Account-V1-AccountService-AccountServiceClient 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient')
  - [#ctor(channel)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [Info(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.Info(Trinsic.Services.Account.V1.InfoRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [Info(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.Info(Trinsic.Services.Account.V1.InfoRequest,Grpc.Core.CallOptions)')
  - [InfoAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-InfoAsync-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.InfoAsync(Trinsic.Services.Account.V1.InfoRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InfoAsync(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-InfoAsync-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.InfoAsync(Trinsic.Services.Account.V1.InfoRequest,Grpc.Core.CallOptions)')
  - [ListDevices(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.ListDevices(Trinsic.Services.Account.V1.ListDevicesRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [ListDevices(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.ListDevices(Trinsic.Services.Account.V1.ListDevicesRequest,Grpc.Core.CallOptions)')
  - [ListDevicesAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevicesAsync-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.ListDevicesAsync(Trinsic.Services.Account.V1.ListDevicesRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [ListDevicesAsync(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevicesAsync-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.ListDevicesAsync(Trinsic.Services.Account.V1.ListDevicesRequest,Grpc.Core.CallOptions)')
  - [NewInstance()](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [RevokeDevice(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.RevokeDevice(Trinsic.Services.Account.V1.RevokeDeviceRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RevokeDevice(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.RevokeDevice(Trinsic.Services.Account.V1.RevokeDeviceRequest,Grpc.Core.CallOptions)')
  - [RevokeDeviceAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDeviceAsync-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.RevokeDeviceAsync(Trinsic.Services.Account.V1.RevokeDeviceRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RevokeDeviceAsync(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDeviceAsync-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.RevokeDeviceAsync(Trinsic.Services.Account.V1.RevokeDeviceRequest,Grpc.Core.CallOptions)')
  - [SignIn(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.SignIn(Trinsic.Services.Account.V1.SignInRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [SignIn(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.SignIn(Trinsic.Services.Account.V1.SignInRequest,Grpc.Core.CallOptions)')
  - [SignInAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignInAsync-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.SignInAsync(Trinsic.Services.Account.V1.SignInRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [SignInAsync(request,options)](#M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignInAsync-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Account.V1.AccountService.AccountServiceClient.SignInAsync(Trinsic.Services.Account.V1.SignInRequest,Grpc.Core.CallOptions)')
- [AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest')
  - [GovernanceFrameworkFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest-GovernanceFrameworkFieldNumber 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest.GovernanceFrameworkFieldNumber')
- [AddFrameworkResponse](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkResponse 'Trinsic.Services.TrustRegistry.V1.AddFrameworkResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-AddFrameworkResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.AddFrameworkResponse.StatusFieldNumber')
- [AuthorityOneofCase](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-AuthorityOneofCase 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.AuthorityOneofCase')
- [AuthorityOneofCase](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-AuthorityOneofCase 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.AuthorityOneofCase')
- [AuthorityOneofCase](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-AuthorityOneofCase 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest.AuthorityOneofCase')
- [AuthorityOneofCase](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-AuthorityOneofCase 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest.AuthorityOneofCase')
- [CheckIssuerStatusRequest](#T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest')
  - [CredentialTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-CredentialTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest.CredentialTypeUriFieldNumber')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest.GovernanceFrameworkUriFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest.X509CertFieldNumber')
- [CheckIssuerStatusResponse](#T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusResponse')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusResponse.GovernanceFrameworkUriFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusResponse.StatusFieldNumber')
- [CheckVerifierStatusRequest](#T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest.GovernanceFrameworkUriFieldNumber')
  - [PresentationTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-PresentationTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest.PresentationTypeUriFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest.X509CertFieldNumber')
- [CheckVerifierStatusResponse](#T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusResponse')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusResponse.GovernanceFrameworkUriFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusResponse.StatusFieldNumber')
- [Common](#T-Trinsic-Services-Common-V1-Common 'Trinsic.Services.Common.V1.Common')
  - [Descriptor](#P-Trinsic-Services-Common-V1-Common-Descriptor 'Trinsic.Services.Common.V1.Common.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-Common-V1-Common-BindService-Trinsic-Services-Common-V1-Common-CommonBase- 'Trinsic.Services.Common.V1.Common.BindService(Trinsic.Services.Common.V1.Common.CommonBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-Common-V1-Common-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Common-V1-Common-CommonBase- 'Trinsic.Services.Common.V1.Common.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.Common.V1.Common.CommonBase)')
- [CommonBase](#T-Trinsic-Services-Common-V1-Common-CommonBase 'Trinsic.Services.Common.V1.Common.CommonBase')
- [CommonClient](#T-Trinsic-Services-Common-V1-Common-CommonClient 'Trinsic.Services.Common.V1.Common.CommonClient')
  - [#ctor(channel)](#M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.Common.V1.Common.CommonClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.Common.V1.Common.CommonClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor 'Trinsic.Services.Common.V1.Common.CommonClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Common.V1.Common.CommonClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [NewInstance()](#M-Trinsic-Services-Common-V1-Common-CommonClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Common.V1.Common.CommonClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [CommonReflection](#T-Trinsic-Services-Common-V1-CommonReflection 'Trinsic.Services.Common.V1.CommonReflection')
  - [Descriptor](#P-Trinsic-Services-Common-V1-CommonReflection-Descriptor 'Trinsic.Services.Common.V1.CommonReflection.Descriptor')
- [ConfirmationMethod](#T-Trinsic-Services-Account-V1-ConfirmationMethod 'Trinsic.Services.Account.V1.ConfirmationMethod')
  - [ConnectedDevice](#F-Trinsic-Services-Account-V1-ConfirmationMethod-ConnectedDevice 'Trinsic.Services.Account.V1.ConfirmationMethod.ConnectedDevice')
  - [Email](#F-Trinsic-Services-Account-V1-ConfirmationMethod-Email 'Trinsic.Services.Account.V1.ConfirmationMethod.Email')
  - [None](#F-Trinsic-Services-Account-V1-ConfirmationMethod-None 'Trinsic.Services.Account.V1.ConfirmationMethod.None')
  - [Other](#F-Trinsic-Services-Account-V1-ConfirmationMethod-Other 'Trinsic.Services.Account.V1.ConfirmationMethod.Other')
  - [Sms](#F-Trinsic-Services-Account-V1-ConfirmationMethod-Sms 'Trinsic.Services.Account.V1.ConfirmationMethod.Sms')
- [ContactMethodOneofCase](#T-Trinsic-Services-Common-V1-InviteRequest-ContactMethodOneofCase 'Trinsic.Services.Common.V1.InviteRequest.ContactMethodOneofCase')
- [CreateCredentialTemplateRequest](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest')
  - [BaseUriFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-BaseUriFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest.BaseUriFieldNumber')
  - [NameFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-NameFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest.NameFieldNumber')
  - [SchemaFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-SchemaFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateRequest.SchemaFieldNumber')
- [CreateCredentialTemplateResponse](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateResponse')
  - [IdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse-IdFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateResponse.IdFieldNumber')
  - [UriFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse-UriFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CreateCredentialTemplateResponse.UriFieldNumber')
- [CreateProofRequest](#T-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest 'Trinsic.Services.VerifiableCredentials.V1.CreateProofRequest')
  - [DocumentIdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest-DocumentIdFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.CreateProofRequest.DocumentIdFieldNumber')
  - [RevealDocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest-RevealDocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.CreateProofRequest.RevealDocumentFieldNumber')
- [CreateProofResponse](#T-Trinsic-Services-VerifiableCredentials-V1-CreateProofResponse 'Trinsic.Services.VerifiableCredentials.V1.CreateProofResponse')
  - [ProofDocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-CreateProofResponse-ProofDocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.CreateProofResponse.ProofDocumentFieldNumber')
- [Credential](#T-Trinsic-Services-VerifiableCredentials-V1-Credential 'Trinsic.Services.VerifiableCredentials.V1.Credential')
  - [Descriptor](#P-Trinsic-Services-VerifiableCredentials-V1-Credential-Descriptor 'Trinsic.Services.VerifiableCredentials.V1.Credential.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-BindService-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase- 'Trinsic.Services.VerifiableCredentials.V1.Credential.BindService(Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase- 'Trinsic.Services.VerifiableCredentials.V1.Credential.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase)')
- [CredentialBase](#T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase')
- [CredentialClient](#T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient')
  - [#ctor(channel)](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [NewInstance()](#M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [CredentialTemplate](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate')
  - [IdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-IdFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate.IdFieldNumber')
  - [NameFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-NameFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate.NameFieldNumber')
  - [SchemaFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-SchemaFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate.SchemaFieldNumber')
  - [UriFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-UriFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate.UriFieldNumber')
  - [VersionFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-VersionFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplate.VersionFieldNumber')
- [CredentialTemplates](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates')
  - [Descriptor](#P-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-Descriptor 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-BindService-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.BindService(Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase)')
- [CredentialTemplatesBase](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase')
- [CredentialTemplatesClient](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient')
  - [#ctor(channel)](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [NewInstance()](#M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [CredentialsService](#T-Trinsic-CredentialsService 'Trinsic.CredentialsService')
  - [CreateProof(documentId,revealDocument)](#M-Trinsic-CredentialsService-CreateProof-System-String,Newtonsoft-Json-Linq-JObject- 'Trinsic.CredentialsService.CreateProof(System.String,Newtonsoft.Json.Linq.JObject)')
  - [IssueCredential(document)](#M-Trinsic-CredentialsService-IssueCredential-Newtonsoft-Json-Linq-JObject- 'Trinsic.CredentialsService.IssueCredential(Newtonsoft.Json.Linq.JObject)')
  - [Send(document,email)](#M-Trinsic-CredentialsService-Send-Newtonsoft-Json-Linq-JObject,System-String- 'Trinsic.CredentialsService.Send(Newtonsoft.Json.Linq.JObject,System.String)')
  - [VerifyProof(proofDocument)](#M-Trinsic-CredentialsService-VerifyProof-Newtonsoft-Json-Linq-JObject- 'Trinsic.CredentialsService.VerifyProof(Newtonsoft.Json.Linq.JObject)')
- [DebugReflection](#T-Trinsic-Services-Debug-V1-DebugReflection 'Trinsic.Services.Debug.V1.DebugReflection')
  - [Descriptor](#P-Trinsic-Services-Debug-V1-DebugReflection-Descriptor 'Trinsic.Services.Debug.V1.DebugReflection.Descriptor')
- [Debugging](#T-Trinsic-Services-Debug-V1-Debugging 'Trinsic.Services.Debug.V1.Debugging')
  - [Descriptor](#P-Trinsic-Services-Debug-V1-Debugging-Descriptor 'Trinsic.Services.Debug.V1.Debugging.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-Debug-V1-Debugging-BindService-Trinsic-Services-Debug-V1-Debugging-DebuggingBase- 'Trinsic.Services.Debug.V1.Debugging.BindService(Trinsic.Services.Debug.V1.Debugging.DebuggingBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-Debug-V1-Debugging-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Debug-V1-Debugging-DebuggingBase- 'Trinsic.Services.Debug.V1.Debugging.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.Debug.V1.Debugging.DebuggingBase)')
- [DebuggingBase](#T-Trinsic-Services-Debug-V1-Debugging-DebuggingBase 'Trinsic.Services.Debug.V1.Debugging.DebuggingBase')
- [DebuggingClient](#T-Trinsic-Services-Debug-V1-Debugging-DebuggingClient 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient')
  - [#ctor(channel)](#M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [NewInstance()](#M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Debug.V1.Debugging.DebuggingClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [DeleteCredentialTemplateRequest](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-DeleteCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.DeleteCredentialTemplateRequest')
  - [IdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-DeleteCredentialTemplateRequest-IdFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.DeleteCredentialTemplateRequest.IdFieldNumber')
- [DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest')
- [DeliveryMethodOneofCase](#T-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DeliveryMethodOneofCase 'Trinsic.Services.VerifiableCredentials.V1.SendRequest.DeliveryMethodOneofCase')
- [FetchDataRequest](#T-Trinsic-Services-TrustRegistry-V1-FetchDataRequest 'Trinsic.Services.TrustRegistry.V1.FetchDataRequest')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-FetchDataRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.FetchDataRequest.GovernanceFrameworkUriFieldNumber')
  - [QueryFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-FetchDataRequest-QueryFieldNumber 'Trinsic.Services.TrustRegistry.V1.FetchDataRequest.QueryFieldNumber')
- [FetchDataResponse](#T-Trinsic-Services-TrustRegistry-V1-FetchDataResponse 'Trinsic.Services.TrustRegistry.V1.FetchDataResponse')
  - [ResponseFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-FetchDataResponse-ResponseFieldNumber 'Trinsic.Services.TrustRegistry.V1.FetchDataResponse.ResponseFieldNumber')
- [GetCredentialTemplateRequest](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateRequest')
  - [IdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateRequest-IdFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateRequest.IdFieldNumber')
- [GetCredentialTemplateResponse](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateResponse')
  - [TemplateFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateResponse-TemplateFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.GetCredentialTemplateResponse.TemplateFieldNumber')
- [GovernanceFramework](#T-Trinsic-Services-TrustRegistry-V1-GovernanceFramework 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework')
  - [DescriptionFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-DescriptionFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.DescriptionFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.GovernanceFrameworkUriFieldNumber')
  - [TrustRegistryUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-TrustRegistryUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.TrustRegistryUriFieldNumber')
- [InfoResponse](#T-Trinsic-Services-Account-V1-InfoResponse 'Trinsic.Services.Account.V1.InfoResponse')
  - [DetailsFieldNumber](#F-Trinsic-Services-Account-V1-InfoResponse-DetailsFieldNumber 'Trinsic.Services.Account.V1.InfoResponse.DetailsFieldNumber')
  - [Details](#P-Trinsic-Services-Account-V1-InfoResponse-Details 'Trinsic.Services.Account.V1.InfoResponse.Details')
- [InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest')
  - [ItemFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest.ItemFieldNumber')
  - [ItemTypeFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemTypeFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest.ItemTypeFieldNumber')
- [InsertItemResponse](#T-Trinsic-Services-UniversalWallet-V1-InsertItemResponse 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse')
  - [ItemIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse.ItemIdFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse.StatusFieldNumber')
  - [ItemId](#P-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemId 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse.ItemId')
- [InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest')
  - [InvitationIdFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusRequest-InvitationIdFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusRequest.InvitationIdFieldNumber')
- [InvitationStatusResponse](#T-Trinsic-Services-Common-V1-InvitationStatusResponse 'Trinsic.Services.Common.V1.InvitationStatusResponse')
  - [StatusDetailsFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusDetailsFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusResponse.StatusDetailsFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusResponse.StatusFieldNumber')
- [InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest')
  - [DescriptionFieldNumber](#F-Trinsic-Services-Common-V1-InviteRequest-DescriptionFieldNumber 'Trinsic.Services.Common.V1.InviteRequest.DescriptionFieldNumber')
  - [DidcommInvitationFieldNumber](#F-Trinsic-Services-Common-V1-InviteRequest-DidcommInvitationFieldNumber 'Trinsic.Services.Common.V1.InviteRequest.DidcommInvitationFieldNumber')
  - [EmailFieldNumber](#F-Trinsic-Services-Common-V1-InviteRequest-EmailFieldNumber 'Trinsic.Services.Common.V1.InviteRequest.EmailFieldNumber')
  - [ParticipantFieldNumber](#F-Trinsic-Services-Common-V1-InviteRequest-ParticipantFieldNumber 'Trinsic.Services.Common.V1.InviteRequest.ParticipantFieldNumber')
  - [PhoneFieldNumber](#F-Trinsic-Services-Common-V1-InviteRequest-PhoneFieldNumber 'Trinsic.Services.Common.V1.InviteRequest.PhoneFieldNumber')
- [InviteResponse](#T-Trinsic-Services-Common-V1-InviteResponse 'Trinsic.Services.Common.V1.InviteResponse')
  - [InvitationIdFieldNumber](#F-Trinsic-Services-Common-V1-InviteResponse-InvitationIdFieldNumber 'Trinsic.Services.Common.V1.InviteResponse.InvitationIdFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-Common-V1-InviteResponse-StatusFieldNumber 'Trinsic.Services.Common.V1.InviteResponse.StatusFieldNumber')
- [IssueFromTemplateRequest](#T-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest 'Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest')
  - [AttributesFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest-AttributesFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest.AttributesFieldNumber')
  - [TemplateIdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest-TemplateIdFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.IssueFromTemplateRequest.TemplateIdFieldNumber')
- [IssueRequest](#T-Trinsic-Services-VerifiableCredentials-V1-IssueRequest 'Trinsic.Services.VerifiableCredentials.V1.IssueRequest')
  - [DocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-IssueRequest-DocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.IssueRequest.DocumentFieldNumber')
- [IssueResponse](#T-Trinsic-Services-VerifiableCredentials-V1-IssueResponse 'Trinsic.Services.VerifiableCredentials.V1.IssueResponse')
  - [DocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-IssueResponse-DocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.IssueResponse.DocumentFieldNumber')
- [JTokenExtensions](#T-Newtonsoft-Json-Linq-JTokenExtensions 'Newtonsoft.Json.Linq.JTokenExtensions')
  - [ToStruct()](#M-Newtonsoft-Json-Linq-JTokenExtensions-ToStruct-Newtonsoft-Json-Linq-JToken- 'Newtonsoft.Json.Linq.JTokenExtensions.ToStruct(Newtonsoft.Json.Linq.JToken)')
- [JsonOneofCase](#T-Trinsic-Services-Common-V1-JsonPayload-JsonOneofCase 'Trinsic.Services.Common.V1.JsonPayload.JsonOneofCase')
- [JsonPayload](#T-Trinsic-Services-Common-V1-JsonPayload 'Trinsic.Services.Common.V1.JsonPayload')
  - [JsonBytesFieldNumber](#F-Trinsic-Services-Common-V1-JsonPayload-JsonBytesFieldNumber 'Trinsic.Services.Common.V1.JsonPayload.JsonBytesFieldNumber')
  - [JsonStringFieldNumber](#F-Trinsic-Services-Common-V1-JsonPayload-JsonStringFieldNumber 'Trinsic.Services.Common.V1.JsonPayload.JsonStringFieldNumber')
  - [JsonStructFieldNumber](#F-Trinsic-Services-Common-V1-JsonPayload-JsonStructFieldNumber 'Trinsic.Services.Common.V1.JsonPayload.JsonStructFieldNumber')
- [MemberOneofCase](#T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-MemberOneofCase 'Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest.MemberOneofCase')
- [MemberOneofCase](#T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-MemberOneofCase 'Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest.MemberOneofCase')
- [Nonce](#T-Trinsic-Services-Common-V1-Nonce 'Trinsic.Services.Common.V1.Nonce')
  - [RequestHashFieldNumber](#F-Trinsic-Services-Common-V1-Nonce-RequestHashFieldNumber 'Trinsic.Services.Common.V1.Nonce.RequestHashFieldNumber')
  - [TimestampFieldNumber](#F-Trinsic-Services-Common-V1-Nonce-TimestampFieldNumber 'Trinsic.Services.Common.V1.Nonce.TimestampFieldNumber')
  - [RequestHash](#P-Trinsic-Services-Common-V1-Nonce-RequestHash 'Trinsic.Services.Common.V1.Nonce.RequestHash')
  - [Timestamp](#P-Trinsic-Services-Common-V1-Nonce-Timestamp 'Trinsic.Services.Common.V1.Nonce.Timestamp')
- [ProtoMessageExtensions](#T-Google-Protobuf-ProtoMessageExtensions 'Google.Protobuf.ProtoMessageExtensions')
  - [As\`\`1(message)](#M-Google-Protobuf-ProtoMessageExtensions-As``1-Google-Protobuf-IMessage- 'Google.Protobuf.ProtoMessageExtensions.As``1(Google.Protobuf.IMessage)')
- [Provider](#T-Trinsic-Services-Common-V1-Provider 'Trinsic.Services.Common.V1.Provider')
  - [Descriptor](#P-Trinsic-Services-Common-V1-Provider-Descriptor 'Trinsic.Services.Common.V1.Provider.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-Common-V1-Provider-BindService-Trinsic-Services-Common-V1-Provider-ProviderBase- 'Trinsic.Services.Common.V1.Provider.BindService(Trinsic.Services.Common.V1.Provider.ProviderBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-Common-V1-Provider-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Common-V1-Provider-ProviderBase- 'Trinsic.Services.Common.V1.Provider.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.Common.V1.Provider.ProviderBase)')
- [ProviderBase](#T-Trinsic-Services-Common-V1-Provider-ProviderBase 'Trinsic.Services.Common.V1.Provider.ProviderBase')
  - [InvitationStatus(request,context)](#M-Trinsic-Services-Common-V1-Provider-ProviderBase-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Common.V1.Provider.ProviderBase.InvitationStatus(Trinsic.Services.Common.V1.InvitationStatusRequest,Grpc.Core.ServerCallContext)')
  - [Invite(request,context)](#M-Trinsic-Services-Common-V1-Provider-ProviderBase-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.Common.V1.Provider.ProviderBase.Invite(Trinsic.Services.Common.V1.InviteRequest,Grpc.Core.ServerCallContext)')
- [ProviderClient](#T-Trinsic-Services-Common-V1-Provider-ProviderClient 'Trinsic.Services.Common.V1.Provider.ProviderClient')
  - [#ctor(channel)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.Common.V1.Provider.ProviderClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.Common.V1.Provider.ProviderClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor 'Trinsic.Services.Common.V1.Provider.ProviderClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Common.V1.Provider.ProviderClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [InvitationStatus(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InvitationStatus(Trinsic.Services.Common.V1.InvitationStatusRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InvitationStatus(request,options)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InvitationStatus(Trinsic.Services.Common.V1.InvitationStatusRequest,Grpc.Core.CallOptions)')
  - [InvitationStatusAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatusAsync-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InvitationStatusAsync(Trinsic.Services.Common.V1.InvitationStatusRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InvitationStatusAsync(request,options)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatusAsync-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InvitationStatusAsync(Trinsic.Services.Common.V1.InvitationStatusRequest,Grpc.Core.CallOptions)')
  - [Invite(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Common.V1.Provider.ProviderClient.Invite(Trinsic.Services.Common.V1.InviteRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [Invite(request,options)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Common.V1.Provider.ProviderClient.Invite(Trinsic.Services.Common.V1.InviteRequest,Grpc.Core.CallOptions)')
  - [InviteAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InviteAsync-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InviteAsync(Trinsic.Services.Common.V1.InviteRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InviteAsync(request,options)](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-InviteAsync-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-CallOptions- 'Trinsic.Services.Common.V1.Provider.ProviderClient.InviteAsync(Trinsic.Services.Common.V1.InviteRequest,Grpc.Core.CallOptions)')
  - [NewInstance()](#M-Trinsic-Services-Common-V1-Provider-ProviderClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.Common.V1.Provider.ProviderClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [ProviderReflection](#T-Trinsic-Services-Common-V1-ProviderReflection 'Trinsic.Services.Common.V1.ProviderReflection')
  - [Descriptor](#P-Trinsic-Services-Common-V1-ProviderReflection-Descriptor 'Trinsic.Services.Common.V1.ProviderReflection.Descriptor')
- [ProviderService](#T-Trinsic-ProviderService 'Trinsic.ProviderService')
  - [InvitationStatus(request)](#M-Trinsic-ProviderService-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest- 'Trinsic.ProviderService.InvitationStatus(Trinsic.Services.Common.V1.InvitationStatusRequest)')
  - [InviteParticipant(request)](#M-Trinsic-ProviderService-InviteParticipant-Trinsic-Services-Common-V1-InviteRequest- 'Trinsic.ProviderService.InviteParticipant(Trinsic.Services.Common.V1.InviteRequest)')
- [RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest')
  - [CredentialTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-CredentialTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.CredentialTypeUriFieldNumber')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.GovernanceFrameworkUriFieldNumber')
  - [OptionsFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-OptionsFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.OptionsFieldNumber')
  - [ValidFromUtcFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-ValidFromUtcFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.ValidFromUtcFieldNumber')
  - [ValidUntilUtcFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-ValidUntilUtcFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.ValidUntilUtcFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest.X509CertFieldNumber')
- [RegisterIssuerResponse](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerResponse')
  - [ResponseDataFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse-ResponseDataFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerResponse.ResponseDataFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerResponse.StatusFieldNumber')
- [RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.GovernanceFrameworkUriFieldNumber')
  - [OptionsFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-OptionsFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.OptionsFieldNumber')
  - [PresentationTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-PresentationTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.PresentationTypeUriFieldNumber')
  - [ValidFromUtcFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-ValidFromUtcFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.ValidFromUtcFieldNumber')
  - [ValidUntilUtcFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-ValidUntilUtcFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.ValidUntilUtcFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest.X509CertFieldNumber')
- [RegisterVerifierResponse](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierResponse')
  - [ResponseDataFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse-ResponseDataFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierResponse.ResponseDataFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierResponse.StatusFieldNumber')
- [RegistrationStatus](#T-Trinsic-Services-TrustRegistry-V1-RegistrationStatus 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus')
  - [Current](#F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Current 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus.Current')
  - [Expired](#F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Expired 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus.Expired')
  - [Revoked](#F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Revoked 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus.Revoked')
  - [Terminated](#F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Terminated 'Trinsic.Services.TrustRegistry.V1.RegistrationStatus.Terminated')
- [RemoveFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.RemoveFrameworkRequest')
  - [GovernanceFrameworkFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkRequest-GovernanceFrameworkFieldNumber 'Trinsic.Services.TrustRegistry.V1.RemoveFrameworkRequest.GovernanceFrameworkFieldNumber')
- [RemoveFrameworkResponse](#T-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkResponse 'Trinsic.Services.TrustRegistry.V1.RemoveFrameworkResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.RemoveFrameworkResponse.StatusFieldNumber')
- [RequestOptions](#T-Trinsic-Services-Common-V1-RequestOptions 'Trinsic.Services.Common.V1.RequestOptions')
  - [ResponseJsonFormatFieldNumber](#F-Trinsic-Services-Common-V1-RequestOptions-ResponseJsonFormatFieldNumber 'Trinsic.Services.Common.V1.RequestOptions.ResponseJsonFormatFieldNumber')
- [SearchCredentialTemplatesRequest](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-ContinuationTokenFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest.ContinuationTokenFieldNumber')
  - [QueryFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-QueryFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest.QueryFieldNumber')
  - [Query](#P-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-Query 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesRequest.Query')
- [SearchCredentialTemplatesResponse](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-ContinuationTokenFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse.ContinuationTokenFieldNumber')
  - [CountFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-CountFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse.CountFieldNumber')
  - [HasMoreFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-HasMoreFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse.HasMoreFieldNumber')
  - [TemplatesFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-TemplatesFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.SearchCredentialTemplatesResponse.TemplatesFieldNumber')
- [SearchRegistryRequest](#T-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest 'Trinsic.Services.TrustRegistry.V1.SearchRegistryRequest')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-ContinuationTokenFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryRequest.ContinuationTokenFieldNumber')
  - [OptionsFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-OptionsFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryRequest.OptionsFieldNumber')
  - [QueryFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-QueryFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryRequest.QueryFieldNumber')
  - [Query](#P-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-Query 'Trinsic.Services.TrustRegistry.V1.SearchRegistryRequest.Query')
- [SearchRegistryResponse](#T-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-ContinuationTokenFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse.ContinuationTokenFieldNumber')
  - [CountFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-CountFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse.CountFieldNumber')
  - [HasMoreFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-HasMoreFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse.HasMoreFieldNumber')
  - [ItemsFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-ItemsFieldNumber 'Trinsic.Services.TrustRegistry.V1.SearchRegistryResponse.ItemsFieldNumber')
- [SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchRequest-ContinuationTokenFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchRequest.ContinuationTokenFieldNumber')
  - [OptionsFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchRequest-OptionsFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchRequest.OptionsFieldNumber')
  - [QueryFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchRequest-QueryFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchRequest.QueryFieldNumber')
- [SearchResponse](#T-Trinsic-Services-UniversalWallet-V1-SearchResponse 'Trinsic.Services.UniversalWallet.V1.SearchResponse')
  - [ContinuationTokenFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchResponse-ContinuationTokenFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchResponse.ContinuationTokenFieldNumber')
  - [CountFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchResponse-CountFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchResponse.CountFieldNumber')
  - [HasMoreFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchResponse-HasMoreFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchResponse.HasMoreFieldNumber')
  - [ItemsFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-SearchResponse-ItemsFieldNumber 'Trinsic.Services.UniversalWallet.V1.SearchResponse.ItemsFieldNumber')
- [SendRequest](#T-Trinsic-Services-VerifiableCredentials-V1-SendRequest 'Trinsic.Services.VerifiableCredentials.V1.SendRequest')
  - [DidUriFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DidUriFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.SendRequest.DidUriFieldNumber')
  - [DidcommInvitationFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DidcommInvitationFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.SendRequest.DidcommInvitationFieldNumber')
  - [DocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.SendRequest.DocumentFieldNumber')
  - [EmailFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-EmailFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.SendRequest.EmailFieldNumber')
- [SendResponse](#T-Trinsic-Services-VerifiableCredentials-V1-SendResponse 'Trinsic.Services.VerifiableCredentials.V1.SendResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-SendResponse-StatusFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.SendResponse.StatusFieldNumber')
- [ServerConfig](#T-Trinsic-Services-Common-V1-ServerConfig 'Trinsic.Services.Common.V1.ServerConfig')
  - [EndpointFieldNumber](#F-Trinsic-Services-Common-V1-ServerConfig-EndpointFieldNumber 'Trinsic.Services.Common.V1.ServerConfig.EndpointFieldNumber')
  - [PortFieldNumber](#F-Trinsic-Services-Common-V1-ServerConfig-PortFieldNumber 'Trinsic.Services.Common.V1.ServerConfig.PortFieldNumber')
  - [UseTlsFieldNumber](#F-Trinsic-Services-Common-V1-ServerConfig-UseTlsFieldNumber 'Trinsic.Services.Common.V1.ServerConfig.UseTlsFieldNumber')
  - [Endpoint](#P-Trinsic-Services-Common-V1-ServerConfig-Endpoint 'Trinsic.Services.Common.V1.ServerConfig.Endpoint')
  - [Port](#P-Trinsic-Services-Common-V1-ServerConfig-Port 'Trinsic.Services.Common.V1.ServerConfig.Port')
  - [UseTls](#P-Trinsic-Services-Common-V1-ServerConfig-UseTls 'Trinsic.Services.Common.V1.ServerConfig.UseTls')
- [ServiceBase](#T-Trinsic-ServiceBase 'Trinsic.ServiceBase')
  - [Base64UrlEncode(data)](#M-Trinsic-ServiceBase-Base64UrlEncode-System-Byte[]- 'Trinsic.ServiceBase.Base64UrlEncode(System.Byte[])')
  - [BuildMetadata()](#M-Trinsic-ServiceBase-BuildMetadata-Google-Protobuf-IMessage- 'Trinsic.ServiceBase.BuildMetadata(Google.Protobuf.IMessage)')
- [SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest')
  - [DetailsFieldNumber](#F-Trinsic-Services-Account-V1-SignInRequest-DetailsFieldNumber 'Trinsic.Services.Account.V1.SignInRequest.DetailsFieldNumber')
  - [InvitationCodeFieldNumber](#F-Trinsic-Services-Account-V1-SignInRequest-InvitationCodeFieldNumber 'Trinsic.Services.Account.V1.SignInRequest.InvitationCodeFieldNumber')
  - [Details](#P-Trinsic-Services-Account-V1-SignInRequest-Details 'Trinsic.Services.Account.V1.SignInRequest.Details')
  - [InvitationCode](#P-Trinsic-Services-Account-V1-SignInRequest-InvitationCode 'Trinsic.Services.Account.V1.SignInRequest.InvitationCode')
- [SignInResponse](#T-Trinsic-Services-Account-V1-SignInResponse 'Trinsic.Services.Account.V1.SignInResponse')
  - [ConfirmationMethodFieldNumber](#F-Trinsic-Services-Account-V1-SignInResponse-ConfirmationMethodFieldNumber 'Trinsic.Services.Account.V1.SignInResponse.ConfirmationMethodFieldNumber')
  - [ProfileFieldNumber](#F-Trinsic-Services-Account-V1-SignInResponse-ProfileFieldNumber 'Trinsic.Services.Account.V1.SignInResponse.ProfileFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-Account-V1-SignInResponse-StatusFieldNumber 'Trinsic.Services.Account.V1.SignInResponse.StatusFieldNumber')
  - [ConfirmationMethod](#P-Trinsic-Services-Account-V1-SignInResponse-ConfirmationMethod 'Trinsic.Services.Account.V1.SignInResponse.ConfirmationMethod')
  - [Profile](#P-Trinsic-Services-Account-V1-SignInResponse-Profile 'Trinsic.Services.Account.V1.SignInResponse.Profile')
  - [Status](#P-Trinsic-Services-Account-V1-SignInResponse-Status 'Trinsic.Services.Account.V1.SignInResponse.Status')
- [Status](#T-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status')
  - [Completed](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Completed 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.Completed')
  - [Error](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Error 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.Error')
  - [InvitationSent](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-InvitationSent 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.InvitationSent')
- [StructExtensions](#T-Google-Protobuf-WellKnownTypes-StructExtensions 'Google.Protobuf.WellKnownTypes.StructExtensions')
  - [ToJObject(message)](#M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJObject-Google-Protobuf-WellKnownTypes-Struct- 'Google.Protobuf.WellKnownTypes.StructExtensions.ToJObject(Google.Protobuf.WellKnownTypes.Struct)')
  - [ToJToken(message)](#M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJToken-Google-Protobuf-WellKnownTypes-Struct- 'Google.Protobuf.WellKnownTypes.StructExtensions.ToJToken(Google.Protobuf.WellKnownTypes.Struct)')
- [TemplatesReflection](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplatesReflection')
  - [Descriptor](#P-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection-Descriptor 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplatesReflection.Descriptor')
- [TokenProtection](#T-Trinsic-Services-Account-V1-TokenProtection 'Trinsic.Services.Account.V1.TokenProtection')
  - [EnabledFieldNumber](#F-Trinsic-Services-Account-V1-TokenProtection-EnabledFieldNumber 'Trinsic.Services.Account.V1.TokenProtection.EnabledFieldNumber')
  - [MethodFieldNumber](#F-Trinsic-Services-Account-V1-TokenProtection-MethodFieldNumber 'Trinsic.Services.Account.V1.TokenProtection.MethodFieldNumber')
  - [Enabled](#P-Trinsic-Services-Account-V1-TokenProtection-Enabled 'Trinsic.Services.Account.V1.TokenProtection.Enabled')
  - [Method](#P-Trinsic-Services-Account-V1-TokenProtection-Method 'Trinsic.Services.Account.V1.TokenProtection.Method')
- [TrustRegistry](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistry 'Trinsic.Services.TrustRegistry.V1.TrustRegistry')
  - [Descriptor](#P-Trinsic-Services-TrustRegistry-V1-TrustRegistry-Descriptor 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-BindService-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.BindService(Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase)')
- [TrustRegistryBase](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase')
  - [AddFramework(request,context)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase.AddFramework(Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest,Grpc.Core.ServerCallContext)')
  - [RegisterIssuer(request,context)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase.RegisterIssuer(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest,Grpc.Core.ServerCallContext)')
  - [RegisterVerifier(request,context)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase.RegisterVerifier(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest,Grpc.Core.ServerCallContext)')
  - [UnregisterIssuer(request,context)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase.UnregisterIssuer(Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest,Grpc.Core.ServerCallContext)')
  - [UnregisterVerifier(request,context)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase.UnregisterVerifier(Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest,Grpc.Core.ServerCallContext)')
- [TrustRegistryClient](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient')
  - [#ctor(channel)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [AddFramework(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.AddFramework(Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [AddFramework(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.AddFramework(Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest,Grpc.Core.CallOptions)')
  - [AddFrameworkAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFrameworkAsync-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.AddFrameworkAsync(Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [AddFrameworkAsync(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFrameworkAsync-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.AddFrameworkAsync(Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest,Grpc.Core.CallOptions)')
  - [NewInstance()](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [RegisterIssuer(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterIssuer(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RegisterIssuer(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterIssuer(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest,Grpc.Core.CallOptions)')
  - [RegisterIssuerAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterIssuerAsync(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RegisterIssuerAsync(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterIssuerAsync(Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest,Grpc.Core.CallOptions)')
  - [RegisterVerifier(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterVerifier(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RegisterVerifier(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterVerifier(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest,Grpc.Core.CallOptions)')
  - [RegisterVerifierAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterVerifierAsync(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [RegisterVerifierAsync(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.RegisterVerifierAsync(Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest,Grpc.Core.CallOptions)')
  - [UnregisterIssuer(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterIssuer(Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [UnregisterIssuer(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterIssuer(Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest,Grpc.Core.CallOptions)')
  - [UnregisterIssuerAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterIssuerAsync(Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [UnregisterIssuerAsync(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterIssuerAsync(Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest,Grpc.Core.CallOptions)')
  - [UnregisterVerifier(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterVerifier(Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [UnregisterVerifier(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterVerifier(Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest,Grpc.Core.CallOptions)')
  - [UnregisterVerifierAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterVerifierAsync(Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [UnregisterVerifierAsync(request,options)](#M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-CallOptions- 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryClient.UnregisterVerifierAsync(Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest,Grpc.Core.CallOptions)')
- [TrustRegistryReflection](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistryReflection 'Trinsic.Services.TrustRegistry.V1.TrustRegistryReflection')
  - [Descriptor](#P-Trinsic-Services-TrustRegistry-V1-TrustRegistryReflection-Descriptor 'Trinsic.Services.TrustRegistry.V1.TrustRegistryReflection.Descriptor')
- [TrustRegistryService](#T-Trinsic-TrustRegistryService 'Trinsic.TrustRegistryService')
  - [CheckIssuerStatus(issuerDid,credentialType,governanceFramework)](#M-Trinsic-TrustRegistryService-CheckIssuerStatus-System-String,System-String,System-String- 'Trinsic.TrustRegistryService.CheckIssuerStatus(System.String,System.String,System.String)')
  - [CheckVerifierStatus(verifierDid,presentationType,governanceFramework)](#M-Trinsic-TrustRegistryService-CheckVerifierStatus-System-String,System-String,System-String- 'Trinsic.TrustRegistryService.CheckVerifierStatus(System.String,System.String,System.String)')
  - [RegisterGovernanceFramework(governanceFramework,description)](#M-Trinsic-TrustRegistryService-RegisterGovernanceFramework-System-String,System-String- 'Trinsic.TrustRegistryService.RegisterGovernanceFramework(System.String,System.String)')
  - [RegisterIssuer(issuerDid,credentialType,governanceFramework,validFrom,validUntil)](#M-Trinsic-TrustRegistryService-RegisterIssuer-System-String,System-String,System-String,System-Nullable{System-DateTimeOffset},System-Nullable{System-DateTimeOffset}- 'Trinsic.TrustRegistryService.RegisterIssuer(System.String,System.String,System.String,System.Nullable{System.DateTimeOffset},System.Nullable{System.DateTimeOffset})')
  - [RegisterVerifier(verifierDid,presentationType,governanceFramework,validFrom,validUntil)](#M-Trinsic-TrustRegistryService-RegisterVerifier-System-String,System-String,System-String,System-Nullable{System-DateTimeOffset},System-Nullable{System-DateTimeOffset}- 'Trinsic.TrustRegistryService.RegisterVerifier(System.String,System.String,System.String,System.Nullable{System.DateTimeOffset},System.Nullable{System.DateTimeOffset})')
  - [SearchRegistry(query)](#M-Trinsic-TrustRegistryService-SearchRegistry-System-String- 'Trinsic.TrustRegistryService.SearchRegistry(System.String)')
- [Types](#T-Trinsic-Services-Common-V1-InvitationStatusResponse-Types 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types')
- [Types](#T-Trinsic-Services-Common-V1-InviteRequest-Types 'Trinsic.Services.Common.V1.InviteRequest.Types')
- [UniversalWalletReflection](#T-Trinsic-Services-UniversalWallet-V1-UniversalWalletReflection 'Trinsic.Services.UniversalWallet.V1.UniversalWalletReflection')
  - [Descriptor](#P-Trinsic-Services-UniversalWallet-V1-UniversalWalletReflection-Descriptor 'Trinsic.Services.UniversalWallet.V1.UniversalWalletReflection.Descriptor')
- [UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest')
  - [CredentialTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-CredentialTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest.CredentialTypeUriFieldNumber')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest.GovernanceFrameworkUriFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest.X509CertFieldNumber')
- [UnregisterIssuerResponse](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerResponse 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerResponse.StatusFieldNumber')
- [UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest')
  - [DidUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-DidUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest.DidUriFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest.GovernanceFrameworkUriFieldNumber')
  - [PresentationTypeUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-PresentationTypeUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest.PresentationTypeUriFieldNumber')
  - [X509CertFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-X509CertFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest.X509CertFieldNumber')
- [UnregisterVerifierResponse](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierResponse 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierResponse-StatusFieldNumber 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierResponse.StatusFieldNumber')
- [UpdateCredentialTemplateRequest](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateRequest')
  - [IdFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-IdFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateRequest.IdFieldNumber')
  - [NameFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-NameFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateRequest.NameFieldNumber')
  - [SchemaFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-SchemaFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateRequest.SchemaFieldNumber')
- [UpdateCredentialTemplateResponse](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateResponse 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateResponse')
  - [TemplateFieldNumber](#F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateResponse-TemplateFieldNumber 'Trinsic.Services.VerifiableCredentials.Templates.V1.UpdateCredentialTemplateResponse.TemplateFieldNumber')
- [VerifiableCredentialsReflection](#T-Trinsic-Services-VerifiableCredentials-V1-VerifiableCredentialsReflection 'Trinsic.Services.VerifiableCredentials.V1.VerifiableCredentialsReflection')
  - [Descriptor](#P-Trinsic-Services-VerifiableCredentials-V1-VerifiableCredentialsReflection-Descriptor 'Trinsic.Services.VerifiableCredentials.V1.VerifiableCredentialsReflection.Descriptor')
- [VerifyProofRequest](#T-Trinsic-Services-VerifiableCredentials-V1-VerifyProofRequest 'Trinsic.Services.VerifiableCredentials.V1.VerifyProofRequest')
  - [ProofDocumentFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-VerifyProofRequest-ProofDocumentFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.VerifyProofRequest.ProofDocumentFieldNumber')
- [VerifyProofResponse](#T-Trinsic-Services-VerifiableCredentials-V1-VerifyProofResponse 'Trinsic.Services.VerifiableCredentials.V1.VerifyProofResponse')
  - [ValidFieldNumber](#F-Trinsic-Services-VerifiableCredentials-V1-VerifyProofResponse-ValidFieldNumber 'Trinsic.Services.VerifiableCredentials.V1.VerifyProofResponse.ValidFieldNumber')
- [WalletService](#T-Trinsic-Services-UniversalWallet-V1-WalletService 'Trinsic.Services.UniversalWallet.V1.WalletService')
- [WalletService](#T-Trinsic-WalletService 'Trinsic.WalletService')
  - [Descriptor](#P-Trinsic-Services-UniversalWallet-V1-WalletService-Descriptor 'Trinsic.Services.UniversalWallet.V1.WalletService.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-BindService-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase- 'Trinsic.Services.UniversalWallet.V1.WalletService.BindService(Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase- 'Trinsic.Services.UniversalWallet.V1.WalletService.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase)')
  - [InsertItem(item)](#M-Trinsic-WalletService-InsertItem-Newtonsoft-Json-Linq-JObject- 'Trinsic.WalletService.InsertItem(Newtonsoft.Json.Linq.JObject)')
  - [Search(query)](#M-Trinsic-WalletService-Search-System-String- 'Trinsic.WalletService.Search(System.String)')
- [WalletServiceBase](#T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase')
  - [Deleteitem(request,context)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase.Deleteitem(Trinsic.Services.UniversalWallet.V1.DeleteItemRequest,Grpc.Core.ServerCallContext)')
  - [InsertItem(request,context)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase.InsertItem(Trinsic.Services.UniversalWallet.V1.InsertItemRequest,Grpc.Core.ServerCallContext)')
  - [Search(request,context)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-ServerCallContext- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase.Search(Trinsic.Services.UniversalWallet.V1.SearchRequest,Grpc.Core.ServerCallContext)')
- [WalletServiceClient](#T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient')
  - [#ctor(channel)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [Deleteitem(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.Deleteitem(Trinsic.Services.UniversalWallet.V1.DeleteItemRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [Deleteitem(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.Deleteitem(Trinsic.Services.UniversalWallet.V1.DeleteItemRequest,Grpc.Core.CallOptions)')
  - [DeleteitemAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-DeleteitemAsync-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.DeleteitemAsync(Trinsic.Services.UniversalWallet.V1.DeleteItemRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [DeleteitemAsync(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-DeleteitemAsync-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.DeleteitemAsync(Trinsic.Services.UniversalWallet.V1.DeleteItemRequest,Grpc.Core.CallOptions)')
  - [InsertItem(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.InsertItem(Trinsic.Services.UniversalWallet.V1.InsertItemRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InsertItem(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.InsertItem(Trinsic.Services.UniversalWallet.V1.InsertItemRequest,Grpc.Core.CallOptions)')
  - [InsertItemAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItemAsync-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.InsertItemAsync(Trinsic.Services.UniversalWallet.V1.InsertItemRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [InsertItemAsync(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItemAsync-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.InsertItemAsync(Trinsic.Services.UniversalWallet.V1.InsertItemRequest,Grpc.Core.CallOptions)')
  - [NewInstance()](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [Search(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.Search(Trinsic.Services.UniversalWallet.V1.SearchRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [Search(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.Search(Trinsic.Services.UniversalWallet.V1.SearchRequest,Grpc.Core.CallOptions)')
  - [SearchAsync(request,headers,deadline,cancellationToken)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-SearchAsync-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.SearchAsync(Trinsic.Services.UniversalWallet.V1.SearchRequest,Grpc.Core.Metadata,System.Nullable{System.DateTime},System.Threading.CancellationToken)')
  - [SearchAsync(request,options)](#M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-SearchAsync-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-CallOptions- 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient.SearchAsync(Trinsic.Services.UniversalWallet.V1.SearchRequest,Grpc.Core.CallOptions)')

<a name='T-Trinsic-Services-Account-V1-AccountDetails'></a>
## AccountDetails `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Account Registration Details

<a name='F-Trinsic-Services-Account-V1-AccountDetails-EmailFieldNumber'></a>
### EmailFieldNumber `constants`

##### Summary

Field number for the "email" field.

<a name='F-Trinsic-Services-Account-V1-AccountDetails-NameFieldNumber'></a>
### NameFieldNumber `constants`

##### Summary

Field number for the "name" field.

<a name='F-Trinsic-Services-Account-V1-AccountDetails-SmsFieldNumber'></a>
### SmsFieldNumber `constants`

##### Summary

Field number for the "sms" field.

<a name='P-Trinsic-Services-Account-V1-AccountDetails-Email'></a>
### Email `property`

##### Summary

Email account (required)

<a name='P-Trinsic-Services-Account-V1-AccountDetails-Name'></a>
### Name `property`

##### Summary

Account name (optional)

<a name='P-Trinsic-Services-Account-V1-AccountDetails-Sms'></a>
### Sms `property`

##### Summary

SMS number including country code (optional)

<a name='T-Trinsic-Services-Account-V1-AccountProfile'></a>
## AccountProfile `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Device profile containing sensitive authentication data.
This information should be stored securely

<a name='F-Trinsic-Services-Account-V1-AccountProfile-AuthDataFieldNumber'></a>
### AuthDataFieldNumber `constants`

##### Summary

Field number for the "auth_data" field.

<a name='F-Trinsic-Services-Account-V1-AccountProfile-AuthTokenFieldNumber'></a>
### AuthTokenFieldNumber `constants`

##### Summary

Field number for the "auth_token" field.

<a name='F-Trinsic-Services-Account-V1-AccountProfile-ProfileTypeFieldNumber'></a>
### ProfileTypeFieldNumber `constants`

##### Summary

Field number for the "profile_type" field.

<a name='F-Trinsic-Services-Account-V1-AccountProfile-ProtectionFieldNumber'></a>
### ProtectionFieldNumber `constants`

##### Summary

Field number for the "protection" field.

<a name='P-Trinsic-Services-Account-V1-AccountProfile-AuthData'></a>
### AuthData `property`

##### Summary

Auth data containg information about the current device access

<a name='P-Trinsic-Services-Account-V1-AccountProfile-AuthToken'></a>
### AuthToken `property`

##### Summary

Secure token issued by server used to generate zero-knowledge proofs

<a name='P-Trinsic-Services-Account-V1-AccountProfile-ProfileType'></a>
### ProfileType `property`

##### Summary

The type of profile, used to differentiate between
protocol schemes or versions

<a name='P-Trinsic-Services-Account-V1-AccountProfile-Protection'></a>
### Protection `property`

##### Summary

Token security information about the token.
If token protection is enabled, implementations must supply
protection secret before using the token for authentication.

<a name='T-Trinsic-Services-Account-V1-AccountReflection'></a>
## AccountReflection `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Holder for reflection information generated from services/account/v1/account.proto

<a name='P-Trinsic-Services-Account-V1-AccountReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/account/v1/account.proto

<a name='T-Trinsic-AccountService'></a>
## AccountService `type`

##### Namespace

Trinsic

<a name='T-Trinsic-Services-Account-V1-AccountService'></a>
## AccountService `type`

##### Namespace

Trinsic.Services.Account.V1

<a name='P-Trinsic-Services-Account-V1-AccountService-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-AccountService-GetInfoAsync'></a>
### GetInfoAsync() `method`

##### Summary

Return the details about the currently active account

##### Returns



##### Parameters

This method has no parameters.

<a name='M-Trinsic-AccountService-Protect-Trinsic-Services-Account-V1-AccountProfile@,System-String-'></a>
### Protect(profile,securityCode) `method`

##### Summary

Protects the account profile with a security code.
The code can be PIN, password, keychain secret, etc.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| profile | [Trinsic.Services.Account.V1.AccountProfile@](#T-Trinsic-Services-Account-V1-AccountProfile@ 'Trinsic.Services.Account.V1.AccountProfile@') |  |
| securityCode | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |

<a name='M-Trinsic-AccountService-SignInAsync-Trinsic-Services-Account-V1-AccountDetails-'></a>
### SignInAsync(details) `method`

##### Summary

Perform a sign-in to obtain an account profile. If the [AccountDetails](#T-Trinsic-Services-Account-V1-AccountDetails 'Trinsic.Services.Account.V1.AccountDetails') are
specified, they will be used to associate

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| details | [Trinsic.Services.Account.V1.AccountDetails](#T-Trinsic-Services-Account-V1-AccountDetails 'Trinsic.Services.Account.V1.AccountDetails') |  |

<a name='M-Trinsic-AccountService-Unprotect-Trinsic-Services-Account-V1-AccountProfile@,System-String-'></a>
### Unprotect(profile,securityCode) `method`

##### Summary

Unprotects the account profile using a security code.
The confirmation method field will specify how this code was
communicated with the account owner.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| profile | [Trinsic.Services.Account.V1.AccountProfile@](#T-Trinsic-Services-Account-V1-AccountProfile@ 'Trinsic.Services.Account.V1.AccountProfile@') |  |
| securityCode | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |

<a name='M-Trinsic-Services-Account-V1-AccountService-BindService-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.Account.V1.AccountService.AccountServiceBase](#T-Trinsic-Services-Account-V1-AccountService-AccountServiceBase 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-Account-V1-AccountService-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Account-V1-AccountService-AccountServiceBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.Account.V1.AccountService.AccountServiceBase](#T-Trinsic-Services-Account-V1-AccountService-AccountServiceBase 'Trinsic.Services.Account.V1.AccountService.AccountServiceBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-Account-V1-AccountService-AccountServiceBase'></a>
## AccountServiceBase `type`

##### Namespace

Trinsic.Services.Account.V1.AccountService

##### Summary

Base class for server-side implementations of AccountService

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-ServerCallContext-'></a>
### Info(request,context) `method`

##### Summary

Get account information

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.InfoRequest](#T-Trinsic-Services-Account-V1-InfoRequest 'Trinsic.Services.Account.V1.InfoRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-ServerCallContext-'></a>
### ListDevices(request,context) `method`

##### Summary

List all connected devices

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.ListDevicesRequest](#T-Trinsic-Services-Account-V1-ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-ServerCallContext-'></a>
### RevokeDevice(request,context) `method`

##### Summary

Revoke device access to the account's cloud wallet

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.RevokeDeviceRequest](#T-Trinsic-Services-Account-V1-RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceBase-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-ServerCallContext-'></a>
### SignIn(request,context) `method`

##### Summary

Sign in to an already existing account

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='T-Trinsic-Services-Account-V1-AccountService-AccountServiceClient'></a>
## AccountServiceClient `type`

##### Namespace

Trinsic.Services.Account.V1.AccountService

##### Summary

Client for AccountService

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for AccountService

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for AccountService that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### Info(request,headers,deadline,cancellationToken) `method`

##### Summary

Get account information

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.InfoRequest](#T-Trinsic-Services-Account-V1-InfoRequest 'Trinsic.Services.Account.V1.InfoRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-Info-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-CallOptions-'></a>
### Info(request,options) `method`

##### Summary

Get account information

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.InfoRequest](#T-Trinsic-Services-Account-V1-InfoRequest 'Trinsic.Services.Account.V1.InfoRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-InfoAsync-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InfoAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Get account information

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.InfoRequest](#T-Trinsic-Services-Account-V1-InfoRequest 'Trinsic.Services.Account.V1.InfoRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-InfoAsync-Trinsic-Services-Account-V1-InfoRequest,Grpc-Core-CallOptions-'></a>
### InfoAsync(request,options) `method`

##### Summary

Get account information

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.InfoRequest](#T-Trinsic-Services-Account-V1-InfoRequest 'Trinsic.Services.Account.V1.InfoRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### ListDevices(request,headers,deadline,cancellationToken) `method`

##### Summary

List all connected devices

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.ListDevicesRequest](#T-Trinsic-Services-Account-V1-ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevices-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-CallOptions-'></a>
### ListDevices(request,options) `method`

##### Summary

List all connected devices

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.ListDevicesRequest](#T-Trinsic-Services-Account-V1-ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevicesAsync-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### ListDevicesAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

List all connected devices

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.ListDevicesRequest](#T-Trinsic-Services-Account-V1-ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-ListDevicesAsync-Trinsic-Services-Account-V1-ListDevicesRequest,Grpc-Core-CallOptions-'></a>
### ListDevicesAsync(request,options) `method`

##### Summary

List all connected devices

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.ListDevicesRequest](#T-Trinsic-Services-Account-V1-ListDevicesRequest 'Trinsic.Services.Account.V1.ListDevicesRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RevokeDevice(request,headers,deadline,cancellationToken) `method`

##### Summary

Revoke device access to the account's cloud wallet

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.RevokeDeviceRequest](#T-Trinsic-Services-Account-V1-RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDevice-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-CallOptions-'></a>
### RevokeDevice(request,options) `method`

##### Summary

Revoke device access to the account's cloud wallet

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.RevokeDeviceRequest](#T-Trinsic-Services-Account-V1-RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDeviceAsync-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RevokeDeviceAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Revoke device access to the account's cloud wallet

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.RevokeDeviceRequest](#T-Trinsic-Services-Account-V1-RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-RevokeDeviceAsync-Trinsic-Services-Account-V1-RevokeDeviceRequest,Grpc-Core-CallOptions-'></a>
### RevokeDeviceAsync(request,options) `method`

##### Summary

Revoke device access to the account's cloud wallet

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.RevokeDeviceRequest](#T-Trinsic-Services-Account-V1-RevokeDeviceRequest 'Trinsic.Services.Account.V1.RevokeDeviceRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### SignIn(request,headers,deadline,cancellationToken) `method`

##### Summary

Sign in to an already existing account

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignIn-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-CallOptions-'></a>
### SignIn(request,options) `method`

##### Summary

Sign in to an already existing account

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignInAsync-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### SignInAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Sign in to an already existing account

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Account-V1-AccountService-AccountServiceClient-SignInAsync-Trinsic-Services-Account-V1-SignInRequest,Grpc-Core-CallOptions-'></a>
### SignInAsync(request,options) `method`

##### Summary

Sign in to an already existing account

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Account.V1.SignInRequest](#T-Trinsic-Services-Account-V1-SignInRequest 'Trinsic.Services.Account.V1.SignInRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest'></a>
## AddFrameworkRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest-GovernanceFrameworkFieldNumber'></a>
### GovernanceFrameworkFieldNumber `constants`

##### Summary

Field number for the "governance_framework" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-AddFrameworkResponse'></a>
## AddFrameworkResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-AddFrameworkResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-AuthorityOneofCase'></a>
## AuthorityOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest

##### Summary

Enum of possible cases for the "authority" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-AuthorityOneofCase'></a>
## AuthorityOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest

##### Summary

Enum of possible cases for the "authority" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-AuthorityOneofCase'></a>
## AuthorityOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest

##### Summary

Enum of possible cases for the "authority" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-AuthorityOneofCase'></a>
## AuthorityOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest

##### Summary

Enum of possible cases for the "authority" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest'></a>
## CheckIssuerStatusRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-CredentialTypeUriFieldNumber'></a>
### CredentialTypeUriFieldNumber `constants`

##### Summary

Field number for the "credential_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse'></a>
## CheckIssuerStatusResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest'></a>
## CheckVerifierStatusRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-PresentationTypeUriFieldNumber'></a>
### PresentationTypeUriFieldNumber `constants`

##### Summary

Field number for the "presentation_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse'></a>
## CheckVerifierStatusResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-Common-V1-Common'></a>
## Common `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='P-Trinsic-Services-Common-V1-Common-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-Common-V1-Common-BindService-Trinsic-Services-Common-V1-Common-CommonBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.Common.V1.Common.CommonBase](#T-Trinsic-Services-Common-V1-Common-CommonBase 'Trinsic.Services.Common.V1.Common.CommonBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-Common-V1-Common-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Common-V1-Common-CommonBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.Common.V1.Common.CommonBase](#T-Trinsic-Services-Common-V1-Common-CommonBase 'Trinsic.Services.Common.V1.Common.CommonBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-Common-V1-Common-CommonBase'></a>
## CommonBase `type`

##### Namespace

Trinsic.Services.Common.V1.Common

##### Summary

Base class for server-side implementations of Common

<a name='T-Trinsic-Services-Common-V1-Common-CommonClient'></a>
## CommonClient `type`

##### Namespace

Trinsic.Services.Common.V1.Common

##### Summary

Client for Common

<a name='M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for Common

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for Common that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-Common-V1-Common-CommonClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-Common-V1-Common-CommonClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-Common-V1-CommonReflection'></a>
## CommonReflection `type`

##### Namespace

Trinsic.Services.Common.V1

##### Summary

Holder for reflection information generated from services/common/v1/common.proto

<a name='P-Trinsic-Services-Common-V1-CommonReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/common/v1/common.proto

<a name='T-Trinsic-Services-Account-V1-ConfirmationMethod'></a>
## ConfirmationMethod `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Confirmation method type for two-factor workflows

<a name='F-Trinsic-Services-Account-V1-ConfirmationMethod-ConnectedDevice'></a>
### ConnectedDevice `constants`

##### Summary

Confirmation from a connected device is required

<a name='F-Trinsic-Services-Account-V1-ConfirmationMethod-Email'></a>
### Email `constants`

##### Summary

Email confirmation required

<a name='F-Trinsic-Services-Account-V1-ConfirmationMethod-None'></a>
### None `constants`

##### Summary

No confirmation required

<a name='F-Trinsic-Services-Account-V1-ConfirmationMethod-Other'></a>
### Other `constants`

##### Summary

Indicates third-party method of confirmation is required

<a name='F-Trinsic-Services-Account-V1-ConfirmationMethod-Sms'></a>
### Sms `constants`

##### Summary

SMS confirmation required

<a name='T-Trinsic-Services-Common-V1-InviteRequest-ContactMethodOneofCase'></a>
## ContactMethodOneofCase `type`

##### Namespace

Trinsic.Services.Common.V1.InviteRequest

##### Summary

Enum of possible cases for the "contact_method" oneof.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest'></a>
## CreateCredentialTemplateRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-BaseUriFieldNumber'></a>
### BaseUriFieldNumber `constants`

##### Summary

Field number for the "base_uri" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-NameFieldNumber'></a>
### NameFieldNumber `constants`

##### Summary

Field number for the "name" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateRequest-SchemaFieldNumber'></a>
### SchemaFieldNumber `constants`

##### Summary

Field number for the "schema" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse'></a>
## CreateCredentialTemplateResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse-IdFieldNumber'></a>
### IdFieldNumber `constants`

##### Summary

Field number for the "id" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CreateCredentialTemplateResponse-UriFieldNumber'></a>
### UriFieldNumber `constants`

##### Summary

Field number for the "uri" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest'></a>
## CreateProofRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

##### Summary

Create Proof

<a name='F-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest-DocumentIdFieldNumber'></a>
### DocumentIdFieldNumber `constants`

##### Summary

Field number for the "document_id" field.

<a name='F-Trinsic-Services-VerifiableCredentials-V1-CreateProofRequest-RevealDocumentFieldNumber'></a>
### RevealDocumentFieldNumber `constants`

##### Summary

Field number for the "reveal_document" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-CreateProofResponse'></a>
## CreateProofResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-CreateProofResponse-ProofDocumentFieldNumber'></a>
### ProofDocumentFieldNumber `constants`

##### Summary

Field number for the "proof_document" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-Credential'></a>
## Credential `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='P-Trinsic-Services-VerifiableCredentials-V1-Credential-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-BindService-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase](#T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase](#T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase 'Trinsic.Services.VerifiableCredentials.V1.Credential.CredentialBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialBase'></a>
## CredentialBase `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1.Credential

##### Summary

Base class for server-side implementations of Credential

<a name='T-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient'></a>
## CredentialClient `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1.Credential

##### Summary

Client for Credential

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for Credential

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for Credential that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-VerifiableCredentials-V1-Credential-CredentialClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate'></a>
## CredentialTemplate `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-IdFieldNumber'></a>
### IdFieldNumber `constants`

##### Summary

Field number for the "id" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-NameFieldNumber'></a>
### NameFieldNumber `constants`

##### Summary

Field number for the "name" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-SchemaFieldNumber'></a>
### SchemaFieldNumber `constants`

##### Summary

Field number for the "schema" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-UriFieldNumber'></a>
### UriFieldNumber `constants`

##### Summary

Field number for the "uri" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplate-VersionFieldNumber'></a>
### VersionFieldNumber `constants`

##### Summary

Field number for the "version" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates'></a>
## CredentialTemplates `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='P-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-BindService-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase 'Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates.CredentialTemplatesBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesBase'></a>
## CredentialTemplatesBase `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates

##### Summary

Base class for server-side implementations of CredentialTemplates

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient'></a>
## CredentialTemplatesClient `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1.CredentialTemplates

##### Summary

Client for CredentialTemplates

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for CredentialTemplates

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for CredentialTemplates that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-VerifiableCredentials-Templates-V1-CredentialTemplates-CredentialTemplatesClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-CredentialsService'></a>
## CredentialsService `type`

##### Namespace

Trinsic

<a name='M-Trinsic-CredentialsService-CreateProof-System-String,Newtonsoft-Json-Linq-JObject-'></a>
### CreateProof(documentId,revealDocument) `method`

##### Summary

Derive a proof from an existing document in the wallet using
an input reveal document frame

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| documentId | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |
| revealDocument | [Newtonsoft.Json.Linq.JObject](#T-Newtonsoft-Json-Linq-JObject 'Newtonsoft.Json.Linq.JObject') |  |

<a name='M-Trinsic-CredentialsService-IssueCredential-Newtonsoft-Json-Linq-JObject-'></a>
### IssueCredential(document) `method`

##### Summary

Signs an input credential

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| document | [Newtonsoft.Json.Linq.JObject](#T-Newtonsoft-Json-Linq-JObject 'Newtonsoft.Json.Linq.JObject') |  |

<a name='M-Trinsic-CredentialsService-Send-Newtonsoft-Json-Linq-JObject,System-String-'></a>
### Send(document,email) `method`

##### Summary

Sends a document to the specified destination

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| document | [Newtonsoft.Json.Linq.JObject](#T-Newtonsoft-Json-Linq-JObject 'Newtonsoft.Json.Linq.JObject') |  |
| email | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |

<a name='M-Trinsic-CredentialsService-VerifyProof-Newtonsoft-Json-Linq-JObject-'></a>
### VerifyProof(proofDocument) `method`

##### Summary

Verifies a proof document

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| proofDocument | [Newtonsoft.Json.Linq.JObject](#T-Newtonsoft-Json-Linq-JObject 'Newtonsoft.Json.Linq.JObject') |  |

<a name='T-Trinsic-Services-Debug-V1-DebugReflection'></a>
## DebugReflection `type`

##### Namespace

Trinsic.Services.Debug.V1

##### Summary

Holder for reflection information generated from debug.proto

<a name='P-Trinsic-Services-Debug-V1-DebugReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for debug.proto

<a name='T-Trinsic-Services-Debug-V1-Debugging'></a>
## Debugging `type`

##### Namespace

Trinsic.Services.Debug.V1

<a name='P-Trinsic-Services-Debug-V1-Debugging-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-Debug-V1-Debugging-BindService-Trinsic-Services-Debug-V1-Debugging-DebuggingBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.Debug.V1.Debugging.DebuggingBase](#T-Trinsic-Services-Debug-V1-Debugging-DebuggingBase 'Trinsic.Services.Debug.V1.Debugging.DebuggingBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-Debug-V1-Debugging-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Debug-V1-Debugging-DebuggingBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.Debug.V1.Debugging.DebuggingBase](#T-Trinsic-Services-Debug-V1-Debugging-DebuggingBase 'Trinsic.Services.Debug.V1.Debugging.DebuggingBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-Debug-V1-Debugging-DebuggingBase'></a>
## DebuggingBase `type`

##### Namespace

Trinsic.Services.Debug.V1.Debugging

##### Summary

Base class for server-side implementations of Debugging

<a name='T-Trinsic-Services-Debug-V1-Debugging-DebuggingClient'></a>
## DebuggingClient `type`

##### Namespace

Trinsic.Services.Debug.V1.Debugging

##### Summary

Client for Debugging

<a name='M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for Debugging

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for Debugging that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-Debug-V1-Debugging-DebuggingClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-DeleteCredentialTemplateRequest'></a>
## DeleteCredentialTemplateRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-DeleteCredentialTemplateRequest-IdFieldNumber'></a>
### IdFieldNumber `constants`

##### Summary

Field number for the "id" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest'></a>
## DeleteItemRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Delete item request

<a name='T-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DeliveryMethodOneofCase'></a>
## DeliveryMethodOneofCase `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1.SendRequest

##### Summary

Enum of possible cases for the "delivery_method" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-FetchDataRequest'></a>
## FetchDataRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-FetchDataRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-FetchDataRequest-QueryFieldNumber'></a>
### QueryFieldNumber `constants`

##### Summary

Field number for the "query" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-FetchDataResponse'></a>
## FetchDataResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-FetchDataResponse-ResponseFieldNumber'></a>
### ResponseFieldNumber `constants`

##### Summary

Field number for the "response" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateRequest'></a>
## GetCredentialTemplateRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateRequest-IdFieldNumber'></a>
### IdFieldNumber `constants`

##### Summary

Field number for the "id" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateResponse'></a>
## GetCredentialTemplateResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-GetCredentialTemplateResponse-TemplateFieldNumber'></a>
### TemplateFieldNumber `constants`

##### Summary

Field number for the "template" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-GovernanceFramework'></a>
## GovernanceFramework `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-DescriptionFieldNumber'></a>
### DescriptionFieldNumber `constants`

##### Summary

Field number for the "description" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-TrustRegistryUriFieldNumber'></a>
### TrustRegistryUriFieldNumber `constants`

##### Summary

Field number for the "trust_registry_uri" field.

<a name='T-Trinsic-Services-Account-V1-InfoResponse'></a>
## InfoResponse `type`

##### Namespace

Trinsic.Services.Account.V1

<a name='F-Trinsic-Services-Account-V1-InfoResponse-DetailsFieldNumber'></a>
### DetailsFieldNumber `constants`

##### Summary

Field number for the "details" field.

<a name='P-Trinsic-Services-Account-V1-InfoResponse-Details'></a>
### Details `property`

##### Summary

The account details associated with
the calling request context

<a name='T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest'></a>
## InsertItemRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Insert item request

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemFieldNumber'></a>
### ItemFieldNumber `constants`

##### Summary

Field number for the "item" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemTypeFieldNumber'></a>
### ItemTypeFieldNumber `constants`

##### Summary

Field number for the "item_type" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-InsertItemResponse'></a>
## InsertItemResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Insert item response

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemIdFieldNumber'></a>
### ItemIdFieldNumber `constants`

##### Summary

Field number for the "item_id" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='P-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemId'></a>
### ItemId `property`

##### Summary

The item identifier of the inserted record

<a name='T-Trinsic-Services-Common-V1-InvitationStatusRequest'></a>
## InvitationStatusRequest `type`

##### Namespace

Trinsic.Services.Common.V1

##### Summary

Request details for the status of onboarding
an individual or organization.
The referenece_id passed is the response from the
\`Onboard\` method call

<a name='F-Trinsic-Services-Common-V1-InvitationStatusRequest-InvitationIdFieldNumber'></a>
### InvitationIdFieldNumber `constants`

##### Summary

Field number for the "invitation_id" field.

<a name='T-Trinsic-Services-Common-V1-InvitationStatusResponse'></a>
## InvitationStatusResponse `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusDetailsFieldNumber'></a>
### StatusDetailsFieldNumber `constants`

##### Summary

Field number for the "status_details" field.

<a name='F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-Common-V1-InviteRequest'></a>
## InviteRequest `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-InviteRequest-DescriptionFieldNumber'></a>
### DescriptionFieldNumber `constants`

##### Summary

Field number for the "description" field.

<a name='F-Trinsic-Services-Common-V1-InviteRequest-DidcommInvitationFieldNumber'></a>
### DidcommInvitationFieldNumber `constants`

##### Summary

Field number for the "didcomm_invitation" field.

<a name='F-Trinsic-Services-Common-V1-InviteRequest-EmailFieldNumber'></a>
### EmailFieldNumber `constants`

##### Summary

Field number for the "email" field.

<a name='F-Trinsic-Services-Common-V1-InviteRequest-ParticipantFieldNumber'></a>
### ParticipantFieldNumber `constants`

##### Summary

Field number for the "participant" field.

<a name='F-Trinsic-Services-Common-V1-InviteRequest-PhoneFieldNumber'></a>
### PhoneFieldNumber `constants`

##### Summary

Field number for the "phone" field.

<a name='T-Trinsic-Services-Common-V1-InviteResponse'></a>
## InviteResponse `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-InviteResponse-InvitationIdFieldNumber'></a>
### InvitationIdFieldNumber `constants`

##### Summary

Field number for the "invitation_id" field.

<a name='F-Trinsic-Services-Common-V1-InviteResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest'></a>
## IssueFromTemplateRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest-AttributesFieldNumber'></a>
### AttributesFieldNumber `constants`

##### Summary

Field number for the "attributes" field.

<a name='F-Trinsic-Services-VerifiableCredentials-V1-IssueFromTemplateRequest-TemplateIdFieldNumber'></a>
### TemplateIdFieldNumber `constants`

##### Summary

Field number for the "templateId" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-IssueRequest'></a>
## IssueRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-IssueRequest-DocumentFieldNumber'></a>
### DocumentFieldNumber `constants`

##### Summary

Field number for the "document" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-IssueResponse'></a>
## IssueResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-IssueResponse-DocumentFieldNumber'></a>
### DocumentFieldNumber `constants`

##### Summary

Field number for the "document" field.

<a name='T-Newtonsoft-Json-Linq-JTokenExtensions'></a>
## JTokenExtensions `type`

##### Namespace

Newtonsoft.Json.Linq

<a name='M-Newtonsoft-Json-Linq-JTokenExtensions-ToStruct-Newtonsoft-Json-Linq-JToken-'></a>
### ToStruct() `method`

##### Summary

Converts to struct.

##### Returns



##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-Common-V1-JsonPayload-JsonOneofCase'></a>
## JsonOneofCase `type`

##### Namespace

Trinsic.Services.Common.V1.JsonPayload

##### Summary

Enum of possible cases for the "json" oneof.

<a name='T-Trinsic-Services-Common-V1-JsonPayload'></a>
## JsonPayload `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-JsonPayload-JsonBytesFieldNumber'></a>
### JsonBytesFieldNumber `constants`

##### Summary

Field number for the "json_bytes" field.

<a name='F-Trinsic-Services-Common-V1-JsonPayload-JsonStringFieldNumber'></a>
### JsonStringFieldNumber `constants`

##### Summary

Field number for the "json_string" field.

<a name='F-Trinsic-Services-Common-V1-JsonPayload-JsonStructFieldNumber'></a>
### JsonStructFieldNumber `constants`

##### Summary

Field number for the "json_struct" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckIssuerStatusRequest-MemberOneofCase'></a>
## MemberOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.CheckIssuerStatusRequest

##### Summary

Enum of possible cases for the "member" oneof.

<a name='T-Trinsic-Services-TrustRegistry-V1-CheckVerifierStatusRequest-MemberOneofCase'></a>
## MemberOneofCase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.CheckVerifierStatusRequest

##### Summary

Enum of possible cases for the "member" oneof.

<a name='T-Trinsic-Services-Common-V1-Nonce'></a>
## Nonce `type`

##### Namespace

Trinsic.Services.Common.V1

##### Summary

Nonce used to generate an oberon proof

<a name='F-Trinsic-Services-Common-V1-Nonce-RequestHashFieldNumber'></a>
### RequestHashFieldNumber `constants`

##### Summary

Field number for the "request_hash" field.

<a name='F-Trinsic-Services-Common-V1-Nonce-TimestampFieldNumber'></a>
### TimestampFieldNumber `constants`

##### Summary

Field number for the "timestamp" field.

<a name='P-Trinsic-Services-Common-V1-Nonce-RequestHash'></a>
### RequestHash `property`

##### Summary

blake3256 hash of the request body

<a name='P-Trinsic-Services-Common-V1-Nonce-Timestamp'></a>
### Timestamp `property`

##### Summary

UTC unix millisecond timestamp the request was made

<a name='T-Google-Protobuf-ProtoMessageExtensions'></a>
## ProtoMessageExtensions `type`

##### Namespace

Google.Protobuf

<a name='M-Google-Protobuf-ProtoMessageExtensions-As``1-Google-Protobuf-IMessage-'></a>
### As\`\`1(message) `method`

##### Summary

Converts a message from one type into another. The two types must be compatible
and generated from the same .proto file, but may have different namespaces.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| message | [Google.Protobuf.IMessage](#T-Google-Protobuf-IMessage 'Google.Protobuf.IMessage') |  |

##### Generic Types

| Name | Description |
| ---- | ----------- |
| T |  |

<a name='T-Trinsic-Services-Common-V1-Provider'></a>
## Provider `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='P-Trinsic-Services-Common-V1-Provider-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-Common-V1-Provider-BindService-Trinsic-Services-Common-V1-Provider-ProviderBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.Common.V1.Provider.ProviderBase](#T-Trinsic-Services-Common-V1-Provider-ProviderBase 'Trinsic.Services.Common.V1.Provider.ProviderBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-Common-V1-Provider-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-Common-V1-Provider-ProviderBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.Common.V1.Provider.ProviderBase](#T-Trinsic-Services-Common-V1-Provider-ProviderBase 'Trinsic.Services.Common.V1.Provider.ProviderBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-Common-V1-Provider-ProviderBase'></a>
## ProviderBase `type`

##### Namespace

Trinsic.Services.Common.V1.Provider

##### Summary

Base class for server-side implementations of Provider

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderBase-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-ServerCallContext-'></a>
### InvitationStatus(request,context) `method`

##### Summary

rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
  rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderBase-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-ServerCallContext-'></a>
### Invite(request,context) `method`

##### Summary

rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='T-Trinsic-Services-Common-V1-Provider-ProviderClient'></a>
## ProviderClient `type`

##### Namespace

Trinsic.Services.Common.V1.Provider

##### Summary

Client for Provider

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for Provider

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for Provider that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InvitationStatus(request,headers,deadline,cancellationToken) `method`

##### Summary

rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
  rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-CallOptions-'></a>
### InvitationStatus(request,options) `method`

##### Summary

rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
  rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatusAsync-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InvitationStatusAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
  rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InvitationStatusAsync-Trinsic-Services-Common-V1-InvitationStatusRequest,Grpc-Core-CallOptions-'></a>
### InvitationStatusAsync(request,options) `method`

##### Summary

rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
  rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### Invite(request,headers,deadline,cancellationToken) `method`

##### Summary

rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-Invite-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-CallOptions-'></a>
### Invite(request,options) `method`

##### Summary

rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InviteAsync-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InviteAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-InviteAsync-Trinsic-Services-Common-V1-InviteRequest,Grpc-Core-CallOptions-'></a>
### InviteAsync(request,options) `method`

##### Summary

rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-Common-V1-Provider-ProviderClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-Common-V1-ProviderReflection'></a>
## ProviderReflection `type`

##### Namespace

Trinsic.Services.Common.V1

##### Summary

Holder for reflection information generated from services/provider/v1/provider.proto

<a name='P-Trinsic-Services-Common-V1-ProviderReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/provider/v1/provider.proto

<a name='T-Trinsic-ProviderService'></a>
## ProviderService `type`

##### Namespace

Trinsic

<a name='M-Trinsic-ProviderService-InvitationStatus-Trinsic-Services-Common-V1-InvitationStatusRequest-'></a>
### InvitationStatus(request) `method`

##### Summary

Gets the status of the onboarding invitation for a given invitation ID

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest') |  |

<a name='M-Trinsic-ProviderService-InviteParticipant-Trinsic-Services-Common-V1-InviteRequest-'></a>
### InviteParticipant(request) `method`

##### Summary

Initiates the participant onboarding flow using the input contact method

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.Common.V1.InviteRequest](#T-Trinsic-Services-Common-V1-InviteRequest 'Trinsic.Services.Common.V1.InviteRequest') |  |

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest'></a>
## RegisterIssuerRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-CredentialTypeUriFieldNumber'></a>
### CredentialTypeUriFieldNumber `constants`

##### Summary

Field number for the "credential_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-OptionsFieldNumber'></a>
### OptionsFieldNumber `constants`

##### Summary

Field number for the "options" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-ValidFromUtcFieldNumber'></a>
### ValidFromUtcFieldNumber `constants`

##### Summary

Field number for the "valid_from_utc" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-ValidUntilUtcFieldNumber'></a>
### ValidUntilUtcFieldNumber `constants`

##### Summary

Field number for the "valid_until_utc" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse'></a>
## RegisterIssuerResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse-ResponseDataFieldNumber'></a>
### ResponseDataFieldNumber `constants`

##### Summary

Field number for the "response_data" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterIssuerResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest'></a>
## RegisterVerifierRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-OptionsFieldNumber'></a>
### OptionsFieldNumber `constants`

##### Summary

Field number for the "options" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-PresentationTypeUriFieldNumber'></a>
### PresentationTypeUriFieldNumber `constants`

##### Summary

Field number for the "presentation_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-ValidFromUtcFieldNumber'></a>
### ValidFromUtcFieldNumber `constants`

##### Summary

Field number for the "valid_from_utc" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-ValidUntilUtcFieldNumber'></a>
### ValidUntilUtcFieldNumber `constants`

##### Summary

Field number for the "valid_until_utc" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse'></a>
## RegisterVerifierResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse-ResponseDataFieldNumber'></a>
### ResponseDataFieldNumber `constants`

##### Summary

Field number for the "response_data" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegisterVerifierResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RegistrationStatus'></a>
## RegistrationStatus `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Current'></a>
### Current `constants`

##### Summary

- the entity is currently authorized, as of time of the query.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Expired'></a>
### Expired `constants`

##### Summary

- entity rights have expired.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Revoked'></a>
### Revoked `constants`

##### Summary

- entity authority under specific EGF was terminated by the governing authority.

<a name='F-Trinsic-Services-TrustRegistry-V1-RegistrationStatus-Terminated'></a>
### Terminated `constants`

##### Summary

- entity has voluntarily ceased Issuer role under the specific EGF.

<a name='T-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkRequest'></a>
## RemoveFrameworkRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkRequest-GovernanceFrameworkFieldNumber'></a>
### GovernanceFrameworkFieldNumber `constants`

##### Summary

Field number for the "governance_framework" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkResponse'></a>
## RemoveFrameworkResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-RemoveFrameworkResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-Common-V1-RequestOptions'></a>
## RequestOptions `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-RequestOptions-ResponseJsonFormatFieldNumber'></a>
### ResponseJsonFormatFieldNumber `constants`

##### Summary

Field number for the "response_json_format" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest'></a>
## SearchCredentialTemplatesRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-QueryFieldNumber'></a>
### QueryFieldNumber `constants`

##### Summary

Field number for the "query" field.

<a name='P-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesRequest-Query'></a>
### Query `property`

##### Summary

SELECT * FROM c WHERE c.name = 'Diploma'

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse'></a>
## SearchCredentialTemplatesResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-CountFieldNumber'></a>
### CountFieldNumber `constants`

##### Summary

Field number for the "count" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-HasMoreFieldNumber'></a>
### HasMoreFieldNumber `constants`

##### Summary

Field number for the "has_more" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-SearchCredentialTemplatesResponse-TemplatesFieldNumber'></a>
### TemplatesFieldNumber `constants`

##### Summary

Field number for the "templates" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest'></a>
## SearchRegistryRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-OptionsFieldNumber'></a>
### OptionsFieldNumber `constants`

##### Summary

Field number for the "options" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-QueryFieldNumber'></a>
### QueryFieldNumber `constants`

##### Summary

Field number for the "query" field.

<a name='P-Trinsic-Services-TrustRegistry-V1-SearchRegistryRequest-Query'></a>
### Query `property`

##### Summary

SELECT c from c where c.type == 'GovernanceFramework'

<a name='T-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse'></a>
## SearchRegistryResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-CountFieldNumber'></a>
### CountFieldNumber `constants`

##### Summary

Field number for the "count" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-HasMoreFieldNumber'></a>
### HasMoreFieldNumber `constants`

##### Summary

Field number for the "has_more" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-SearchRegistryResponse-ItemsFieldNumber'></a>
### ItemsFieldNumber `constants`

##### Summary

Field number for the "items" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-SearchRequest'></a>
## SearchRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Search request object

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchRequest-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchRequest-OptionsFieldNumber'></a>
### OptionsFieldNumber `constants`

##### Summary

Field number for the "options" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchRequest-QueryFieldNumber'></a>
### QueryFieldNumber `constants`

##### Summary

Field number for the "query" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-SearchResponse'></a>
## SearchResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Search response object

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchResponse-ContinuationTokenFieldNumber'></a>
### ContinuationTokenFieldNumber `constants`

##### Summary

Field number for the "continuation_token" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchResponse-CountFieldNumber'></a>
### CountFieldNumber `constants`

##### Summary

Field number for the "count" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchResponse-HasMoreFieldNumber'></a>
### HasMoreFieldNumber `constants`

##### Summary

Field number for the "has_more" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-SearchResponse-ItemsFieldNumber'></a>
### ItemsFieldNumber `constants`

##### Summary

Field number for the "items" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-SendRequest'></a>
## SendRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DidcommInvitationFieldNumber'></a>
### DidcommInvitationFieldNumber `constants`

##### Summary

Field number for the "didcomm_invitation" field.

<a name='F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-DocumentFieldNumber'></a>
### DocumentFieldNumber `constants`

##### Summary

Field number for the "document" field.

<a name='F-Trinsic-Services-VerifiableCredentials-V1-SendRequest-EmailFieldNumber'></a>
### EmailFieldNumber `constants`

##### Summary

Field number for the "email" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-SendResponse'></a>
## SendResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-SendResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-Common-V1-ServerConfig'></a>
## ServerConfig `type`

##### Namespace

Trinsic.Services.Common.V1

<a name='F-Trinsic-Services-Common-V1-ServerConfig-EndpointFieldNumber'></a>
### EndpointFieldNumber `constants`

##### Summary

Field number for the "endpoint" field.

<a name='F-Trinsic-Services-Common-V1-ServerConfig-PortFieldNumber'></a>
### PortFieldNumber `constants`

##### Summary

Field number for the "port" field.

<a name='F-Trinsic-Services-Common-V1-ServerConfig-UseTlsFieldNumber'></a>
### UseTlsFieldNumber `constants`

##### Summary

Field number for the "use_tls" field.

<a name='P-Trinsic-Services-Common-V1-ServerConfig-Endpoint'></a>
### Endpoint `property`

##### Summary

service endpoint

<a name='P-Trinsic-Services-Common-V1-ServerConfig-Port'></a>
### Port `property`

##### Summary

service port

<a name='P-Trinsic-Services-Common-V1-ServerConfig-UseTls'></a>
### UseTls `property`

##### Summary

indicates if tls is used

<a name='T-Trinsic-ServiceBase'></a>
## ServiceBase `type`

##### Namespace

Trinsic

<a name='M-Trinsic-ServiceBase-Base64UrlEncode-System-Byte[]-'></a>
### Base64UrlEncode(data) `method`

##### Summary

Encoded a byte array to base64url string without padding

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| data | [System.Byte[]](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Byte[] 'System.Byte[]') |  |

<a name='M-Trinsic-ServiceBase-BuildMetadata-Google-Protobuf-IMessage-'></a>
### BuildMetadata() `method`

##### Summary

Create call metadata by setting the required authentication headers

##### Returns



##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-Account-V1-SignInRequest'></a>
## SignInRequest `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Request for creating new account

<a name='F-Trinsic-Services-Account-V1-SignInRequest-DetailsFieldNumber'></a>
### DetailsFieldNumber `constants`

##### Summary

Field number for the "details" field.

<a name='F-Trinsic-Services-Account-V1-SignInRequest-InvitationCodeFieldNumber'></a>
### InvitationCodeFieldNumber `constants`

##### Summary

Field number for the "invitation_code" field.

<a name='P-Trinsic-Services-Account-V1-SignInRequest-Details'></a>
### Details `property`

##### Summary

Account registration details

<a name='P-Trinsic-Services-Account-V1-SignInRequest-InvitationCode'></a>
### InvitationCode `property`

##### Summary

Invitation code associated with this registration
This field is optional.

<a name='T-Trinsic-Services-Account-V1-SignInResponse'></a>
## SignInResponse `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.

<a name='F-Trinsic-Services-Account-V1-SignInResponse-ConfirmationMethodFieldNumber'></a>
### ConfirmationMethodFieldNumber `constants`

##### Summary

Field number for the "confirmation_method" field.

<a name='F-Trinsic-Services-Account-V1-SignInResponse-ProfileFieldNumber'></a>
### ProfileFieldNumber `constants`

##### Summary

Field number for the "profile" field.

<a name='F-Trinsic-Services-Account-V1-SignInResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='P-Trinsic-Services-Account-V1-SignInResponse-ConfirmationMethod'></a>
### ConfirmationMethod `property`

##### Summary

Indicates if confirmation of account is required.
This settings is configured globally by the server administrator.

<a name='P-Trinsic-Services-Account-V1-SignInResponse-Profile'></a>
### Profile `property`

##### Summary

Contains authentication data for use with the current device.
This object must be stored in a secure place. It can also be
protected with a PIN, but this is optional.
See the docs at https://docs.trinsic.id for more information
on working with authentication data.

<a name='P-Trinsic-Services-Account-V1-SignInResponse-Status'></a>
### Status `property`

##### Summary

The status of the response

<a name='T-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status'></a>
## Status `type`

##### Namespace

Trinsic.Services.Common.V1.InvitationStatusResponse.Types

<a name='F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Completed'></a>
### Completed `constants`

##### Summary

The participant has been onboarded

<a name='F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Error'></a>
### Error `constants`

##### Summary

Onboarding resulted in error

<a name='F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-InvitationSent'></a>
### InvitationSent `constants`

##### Summary

The participant has been invited

<a name='T-Google-Protobuf-WellKnownTypes-StructExtensions'></a>
## StructExtensions `type`

##### Namespace

Google.Protobuf.WellKnownTypes

<a name='M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJObject-Google-Protobuf-WellKnownTypes-Struct-'></a>
### ToJObject(message) `method`

##### Summary

Converts to `JObject`.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| message | [Google.Protobuf.WellKnownTypes.Struct](#T-Google-Protobuf-WellKnownTypes-Struct 'Google.Protobuf.WellKnownTypes.Struct') | The message. |

<a name='M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJToken-Google-Protobuf-WellKnownTypes-Struct-'></a>
### ToJToken(message) `method`

##### Summary

Converts to jtoken.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| message | [Google.Protobuf.WellKnownTypes.Struct](#T-Google-Protobuf-WellKnownTypes-Struct 'Google.Protobuf.WellKnownTypes.Struct') | The message. |

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection'></a>
## TemplatesReflection `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

##### Summary

Holder for reflection information generated from services/verifiable-credentials/templates/v1/templates.proto

<a name='P-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/verifiable-credentials/templates/v1/templates.proto

<a name='T-Trinsic-Services-Account-V1-TokenProtection'></a>
## TokenProtection `type`

##### Namespace

Trinsic.Services.Account.V1

##### Summary

Token protection info

<a name='F-Trinsic-Services-Account-V1-TokenProtection-EnabledFieldNumber'></a>
### EnabledFieldNumber `constants`

##### Summary

Field number for the "enabled" field.

<a name='F-Trinsic-Services-Account-V1-TokenProtection-MethodFieldNumber'></a>
### MethodFieldNumber `constants`

##### Summary

Field number for the "method" field.

<a name='P-Trinsic-Services-Account-V1-TokenProtection-Enabled'></a>
### Enabled `property`

##### Summary

Indicates if token is protected using a PIN,
security code, HSM secret, etc.

<a name='P-Trinsic-Services-Account-V1-TokenProtection-Method'></a>
### Method `property`

##### Summary

The method used to protect the token

<a name='T-Trinsic-Services-TrustRegistry-V1-TrustRegistry'></a>
## TrustRegistry `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='P-Trinsic-Services-TrustRegistry-V1-TrustRegistry-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-BindService-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase](#T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase 'Trinsic.Services.TrustRegistry.V1.TrustRegistry.TrustRegistryBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase'></a>
## TrustRegistryBase `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.TrustRegistry

##### Summary

Base class for server-side implementations of TrustRegistry

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-ServerCallContext-'></a>
### AddFramework(request,context) `method`

##### Summary

Adds a trust registry defintion to the ecosystem

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-ServerCallContext-'></a>
### RegisterIssuer(request,context) `method`

##### Summary

Registers an authoritative issuer with a credential template

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-ServerCallContext-'></a>
### RegisterVerifier(request,context) `method`

##### Summary

Registers an authoritative verifier with a credential template

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-ServerCallContext-'></a>
### UnregisterIssuer(request,context) `method`

##### Summary

Removes an authoritative issuer with a credential template from the trust registry

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryBase-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-ServerCallContext-'></a>
### UnregisterVerifier(request,context) `method`

##### Summary

Removes an authoritative verifier with a presentation template from the trust registry

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='T-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient'></a>
## TrustRegistryClient `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1.TrustRegistry

##### Summary

Client for TrustRegistry

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for TrustRegistry

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for TrustRegistry that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### AddFramework(request,headers,deadline,cancellationToken) `method`

##### Summary

Adds a trust registry defintion to the ecosystem

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFramework-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-CallOptions-'></a>
### AddFramework(request,options) `method`

##### Summary

Adds a trust registry defintion to the ecosystem

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFrameworkAsync-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### AddFrameworkAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Adds a trust registry defintion to the ecosystem

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-AddFrameworkAsync-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest,Grpc-Core-CallOptions-'></a>
### AddFrameworkAsync(request,options) `method`

##### Summary

Adds a trust registry defintion to the ecosystem

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest](#T-Trinsic-Services-TrustRegistry-V1-AddFrameworkRequest 'Trinsic.Services.TrustRegistry.V1.AddFrameworkRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RegisterIssuer(request,headers,deadline,cancellationToken) `method`

##### Summary

Registers an authoritative issuer with a credential template

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuer-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-CallOptions-'></a>
### RegisterIssuer(request,options) `method`

##### Summary

Registers an authoritative issuer with a credential template

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RegisterIssuerAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Registers an authoritative issuer with a credential template

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest,Grpc-Core-CallOptions-'></a>
### RegisterIssuerAsync(request,options) `method`

##### Summary

Registers an authoritative issuer with a credential template

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.RegisterIssuerRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RegisterVerifier(request,headers,deadline,cancellationToken) `method`

##### Summary

Registers an authoritative verifier with a credential template

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifier-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-CallOptions-'></a>
### RegisterVerifier(request,options) `method`

##### Summary

Registers an authoritative verifier with a credential template

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### RegisterVerifierAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Registers an authoritative verifier with a credential template

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-RegisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest,Grpc-Core-CallOptions-'></a>
### RegisterVerifierAsync(request,options) `method`

##### Summary

Registers an authoritative verifier with a credential template

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-RegisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.RegisterVerifierRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### UnregisterIssuer(request,headers,deadline,cancellationToken) `method`

##### Summary

Removes an authoritative issuer with a credential template from the trust registry

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuer-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-CallOptions-'></a>
### UnregisterIssuer(request,options) `method`

##### Summary

Removes an authoritative issuer with a credential template from the trust registry

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### UnregisterIssuerAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Removes an authoritative issuer with a credential template from the trust registry

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterIssuerAsync-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest,Grpc-Core-CallOptions-'></a>
### UnregisterIssuerAsync(request,options) `method`

##### Summary

Removes an authoritative issuer with a credential template from the trust registry

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterIssuerRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### UnregisterVerifier(request,headers,deadline,cancellationToken) `method`

##### Summary

Removes an authoritative verifier with a presentation template from the trust registry

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifier-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-CallOptions-'></a>
### UnregisterVerifier(request,options) `method`

##### Summary

Removes an authoritative verifier with a presentation template from the trust registry

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### UnregisterVerifierAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Removes an authoritative verifier with a presentation template from the trust registry

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-TrustRegistry-V1-TrustRegistry-TrustRegistryClient-UnregisterVerifierAsync-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest,Grpc-Core-CallOptions-'></a>
### UnregisterVerifierAsync(request,options) `method`

##### Summary

Removes an authoritative verifier with a presentation template from the trust registry

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest](#T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest 'Trinsic.Services.TrustRegistry.V1.UnregisterVerifierRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='T-Trinsic-Services-TrustRegistry-V1-TrustRegistryReflection'></a>
## TrustRegistryReflection `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

##### Summary

Holder for reflection information generated from services/trust-registry/v1/trust-registry.proto

<a name='P-Trinsic-Services-TrustRegistry-V1-TrustRegistryReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/trust-registry/v1/trust-registry.proto

<a name='T-Trinsic-TrustRegistryService'></a>
## TrustRegistryService `type`

##### Namespace

Trinsic

<a name='M-Trinsic-TrustRegistryService-CheckIssuerStatus-System-String,System-String,System-String-'></a>
### CheckIssuerStatus(issuerDid,credentialType,governanceFramework) `method`

##### Summary

Checks the status of the issuer for a given credential type in the given governance framework

##### Returns

The status of the registration

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| issuerDid | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The issuer DID |
| credentialType | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |
| governanceFramework | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |

<a name='M-Trinsic-TrustRegistryService-CheckVerifierStatus-System-String,System-String,System-String-'></a>
### CheckVerifierStatus(verifierDid,presentationType,governanceFramework) `method`

##### Summary

Checks the status of the verifier for a given presentation type in the given governance framework

##### Returns

The status of the registration

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| verifierDid | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The verifier DID |
| presentationType | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The presentation type URI |
| governanceFramework | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The governance framework URI |

<a name='M-Trinsic-TrustRegistryService-RegisterGovernanceFramework-System-String,System-String-'></a>
### RegisterGovernanceFramework(governanceFramework,description) `method`

##### Summary

Register a Governance Framework with the Trust Registry.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| governanceFramework | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The governance framework URI |
| description | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The framework description |

##### Remarks

Calling this multiple times with the same URI will update the previously registered framework.

<a name='M-Trinsic-TrustRegistryService-RegisterIssuer-System-String,System-String,System-String,System-Nullable{System-DateTimeOffset},System-Nullable{System-DateTimeOffset}-'></a>
### RegisterIssuer(issuerDid,credentialType,governanceFramework,validFrom,validUntil) `method`

##### Summary

Register a DID as authoritative issuer with the configured governance framework.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| issuerDid | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The issuer DID |
| credentialType | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The full credential type URI |
| governanceFramework | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The governance framework URI |
| validFrom | [System.Nullable{System.DateTimeOffset}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTimeOffset}') | Valid from (UTC) |
| validUntil | [System.Nullable{System.DateTimeOffset}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTimeOffset}') | Valid until (UTC) |

<a name='M-Trinsic-TrustRegistryService-RegisterVerifier-System-String,System-String,System-String,System-Nullable{System-DateTimeOffset},System-Nullable{System-DateTimeOffset}-'></a>
### RegisterVerifier(verifierDid,presentationType,governanceFramework,validFrom,validUntil) `method`

##### Summary

Register a DID as authoritative verifier with the configured governance framework.

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| verifierDid | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The verifier DID |
| presentationType | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The full presentation type URI |
| governanceFramework | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The governance framework URI |
| validFrom | [System.Nullable{System.DateTimeOffset}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTimeOffset}') | Valid from (UTC) |
| validUntil | [System.Nullable{System.DateTimeOffset}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTimeOffset}') | Valid until (UTC) |

<a name='M-Trinsic-TrustRegistryService-SearchRegistry-System-String-'></a>
### SearchRegistry(query) `method`

##### Summary

Search the trust registry

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| query | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') |  |

<a name='T-Trinsic-Services-Common-V1-InvitationStatusResponse-Types'></a>
## Types `type`

##### Namespace

Trinsic.Services.Common.V1.InvitationStatusResponse

##### Summary

Container for nested types declared in the InvitationStatusResponse message type.

<a name='T-Trinsic-Services-Common-V1-InviteRequest-Types'></a>
## Types `type`

##### Namespace

Trinsic.Services.Common.V1.InviteRequest

##### Summary

Container for nested types declared in the InviteRequest message type.

<a name='T-Trinsic-Services-UniversalWallet-V1-UniversalWalletReflection'></a>
## UniversalWalletReflection `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Holder for reflection information generated from services/universal-wallet/v1/universal-wallet.proto

<a name='P-Trinsic-Services-UniversalWallet-V1-UniversalWalletReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/universal-wallet/v1/universal-wallet.proto

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest'></a>
## UnregisterIssuerRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-CredentialTypeUriFieldNumber'></a>
### CredentialTypeUriFieldNumber `constants`

##### Summary

Field number for the "credential_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerResponse'></a>
## UnregisterIssuerResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterIssuerResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest'></a>
## UnregisterVerifierRequest `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-DidUriFieldNumber'></a>
### DidUriFieldNumber `constants`

##### Summary

Field number for the "did_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-GovernanceFrameworkUriFieldNumber'></a>
### GovernanceFrameworkUriFieldNumber `constants`

##### Summary

Field number for the "governance_framework_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-PresentationTypeUriFieldNumber'></a>
### PresentationTypeUriFieldNumber `constants`

##### Summary

Field number for the "presentation_type_uri" field.

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierRequest-X509CertFieldNumber'></a>
### X509CertFieldNumber `constants`

##### Summary

Field number for the "x509_cert" field.

<a name='T-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierResponse'></a>
## UnregisterVerifierResponse `type`

##### Namespace

Trinsic.Services.TrustRegistry.V1

<a name='F-Trinsic-Services-TrustRegistry-V1-UnregisterVerifierResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest'></a>
## UpdateCredentialTemplateRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-IdFieldNumber'></a>
### IdFieldNumber `constants`

##### Summary

Field number for the "id" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-NameFieldNumber'></a>
### NameFieldNumber `constants`

##### Summary

Field number for the "name" field.

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateRequest-SchemaFieldNumber'></a>
### SchemaFieldNumber `constants`

##### Summary

Field number for the "schema" field.

<a name='T-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateResponse'></a>
## UpdateCredentialTemplateResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.Templates.V1

<a name='F-Trinsic-Services-VerifiableCredentials-Templates-V1-UpdateCredentialTemplateResponse-TemplateFieldNumber'></a>
### TemplateFieldNumber `constants`

##### Summary

Field number for the "template" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-VerifiableCredentialsReflection'></a>
## VerifiableCredentialsReflection `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

##### Summary

Holder for reflection information generated from services/verifiable-credentials/v1/verifiable-credentials.proto

<a name='P-Trinsic-Services-VerifiableCredentials-V1-VerifiableCredentialsReflection-Descriptor'></a>
### Descriptor `property`

##### Summary

File descriptor for services/verifiable-credentials/v1/verifiable-credentials.proto

<a name='T-Trinsic-Services-VerifiableCredentials-V1-VerifyProofRequest'></a>
## VerifyProofRequest `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

##### Summary

Verify Proof

<a name='F-Trinsic-Services-VerifiableCredentials-V1-VerifyProofRequest-ProofDocumentFieldNumber'></a>
### ProofDocumentFieldNumber `constants`

##### Summary

Field number for the "proof_document" field.

<a name='T-Trinsic-Services-VerifiableCredentials-V1-VerifyProofResponse'></a>
## VerifyProofResponse `type`

##### Namespace

Trinsic.Services.VerifiableCredentials.V1

<a name='F-Trinsic-Services-VerifiableCredentials-V1-VerifyProofResponse-ValidFieldNumber'></a>
### ValidFieldNumber `constants`

##### Summary

Field number for the "valid" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-WalletService'></a>
## WalletService `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='T-Trinsic-WalletService'></a>
## WalletService `type`

##### Namespace

Trinsic

<a name='P-Trinsic-Services-UniversalWallet-V1-WalletService-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-BindService-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase](#T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase](#T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase 'Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-WalletService-InsertItem-Newtonsoft-Json-Linq-JObject-'></a>
### InsertItem(item) `method`

##### Summary

Insert an item into the personal wallet

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| item | [Newtonsoft.Json.Linq.JObject](#T-Newtonsoft-Json-Linq-JObject 'Newtonsoft.Json.Linq.JObject') |  |

<a name='M-Trinsic-WalletService-Search-System-String-'></a>
### Search(query) `method`

##### Summary

Search the wallet for records matching the specified criteria

##### Returns



##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| query | [System.String](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.String 'System.String') | The SQL query |

##### Remarks

See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select

<a name='T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase'></a>
## WalletServiceBase `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.WalletService

##### Summary

Base class for server-side implementations of WalletService

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-ServerCallContext-'></a>
### Deleteitem(request,context) `method`

##### Summary

Delete an item from the wallet permanently

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-ServerCallContext-'></a>
### InsertItem(request,context) `method`

##### Summary

Insert an item into the wallet

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceBase-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-ServerCallContext-'></a>
### Search(request,context) `method`

##### Summary

Search the wallet using a SQL-like syntax

##### Returns

The response to send back to the client (wrapped by a task).

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest') | The request received from the client. |
| context | [Grpc.Core.ServerCallContext](#T-Grpc-Core-ServerCallContext 'Grpc.Core.ServerCallContext') | The context of the server-side call handler being invoked. |

<a name='T-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient'></a>
## WalletServiceClient `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.WalletService

##### Summary

Client for WalletService

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for WalletService

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for WalletService that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### Deleteitem(request,headers,deadline,cancellationToken) `method`

##### Summary

Delete an item from the wallet permanently

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Deleteitem-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-CallOptions-'></a>
### Deleteitem(request,options) `method`

##### Summary

Delete an item from the wallet permanently

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-DeleteitemAsync-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### DeleteitemAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Delete an item from the wallet permanently

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-DeleteitemAsync-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest,Grpc-Core-CallOptions-'></a>
### DeleteitemAsync(request,options) `method`

##### Summary

Delete an item from the wallet permanently

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.DeleteItemRequest](#T-Trinsic-Services-UniversalWallet-V1-DeleteItemRequest 'Trinsic.Services.UniversalWallet.V1.DeleteItemRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InsertItem(request,headers,deadline,cancellationToken) `method`

##### Summary

Insert an item into the wallet

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItem-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-CallOptions-'></a>
### InsertItem(request,options) `method`

##### Summary

Insert an item into the wallet

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItemAsync-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### InsertItemAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Insert an item into the wallet

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-InsertItemAsync-Trinsic-Services-UniversalWallet-V1-InsertItemRequest,Grpc-Core-CallOptions-'></a>
### InsertItemAsync(request,options) `method`

##### Summary

Insert an item into the wallet

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### Search(request,headers,deadline,cancellationToken) `method`

##### Summary

Search the wallet using a SQL-like syntax

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-Search-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-CallOptions-'></a>
### Search(request,options) `method`

##### Summary

Search the wallet using a SQL-like syntax

##### Returns

The response received from the server.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-SearchAsync-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-Metadata,System-Nullable{System-DateTime},System-Threading-CancellationToken-'></a>
### SearchAsync(request,headers,deadline,cancellationToken) `method`

##### Summary

Search the wallet using a SQL-like syntax

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest') | The request to send to the server. |
| headers | [Grpc.Core.Metadata](#T-Grpc-Core-Metadata 'Grpc.Core.Metadata') | The initial metadata to send with the call. This parameter is optional. |
| deadline | [System.Nullable{System.DateTime}](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Nullable 'System.Nullable{System.DateTime}') | An optional deadline for the call. The call will be cancelled if deadline is hit. |
| cancellationToken | [System.Threading.CancellationToken](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k:System.Threading.CancellationToken 'System.Threading.CancellationToken') | An optional token for canceling the call. |

<a name='M-Trinsic-Services-UniversalWallet-V1-WalletService-WalletServiceClient-SearchAsync-Trinsic-Services-UniversalWallet-V1-SearchRequest,Grpc-Core-CallOptions-'></a>
### SearchAsync(request,options) `method`

##### Summary

Search the wallet using a SQL-like syntax

##### Returns

The call object.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| request | [Trinsic.Services.UniversalWallet.V1.SearchRequest](#T-Trinsic-Services-UniversalWallet-V1-SearchRequest 'Trinsic.Services.UniversalWallet.V1.SearchRequest') | The request to send to the server. |
| options | [Grpc.Core.CallOptions](#T-Grpc-Core-CallOptions 'Grpc.Core.CallOptions') | The options for the call. |
