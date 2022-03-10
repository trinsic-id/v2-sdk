# services

## Functions

### func [CreateChannel](/services.go#L78)

`func CreateChannel(serviceAddress string, blockOnOpen bool) (*grpc.ClientConn, error)`

### func [CreateChannelUrlFromConfig](/services.go#L67)

`func CreateChannelUrlFromConfig(config *sdk.ServerConfig) string`

### func [TrinsicDevelopmentConfig](/services.go#L33)

`func TrinsicDevelopmentConfig() *sdk.ServerConfig`

### func [TrinsicProductionConfig](/services.go#L25)

`func TrinsicProductionConfig() *sdk.ServerConfig`

### func [TrinsicStagingConfig](/services.go#L41)

`func TrinsicStagingConfig() *sdk.ServerConfig`

### func [TrinsicTestConfig](/services.go#L49)

`func TrinsicTestConfig() *sdk.ServerConfig`

## Types

### type [AccountBase](/account_service.go#L33)

`type AccountBase struct { ... }`

#### func (*AccountBase) [GetInfo](/account_service.go#L95)

`func (a *AccountBase) GetInfo(userContext context.Context) (*sdk.InfoResponse, error)`

#### func (*AccountBase) [ListDevices](/account_service.go#L108)

`func (a *AccountBase) ListDevices(userContext context.Context, request *sdk.ListDevicesRequest) (*sdk.ListDevicesResponse, error)`

#### func (*AccountBase) [Protect](/account_service.go#L74)

`func (a *AccountBase) Protect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)`

#### func (*AccountBase) [RevokeDevice](/account_service.go#L120)

`func (a *AccountBase) RevokeDevice(userContext context.Context, request *sdk.RevokeDeviceRequest) (*sdk.RevokeDeviceResponse, error)`

#### func (*AccountBase) [SignIn](/account_service.go#L38)

`func (a *AccountBase) SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error)`

#### func (*AccountBase) [Unprotect](/account_service.go#L53)

`func (a *AccountBase) Unprotect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)`

### type [AccountService](/account_service.go#L23)

`type AccountService interface { ... }`

### type [CredentialBase](/credential_service.go#L34)

`type CredentialBase struct { ... }`

#### func (*CredentialBase) [CheckStatus](/credential_service.go#L132)

`func (c *CredentialBase) CheckStatus(userContext context.Context, request *sdk.CheckStatusRequest) (*sdk.CheckStatusResponse, error)`

#### func (*CredentialBase) [CreateProof](/credential_service.go#L80)

`func (c *CredentialBase) CreateProof(userContext context.Context, documentId string, revealDocument Document) (Document, error)`

#### func (*CredentialBase) [IssueCredential](/credential_service.go#L39)

`func (c *CredentialBase) IssueCredential(userContext context.Context, document Document) (Document, error)`

#### func (*CredentialBase) [IssueFromTemplate](/credential_service.go#L68)

`func (c *CredentialBase) IssueFromTemplate(userContext context.Context, request *sdk.IssueFromTemplateRequest) (*sdk.IssueFromTemplateResponse, error)`

#### func (*CredentialBase) [Send](/credential_service.go#L159)

`func (c *CredentialBase) Send(userContext context.Context, document Document, email string) error`

#### func (*CredentialBase) [UpdateStatus](/credential_service.go#L144)

`func (c *CredentialBase) UpdateStatus(userContext context.Context, request *sdk.UpdateStatusRequest) (*sdk.UpdateStatusResponse, error)`

#### func (*CredentialBase) [VerifyProof](/credential_service.go#L109)

`func (c *CredentialBase) VerifyProof(userContext context.Context, proofDocument Document) (bool, error)`

### type [CredentialService](/credential_service.go#L23)

`type CredentialService interface { ... }`

### type [CredentialTemplateBase](/credentialtemplate_service.go#L30)

`type CredentialTemplateBase struct { ... }`

#### func (*CredentialTemplateBase) [Create](/credentialtemplate_service.go#L35)

`func (c *CredentialTemplateBase) Create(userContext context.Context, request *sdk.CreateCredentialTemplateRequest) (*sdk.CreateCredentialTemplateResponse, error)`

#### func (*CredentialTemplateBase) [Delete](/credentialtemplate_service.go#L83)

