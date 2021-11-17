<a name='assembly'></a>
# Trinsic

## Contents

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
- [ConnectRequest](#T-Trinsic-Services-UniversalWallet-V1-ConnectRequest 'Trinsic.Services.UniversalWallet.V1.ConnectRequest')
  - [EmailFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-ConnectRequest-EmailFieldNumber 'Trinsic.Services.UniversalWallet.V1.ConnectRequest.EmailFieldNumber')
  - [PhoneFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-ConnectRequest-PhoneFieldNumber 'Trinsic.Services.UniversalWallet.V1.ConnectRequest.PhoneFieldNumber')
- [ConnectResponse](#T-Trinsic-Services-UniversalWallet-V1-ConnectResponse 'Trinsic.Services.UniversalWallet.V1.ConnectResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-ConnectResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.ConnectResponse.StatusFieldNumber')
- [ContactMethodOneofCase](#T-Trinsic-Services-Common-V1-InviteRequest-ContactMethodOneofCase 'Trinsic.Services.Common.V1.InviteRequest.ContactMethodOneofCase')
- [ContactMethodOneofCase](#T-Trinsic-Services-UniversalWallet-V1-ConnectRequest-ContactMethodOneofCase 'Trinsic.Services.UniversalWallet.V1.ConnectRequest.ContactMethodOneofCase')
- [ContactMethodOneofCase](#T-Trinsic-Services-UniversalWallet-V1-InvitationToken-ContactMethodOneofCase 'Trinsic.Services.UniversalWallet.V1.InvitationToken.ContactMethodOneofCase')
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
- [CreateWalletRequest](#T-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest 'Trinsic.Services.UniversalWallet.V1.CreateWalletRequest')
  - [DescriptionFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-DescriptionFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletRequest.DescriptionFieldNumber')
  - [SecurityCodeFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-SecurityCodeFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletRequest.SecurityCodeFieldNumber')
  - [Description](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-Description 'Trinsic.Services.UniversalWallet.V1.CreateWalletRequest.Description')
  - [SecurityCode](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-SecurityCode 'Trinsic.Services.UniversalWallet.V1.CreateWalletRequest.SecurityCode')
- [CreateWalletResponse](#T-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse')
  - [AuthDataFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthDataFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.AuthDataFieldNumber')
  - [AuthTokenFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthTokenFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.AuthTokenFieldNumber')
  - [IsProtectedFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-IsProtectedFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.IsProtectedFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.StatusFieldNumber')
  - [AuthData](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthData 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.AuthData')
  - [AuthToken](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthToken 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.AuthToken')
  - [IsProtected](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-IsProtected 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.IsProtected')
  - [Status](#P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-Status 'Trinsic.Services.UniversalWallet.V1.CreateWalletResponse.Status')
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
- [GetProviderConfigurationRequest](#T-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationRequest 'Trinsic.Services.UniversalWallet.V1.GetProviderConfigurationRequest')
  - [RequestOptionsFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationRequest-RequestOptionsFieldNumber 'Trinsic.Services.UniversalWallet.V1.GetProviderConfigurationRequest.RequestOptionsFieldNumber')
- [GetProviderConfigurationResponse](#T-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse 'Trinsic.Services.UniversalWallet.V1.GetProviderConfigurationResponse')
  - [DidDocumentFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse-DidDocumentFieldNumber 'Trinsic.Services.UniversalWallet.V1.GetProviderConfigurationResponse.DidDocumentFieldNumber')
  - [KeyAgreementKeyIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse-KeyAgreementKeyIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.GetProviderConfigurationResponse.KeyAgreementKeyIdFieldNumber')
- [GovernanceFramework](#T-Trinsic-Services-TrustRegistry-V1-GovernanceFramework 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework')
  - [DescriptionFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-DescriptionFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.DescriptionFieldNumber')
  - [GovernanceFrameworkUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-GovernanceFrameworkUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.GovernanceFrameworkUriFieldNumber')
  - [TrustRegistryUriFieldNumber](#F-Trinsic-Services-TrustRegistry-V1-GovernanceFramework-TrustRegistryUriFieldNumber 'Trinsic.Services.TrustRegistry.V1.GovernanceFramework.TrustRegistryUriFieldNumber')
- [GrantAccessRequest](#T-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest 'Trinsic.Services.UniversalWallet.V1.GrantAccessRequest')
  - [DidFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest-DidFieldNumber 'Trinsic.Services.UniversalWallet.V1.GrantAccessRequest.DidFieldNumber')
  - [WalletIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest-WalletIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.GrantAccessRequest.WalletIdFieldNumber')
- [GrantAccessResponse](#T-Trinsic-Services-UniversalWallet-V1-GrantAccessResponse 'Trinsic.Services.UniversalWallet.V1.GrantAccessResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-GrantAccessResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.GrantAccessResponse.StatusFieldNumber')
- [InsertItemRequest](#T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest')
  - [ItemFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest.ItemFieldNumber')
  - [ItemTypeFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemRequest-ItemTypeFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemRequest.ItemTypeFieldNumber')
- [InsertItemResponse](#T-Trinsic-Services-UniversalWallet-V1-InsertItemResponse 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse')
  - [ItemIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse.ItemIdFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.InsertItemResponse.StatusFieldNumber')
- [InvitationStatusRequest](#T-Trinsic-Services-Common-V1-InvitationStatusRequest 'Trinsic.Services.Common.V1.InvitationStatusRequest')
  - [InvitationIdFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusRequest-InvitationIdFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusRequest.InvitationIdFieldNumber')
- [InvitationStatusResponse](#T-Trinsic-Services-Common-V1-InvitationStatusResponse 'Trinsic.Services.Common.V1.InvitationStatusResponse')
  - [StatusDetailsFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusDetailsFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusResponse.StatusDetailsFieldNumber')
  - [StatusFieldNumber](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-StatusFieldNumber 'Trinsic.Services.Common.V1.InvitationStatusResponse.StatusFieldNumber')
- [InvitationToken](#T-Trinsic-Services-UniversalWallet-V1-InvitationToken 'Trinsic.Services.UniversalWallet.V1.InvitationToken')
  - [EmailFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InvitationToken-EmailFieldNumber 'Trinsic.Services.UniversalWallet.V1.InvitationToken.EmailFieldNumber')
  - [PhoneFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InvitationToken-PhoneFieldNumber 'Trinsic.Services.UniversalWallet.V1.InvitationToken.PhoneFieldNumber')
  - [SecurityCodeFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InvitationToken-SecurityCodeFieldNumber 'Trinsic.Services.UniversalWallet.V1.InvitationToken.SecurityCodeFieldNumber')
  - [WalletIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-InvitationToken-WalletIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.InvitationToken.WalletIdFieldNumber')
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
- [RevokeAccessRequest](#T-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest 'Trinsic.Services.UniversalWallet.V1.RevokeAccessRequest')
  - [DidFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest-DidFieldNumber 'Trinsic.Services.UniversalWallet.V1.RevokeAccessRequest.DidFieldNumber')
  - [WalletIdFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest-WalletIdFieldNumber 'Trinsic.Services.UniversalWallet.V1.RevokeAccessRequest.WalletIdFieldNumber')
- [RevokeAccessResponse](#T-Trinsic-Services-UniversalWallet-V1-RevokeAccessResponse 'Trinsic.Services.UniversalWallet.V1.RevokeAccessResponse')
  - [StatusFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-RevokeAccessResponse-StatusFieldNumber 'Trinsic.Services.UniversalWallet.V1.RevokeAccessResponse.StatusFieldNumber')
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
- [Status](#T-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status')
  - [Completed](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Completed 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.Completed')
  - [Error](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-Error 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.Error')
  - [InvitationSent](#F-Trinsic-Services-Common-V1-InvitationStatusResponse-Types-Status-InvitationSent 'Trinsic.Services.Common.V1.InvitationStatusResponse.Types.Status.InvitationSent')
- [StructExtensions](#T-Google-Protobuf-WellKnownTypes-StructExtensions 'Google.Protobuf.WellKnownTypes.StructExtensions')
  - [ToJObject(message)](#M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJObject-Google-Protobuf-WellKnownTypes-Struct- 'Google.Protobuf.WellKnownTypes.StructExtensions.ToJObject(Google.Protobuf.WellKnownTypes.Struct)')
  - [ToJToken(message)](#M-Google-Protobuf-WellKnownTypes-StructExtensions-ToJToken-Google-Protobuf-WellKnownTypes-Struct- 'Google.Protobuf.WellKnownTypes.StructExtensions.ToJToken(Google.Protobuf.WellKnownTypes.Struct)')
- [TemplatesReflection](#T-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplatesReflection')
  - [Descriptor](#P-Trinsic-Services-VerifiableCredentials-Templates-V1-TemplatesReflection-Descriptor 'Trinsic.Services.VerifiableCredentials.Templates.V1.TemplatesReflection.Descriptor')
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
- [Wallet](#T-Trinsic-Services-UniversalWallet-V1-Wallet 'Trinsic.Services.UniversalWallet.V1.Wallet')
  - [Descriptor](#P-Trinsic-Services-UniversalWallet-V1-Wallet-Descriptor 'Trinsic.Services.UniversalWallet.V1.Wallet.Descriptor')
  - [BindService(serviceImpl)](#M-Trinsic-Services-UniversalWallet-V1-Wallet-BindService-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase- 'Trinsic.Services.UniversalWallet.V1.Wallet.BindService(Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase)')
  - [BindService(serviceBinder,serviceImpl)](#M-Trinsic-Services-UniversalWallet-V1-Wallet-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase- 'Trinsic.Services.UniversalWallet.V1.Wallet.BindService(Grpc.Core.ServiceBinderBase,Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase)')
- [WalletBase](#T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase')
- [WalletClient](#T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient')
  - [#ctor(channel)](#M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-ChannelBase- 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient.#ctor(Grpc.Core.ChannelBase)')
  - [#ctor(callInvoker)](#M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-CallInvoker- 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient.#ctor(Grpc.Core.CallInvoker)')
  - [#ctor()](#M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient.#ctor')
  - [#ctor(configuration)](#M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient.#ctor(Grpc.Core.ClientBase.ClientBaseConfiguration)')
  - [NewInstance()](#M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration- 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletClient.NewInstance(Grpc.Core.ClientBase.ClientBaseConfiguration)')
- [WalletProfile](#T-Trinsic-Services-UniversalWallet-V1-WalletProfile 'Trinsic.Services.UniversalWallet.V1.WalletProfile')
  - [AuthDataFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-WalletProfile-AuthDataFieldNumber 'Trinsic.Services.UniversalWallet.V1.WalletProfile.AuthDataFieldNumber')
  - [AuthTokenFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-WalletProfile-AuthTokenFieldNumber 'Trinsic.Services.UniversalWallet.V1.WalletProfile.AuthTokenFieldNumber')
  - [ConfigFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-WalletProfile-ConfigFieldNumber 'Trinsic.Services.UniversalWallet.V1.WalletProfile.ConfigFieldNumber')
  - [IsProtectedFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-WalletProfile-IsProtectedFieldNumber 'Trinsic.Services.UniversalWallet.V1.WalletProfile.IsProtectedFieldNumber')
  - [NameFieldNumber](#F-Trinsic-Services-UniversalWallet-V1-WalletProfile-NameFieldNumber 'Trinsic.Services.UniversalWallet.V1.WalletProfile.NameFieldNumber')
- [WalletService](#T-Trinsic-WalletService 'Trinsic.WalletService')
  - [InsertItem(item)](#M-Trinsic-WalletService-InsertItem-Newtonsoft-Json-Linq-JObject- 'Trinsic.WalletService.InsertItem(Newtonsoft.Json.Linq.JObject)')
  - [Search(query)](#M-Trinsic-WalletService-Search-System-String- 'Trinsic.WalletService.Search(System.String)')

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

<a name='T-Trinsic-Services-UniversalWallet-V1-ConnectRequest'></a>
## ConnectRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-ConnectRequest-EmailFieldNumber'></a>
### EmailFieldNumber `constants`

##### Summary

Field number for the "email" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-ConnectRequest-PhoneFieldNumber'></a>
### PhoneFieldNumber `constants`

##### Summary

Field number for the "phone" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-ConnectResponse'></a>
## ConnectResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-ConnectResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-Common-V1-InviteRequest-ContactMethodOneofCase'></a>
## ContactMethodOneofCase `type`

##### Namespace

Trinsic.Services.Common.V1.InviteRequest

##### Summary

Enum of possible cases for the "contact_method" oneof.

<a name='T-Trinsic-Services-UniversalWallet-V1-ConnectRequest-ContactMethodOneofCase'></a>
## ContactMethodOneofCase `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.ConnectRequest

##### Summary

Enum of possible cases for the "contact_method" oneof.

<a name='T-Trinsic-Services-UniversalWallet-V1-InvitationToken-ContactMethodOneofCase'></a>
## ContactMethodOneofCase `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.InvitationToken

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

<a name='T-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest'></a>
## CreateWalletRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-DescriptionFieldNumber'></a>
### DescriptionFieldNumber `constants`

##### Summary

Field number for the "description" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-SecurityCodeFieldNumber'></a>
### SecurityCodeFieldNumber `constants`

##### Summary

Field number for the "security_code" field.

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-Description'></a>
### Description `property`

##### Summary

optional description of the wallet

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletRequest-SecurityCode'></a>
### SecurityCode `property`

##### Summary

(Optional) Supply an invitation id to associate this
caller device to an existing cloud wallet.

<a name='T-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse'></a>
## CreateWalletResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthDataFieldNumber'></a>
### AuthDataFieldNumber `constants`

##### Summary

Field number for the "auth_data" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthTokenFieldNumber'></a>
### AuthTokenFieldNumber `constants`

##### Summary

Field number for the "auth_token" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-IsProtectedFieldNumber'></a>
### IsProtectedFieldNumber `constants`

##### Summary

Field number for the "is_protected" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthData'></a>
### AuthData `property`

##### Summary

authentication data containing info about the cloud
wallet and device the user is connecting from

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-AuthToken'></a>
### AuthToken `property`

##### Summary

authoritative token issued by the server that is
required to prove knowledge during authentication

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-IsProtected'></a>
### IsProtected `property`

##### Summary

indicates if the token issued protected with a
security code, usually delivered by email or sms

<a name='P-Trinsic-Services-UniversalWallet-V1-CreateWalletResponse-Status'></a>
### Status `property`

##### Summary

the status code of the response

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

<a name='T-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationRequest'></a>
## GetProviderConfigurationRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationRequest-RequestOptionsFieldNumber'></a>
### RequestOptionsFieldNumber `constants`

##### Summary

Field number for the "request_options" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse'></a>
## GetProviderConfigurationResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse-DidDocumentFieldNumber'></a>
### DidDocumentFieldNumber `constants`

##### Summary

Field number for the "did_document" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-GetProviderConfigurationResponse-KeyAgreementKeyIdFieldNumber'></a>
### KeyAgreementKeyIdFieldNumber `constants`

##### Summary

Field number for the "key_agreement_key_id" field.

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

<a name='T-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest'></a>
## GrantAccessRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest-DidFieldNumber'></a>
### DidFieldNumber `constants`

##### Summary

Field number for the "did" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-GrantAccessRequest-WalletIdFieldNumber'></a>
### WalletIdFieldNumber `constants`

##### Summary

Field number for the "wallet_id" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-GrantAccessResponse'></a>
## GrantAccessResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-GrantAccessResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-InsertItemRequest'></a>
## InsertItemRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

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

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-ItemIdFieldNumber'></a>
### ItemIdFieldNumber `constants`

##### Summary

Field number for the "item_id" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InsertItemResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

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

<a name='T-Trinsic-Services-UniversalWallet-V1-InvitationToken'></a>
## InvitationToken `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-InvitationToken-EmailFieldNumber'></a>
### EmailFieldNumber `constants`

##### Summary

Field number for the "email" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InvitationToken-PhoneFieldNumber'></a>
### PhoneFieldNumber `constants`

##### Summary

Field number for the "phone" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InvitationToken-SecurityCodeFieldNumber'></a>
### SecurityCodeFieldNumber `constants`

##### Summary

Field number for the "security_code" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-InvitationToken-WalletIdFieldNumber'></a>
### WalletIdFieldNumber `constants`

##### Summary

Field number for the "wallet_id" field.

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

Nonce used to generate an oberon prrof

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

Initates the participant onboarding flow using the input contact method

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

<a name='T-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest'></a>
## RevokeAccessRequest `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest-DidFieldNumber'></a>
### DidFieldNumber `constants`

##### Summary

Field number for the "did" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-RevokeAccessRequest-WalletIdFieldNumber'></a>
### WalletIdFieldNumber `constants`

##### Summary

Field number for the "wallet_id" field.

<a name='T-Trinsic-Services-UniversalWallet-V1-RevokeAccessResponse'></a>
## RevokeAccessResponse `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='F-Trinsic-Services-UniversalWallet-V1-RevokeAccessResponse-StatusFieldNumber'></a>
### StatusFieldNumber `constants`

##### Summary

Field number for the "status" field.

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

<a name='T-Trinsic-Services-UniversalWallet-V1-Wallet'></a>
## Wallet `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

<a name='P-Trinsic-Services-UniversalWallet-V1-Wallet-Descriptor'></a>
### Descriptor `property`

##### Summary

Service descriptor

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-BindService-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase-'></a>
### BindService(serviceImpl) `method`

##### Summary

Creates service definition that can be registered with a server

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceImpl | [Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase](#T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase') | An object implementing the server-side handling logic. |

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-BindService-Grpc-Core-ServiceBinderBase,Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase-'></a>
### BindService(serviceBinder,serviceImpl) `method`

##### Summary

Register service method with a service binder with or without implementation. Useful when customizing the  service binding logic.
Note: this method is part of an experimental API that can change or be removed without any prior notice.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| serviceBinder | [Grpc.Core.ServiceBinderBase](#T-Grpc-Core-ServiceBinderBase 'Grpc.Core.ServiceBinderBase') | Service methods will be bound by calling `AddMethod` on this object. |
| serviceImpl | [Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase](#T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase 'Trinsic.Services.UniversalWallet.V1.Wallet.WalletBase') | An object implementing the server-side handling logic. |

<a name='T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletBase'></a>
## WalletBase `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.Wallet

##### Summary

Base class for server-side implementations of Wallet

<a name='T-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient'></a>
## WalletClient `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1.Wallet

##### Summary

Client for Wallet

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-ChannelBase-'></a>
### #ctor(channel) `constructor`

##### Summary

Creates a new client for Wallet

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| channel | [Grpc.Core.ChannelBase](#T-Grpc-Core-ChannelBase 'Grpc.Core.ChannelBase') | The channel to use to make remote calls. |

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-CallInvoker-'></a>
### #ctor(callInvoker) `constructor`

##### Summary

Creates a new client for Wallet that uses a custom `CallInvoker`.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| callInvoker | [Grpc.Core.CallInvoker](#T-Grpc-Core-CallInvoker 'Grpc.Core.CallInvoker') | The callInvoker to use to make remote calls. |

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor'></a>
### #ctor() `constructor`

##### Summary

Protected parameterless constructor to allow creation of test doubles.

##### Parameters

This constructor has no parameters.

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-#ctor-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### #ctor(configuration) `constructor`

##### Summary

Protected constructor to allow creation of configured clients.

##### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| configuration | [Grpc.Core.ClientBase.ClientBaseConfiguration](#T-Grpc-Core-ClientBase-ClientBaseConfiguration 'Grpc.Core.ClientBase.ClientBaseConfiguration') | The client configuration. |

<a name='M-Trinsic-Services-UniversalWallet-V1-Wallet-WalletClient-NewInstance-Grpc-Core-ClientBase-ClientBaseConfiguration-'></a>
### NewInstance() `method`

##### Summary

Creates a new instance of client from given `ClientBaseConfiguration`.

##### Parameters

This method has no parameters.

<a name='T-Trinsic-Services-UniversalWallet-V1-WalletProfile'></a>
## WalletProfile `type`

##### Namespace

Trinsic.Services.UniversalWallet.V1

##### Summary

Stores profile data for accessing a wallet.
This result should be stored somewhere safe,
as it contains private key information.

<a name='F-Trinsic-Services-UniversalWallet-V1-WalletProfile-AuthDataFieldNumber'></a>
### AuthDataFieldNumber `constants`

##### Summary

Field number for the "auth_data" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-WalletProfile-AuthTokenFieldNumber'></a>
### AuthTokenFieldNumber `constants`

##### Summary

Field number for the "auth_token" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-WalletProfile-ConfigFieldNumber'></a>
### ConfigFieldNumber `constants`

##### Summary

Field number for the "config" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-WalletProfile-IsProtectedFieldNumber'></a>
### IsProtectedFieldNumber `constants`

##### Summary

Field number for the "is_protected" field.

<a name='F-Trinsic-Services-UniversalWallet-V1-WalletProfile-NameFieldNumber'></a>
### NameFieldNumber `constants`

##### Summary

Field number for the "name" field.

<a name='T-Trinsic-WalletService'></a>
## WalletService `type`

##### Namespace

Trinsic

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