`func (c *CredentialTemplateBase) Delete(userContext context.Context, request *sdk.DeleteCredentialTemplateRequest) (*sdk.DeleteCredentialTemplateResponse, error)`

#### func (*CredentialTemplateBase) [Get](/credentialtemplate_service.go#L47)

`func (c *CredentialTemplateBase) Get(userContext context.Context, request *sdk.GetCredentialTemplateRequest) (*sdk.GetCredentialTemplateResponse, error)`

#### func (*CredentialTemplateBase) [List](/credentialtemplate_service.go#L59)

`func (c *CredentialTemplateBase) List(userContext context.Context, request *sdk.ListCredentialTemplatesRequest) (*sdk.ListCredentialTemplatesResponse, error)`

#### func (*CredentialTemplateBase) [Search](/credentialtemplate_service.go#L71)

`func (c *CredentialTemplateBase) Search(userContext context.Context, request *sdk.SearchCredentialTemplatesRequest) (*sdk.SearchCredentialTemplatesResponse, error)`

### type [CredentialTemplateService](/credentialtemplate_service.go#L21)

`type CredentialTemplateService interface { ... }`

### type [Document](/services.go#L17)

`type Document map[string]interface{ ... }`

### type [FileProfileProvider](/storage.go#L10)

`type FileProfileProvider struct { ... }`

#### func (FileProfileProvider) [Get](/storage.go#L16)

`func (f FileProfileProvider) Get(name string) (sdk.AccountProfile, error)`

#### func (FileProfileProvider) [Save](/storage.go#L20)

`func (f FileProfileProvider) Save(name string, profile *sdk.AccountProfile) error`

### type [KeychainProfileProvider](/storage.go#L13)

`type KeychainProfileProvider struct { ... }`

#### func (KeychainProfileProvider) [Get](/storage.go#L24)

`func (k KeychainProfileProvider) Get(name string) (sdk.AccountProfile, error)`

#### func (KeychainProfileProvider) [Save](/storage.go#L28)

`func (k KeychainProfileProvider) Save(name string, profile *sdk.AccountProfile) error`

### type [OberonSecurityProvider](/security.go#L17)

`type OberonSecurityProvider struct { ... }`

#### func (OberonSecurityProvider) [GetAuthHeader](/security.go#L20)

`func (o OberonSecurityProvider) GetAuthHeader(profile *sdk.AccountProfile, message proto.Message) (string, error)`

### type [ProfileProvider](/storage.go#L5)

`type ProfileProvider interface { ... }`

### type [ProviderBase](/provider_service.go#L33)

`type ProviderBase struct { ... }`

#### func (*ProviderBase) [AcceptInvite](/provider_service.go#L105)

`func (p *ProviderBase) AcceptInvite(ctx context.Context, code string) (*sdk.AcceptInviteResponse, error)`

#### func (*ProviderBase) [CreateEcosystem](/provider_service.go#L76)

`func (p *ProviderBase) CreateEcosystem(ctx context.Context, request *sdk.CreateEcosystemRequest) (*sdk.CreateEcosystemResponse, error)`

#### func (*ProviderBase) [InvitationStatus](/provider_service.go#L62)

`func (p *ProviderBase) InvitationStatus(ctx context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error)`

#### func (*ProviderBase) [InviteParticipant](/provider_service.go#L43)

`func (p *ProviderBase) InviteParticipant(ctx context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error)`

#### func (*ProviderBase) [ListEcosystems](/provider_service.go#L90)

`func (p *ProviderBase) ListEcosystems(ctx context.Context) ([]*sdk.Ecosystem, error)`

### type [ProviderService](/provider_service.go#L23)

`type ProviderService interface { ... }`

### type [SecurityProvider](/security.go#L13)

`type SecurityProvider interface { ... }`

### type [Service](/service_base.go#L42)

`type Service interface { ... }`

### type [ServiceBase](/service_base.go#L34)

`type ServiceBase struct { ... }`

#### func (*ServiceBase) [BuildMetadata](/service_base.go#L73)

`func (s *ServiceBase) BuildMetadata(message proto.Message) (metadata.MD, error)`

#### func (*ServiceBase) [GetChannel](/service_base.go#L50)

`func (s *ServiceBase) GetChannel() *grpc.ClientConn`

#### func (*ServiceBase) [GetMetadataContext](/service_base.go#L62)

`func (s *ServiceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)`

#### func (*ServiceBase) [SetChannel](/service_base.go#L54)

`func (s *ServiceBase) SetChannel(channel *grpc.ClientConn)`

#### func (*ServiceBase) [SetProfile](/service_base.go#L58)

`func (s *ServiceBase) SetProfile(profile *sdk.AccountProfile)`

### type [ServiceOptions](/services.go#L19)

`type ServiceOptions struct { ... }`

### type [TrustRegistryBase](/trustregistry_service.go#L37)

`type TrustRegistryBase struct { ... }`

#### func (*TrustRegistryBase) [CheckIssuerStatus](/trustregistry_service.go#L104)

`func (t *TrustRegistryBase) CheckIssuerStatus(userContext context.Context, request *sdk.CheckIssuerStatusRequest) (sdk.RegistrationStatus, error)`

#### func (*TrustRegistryBase) [CheckVerifierStatus](/trustregistry_service.go#L116)

`func (t *TrustRegistryBase) CheckVerifierStatus(userContext context.Context, request *sdk.CheckVerifierStatusRequest) (sdk.RegistrationStatus, error)`

#### func (*TrustRegistryBase) [FetchData](/trustregistry_service.go#L159)

`func (t *TrustRegistryBase) FetchData(userContext context.Context, request *sdk.FetchDataRequest) (sdk.TrustRegistry_FetchDataClient, error)`

#### func (*TrustRegistryBase) [RegisterGovernanceFramework](/trustregistry_service.go#L42)

`func (t *TrustRegistryBase) RegisterGovernanceFramework(userContext context.Context, governanceFramework string, description string) error`

#### func (*TrustRegistryBase) [RegisterIssuer](/trustregistry_service.go#L66)

`func (t *TrustRegistryBase) RegisterIssuer(userContext context.Context, request *sdk.RegisterIssuerRequest) error`

#### func (*TrustRegistryBase) [RegisterVerifier](/trustregistry_service.go#L85)

`func (t *TrustRegistryBase) RegisterVerifier(userContext context.Context, request *sdk.RegisterVerifierRequest) error`

#### func (*TrustRegistryBase) [RemoveGovernanceFramework](/trustregistry_service.go#L147)

`func (t *TrustRegistryBase) RemoveGovernanceFramework(userContext context.Context, request *sdk.RemoveFrameworkRequest) (*sdk.RemoveFrameworkResponse, error)`

#### func (*TrustRegistryBase) [SearchRegistry](/trustregistry_service.go#L128)

`func (t *TrustRegistryBase) SearchRegistry(userContext context.Context, query string) (*sdk.SearchRegistryResponse, error)`

#### func (*TrustRegistryBase) [UnregisterIssuer](/trustregistry_service.go#L81)

`func (t *TrustRegistryBase) UnregisterIssuer(userContext context.Context, request *sdk.UnregisterIssuerRequest) error`

#### func (*TrustRegistryBase) [UnregisterVerifier](/trustregistry_service.go#L100)

`func (t *TrustRegistryBase) UnregisterVerifier(userContext context.Context, request *sdk.UnregisterVerifierRequest) error`

### type [TrustRegistryService](/trustregistry_service.go#L23)

`type TrustRegistryService interface { ... }`

### type [WalletBase](/wallet_service.go#L31)

`type WalletBase struct { ... }`

#### func (*WalletBase) [DeleteItem](/wallet_service.go#L75)

`func (w *WalletBase) DeleteItem(userContext context.Context, request *sdk.DeleteItemRequest) (*sdk.DeleteItemResponse, error)`

#### func (*WalletBase) [InsertItem](/wallet_service.go#L52)

`func (w *WalletBase) InsertItem(userContext context.Context, item Document) (string, error)`

#### func (*WalletBase) [Search](/wallet_service.go#L37)

`func (w *WalletBase) Search(userContext context.Context, query string) (*sdk.SearchResponse, error)`

### type [WalletService](/wallet_service.go#L23)

`type WalletService interface { ... }`

---
Readme created from Go doc with [goreadme](https://github.com/posener/goreadme)
