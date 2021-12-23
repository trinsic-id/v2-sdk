package services

import (
	"context"
	"crypto/x509"
	"encoding/json"
	"errors"
	"fmt"
	"net/url"
	"os"
	"runtime"
	"strconv"
	"time"

	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
	_ "google.golang.org/protobuf/types/known/structpb"
)

type Document map[string]interface{}

func TrinsicProductionConfig() *sdk.ServerConfig {
	return &sdk.ServerConfig{
		Endpoint: "prod.trinsic.cloud",
		Port:     443,
		UseTls:   true,
	}
}

func TrinsicTestConfig() *sdk.ServerConfig {
	server := os.Getenv("TEST_SERVER_ENDPOINT")
	port, err := strconv.Atoi(os.Getenv("TEST_SERVER_PORT"))
	useTls, err2 := strconv.ParseBool(os.Getenv("TEST_SERVER_USE_TLS"))
	if err != nil || port <= 0 {
		port = 443
	}
	if err2 != nil {
		useTls = true
	}

	return &sdk.ServerConfig{
		Endpoint: server,
		Port:     int32(port),
		UseTls:   useTls,
	}
}

func CreateAccountService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (AccountService, error) {
	base, err := CreateServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &AccountBase{
		ServiceBase: base,
		client:      sdk.NewAccountClient(base.channel),
	}

	return service, nil
}

func CreateCredentialService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (CredentialService, error) {
	base, err := CreateServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &CredentialBase{
		ServiceBase: base,
		client:      sdk.NewVerifiableCredentialClient(base.channel),
	}

	return service, nil
}

func CreateProviderService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (ProviderService, error) {
	base, err := CreateServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &ProviderBase{
		ServiceBase: base,
		client:      sdk.NewProviderClient(base.channel),
	}

	return service, nil
}

func CreateTrustRegistryService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (TrustRegistryService, error) {
	base, err := CreateServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &TrustRegistryBase{
		ServiceBase: base,
		client:      sdk.NewTrustRegistryClient(base.channel),
	}

	return service, nil
}

func CreateWalletService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (WalletService, error) {
	base, err := CreateServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &WalletBase{
		ServiceBase: base,
		client:      sdk.NewUniversalWalletClient(base.channel),
	}

	return service, nil
}

func CreateChannelUrlFromConfig(config *sdk.ServerConfig) string {
	scheme := "http"
	if config.UseTls {
		scheme = "https"
	}
	return fmt.Sprintf("%s://%s:%d", scheme, config.Endpoint, config.Port)
}

func CreateChannel(serviceAddress string, blockOnOpen bool) (*grpc.ClientConn, error) {
	var serviceUrl, err = url.Parse(serviceAddress)
	if err != nil {
		return nil, err
	}
	if serviceUrl.Port() == "" {
		return nil, &url.Error{Op: "parse", URL: serviceAddress, Err: errors.New("missing port (or scheme) in URL")}
	}
	dialUrl := serviceUrl.Hostname() + ":" + serviceUrl.Port()
	var dialOptions []grpc.DialOption
	if blockOnOpen {
		dialOptions = append(dialOptions, grpc.WithBlock())
	}
	if serviceUrl.Scheme == "http" {
		dialOptions = append(dialOptions, grpc.WithInsecure())
	} else {
		rootCAs, err := x509.SystemCertPool()
		if err != nil && runtime.GOOS == "windows" {
			rootCAs = x509.NewCertPool()
			windowsCerts := loadWindowsCerts()
			for _, cert := range windowsCerts {
				rootCAs.AddCert(cert)
			}
		} else if err != nil {
			return nil, err
		}
		creds := credentials.NewClientTLSFromCert(rootCAs, "")
		dialOptions = append(dialOptions, grpc.WithTransportCredentials(creds))
	}
	channel, err := grpc.Dial(dialUrl, dialOptions...)
	if err != nil {
		return nil, err
	}
	return channel, nil
}

func CreateServiceBase(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (*ServiceBase, error) {
	if channel == nil {
		channel2, err := CreateChannel(CreateChannelUrlFromConfig(serverConfig), true)
		if err != nil {
			return nil, err
		}
		channel = channel2
	}
	channel.Connect()
	service := &ServiceBase{
		profile:              profile,
		configuration:        serverConfig,
		channel:              channel,
		securityProviderImpl: &OberonSecurityProvider{},
	}
	return service, nil
}

type ServiceBase struct {
	ecosystemId          string
	profile              *sdk.AccountProfile
	configuration        *sdk.ServerConfig
	channel              *grpc.ClientConn
	securityProviderImpl *OberonSecurityProvider
}

type Service interface {
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	BuildMetadata(message proto.Message) (metadata.MD, error)
	SetProfile(profile *sdk.AccountProfile)
	SetChannel(channel *grpc.ClientConn)
	GetChannel() *grpc.ClientConn
}

func (s *ServiceBase) GetChannel() *grpc.ClientConn {
	return s.channel
}

func (s *ServiceBase) SetChannel(channel *grpc.ClientConn) {
	s.channel = channel
}

func (s *ServiceBase) SetProfile(profile *sdk.AccountProfile) {
	s.profile = profile
}

func (s *ServiceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error) {
	md, err := s.BuildMetadata(message)
	if err != nil {
		return nil, err
	}
	if userContext == nil {
		return nil, errors.New("userContext cannot be nil")
	}
	return metadata.NewOutgoingContext(userContext, md), nil
}

func (s *ServiceBase) BuildMetadata(message proto.Message) (metadata.MD, error) {
	if s.profile == nil {
		return nil, fmt.Errorf("cannot call authenticated endpoint: profile must be set")
	}
	authString, err := s.securityProviderImpl.GetAuthHeader(s.profile, message)
	if err != nil {
		return nil, err
	}
	return metadata.New(map[string]string{
		"authorization": authString,
		"ecosystem":     s.ecosystemId,
	}), nil
}

type AccountService interface {
	Service
	SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error)
	Unprotect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)
	Protect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)
	GetInfo(userContext context.Context) (*sdk.InfoResponse, error)
}

type AccountBase struct {
	*ServiceBase
	client sdk.AccountClient
}

func (a *AccountBase) SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error) {
	if details == nil {
		details = &sdk.AccountDetails{}
	}
	request := &sdk.SignInRequest{
		Details: details,
	}
	response, err := a.client.SignIn(userContext, request)
	if err != nil {
		return nil, sdk.ConfirmationMethod_None, err
	}

	return response.Profile, response.ConfirmationMethod, nil
}

func (a *AccountBase) Unprotect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error) {
	cloned := &sdk.AccountProfile{
		ProfileType: profile.ProfileType,
		AuthData:    profile.AuthData,
	}
	request := &okapiproto.UnBlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}
	response, err := okapi.Oberon().UnblindToken(request)
	if err != nil {
		return nil, err
	}
	cloned.AuthToken = response.Token
	cloned.Protection = &sdk.TokenProtection{
		Enabled: false,
		Method:  sdk.ConfirmationMethod_None,
	}
	return cloned, nil
}

func (a *AccountBase) Protect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error) {
	cloned := &sdk.AccountProfile{
		ProfileType: profile.ProfileType,
		AuthData:    profile.AuthData,
	}
	request := &okapiproto.BlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}
	response, err := okapi.Oberon().BlindToken(request)
	if err != nil {
		return nil, err
	}
	cloned.AuthToken = response.Token
	cloned.Protection = &sdk.TokenProtection{
		Enabled: true,
		Method:  sdk.ConfirmationMethod_Other,
	}
	return cloned, nil
}

func (a *AccountBase) GetInfo(userContext context.Context) (*sdk.InfoResponse, error) {
	request := &sdk.InfoRequest{}
	md, err := a.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := a.client.Info(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

type CredentialService interface {
	Service
	IssueCredential(userContext context.Context, document Document) (Document, error)
	CreateProof(userContext context.Context, documentId string, revealDocument Document) (Document, error)
	VerifyProof(userContext context.Context, proofDocument Document) (bool, error)
	Send(userContext context.Context, document Document, email string) error
}

type CredentialBase struct {
	*ServiceBase
	client sdk.VerifiableCredentialClient
}

func (c *CredentialBase) IssueCredential(userContext context.Context, document Document) (Document, error) {
	jsonBytes, err := json.Marshal(document)
	if err != nil {
		return nil, err
	}
	issueRequest := &sdk.IssueRequest{
		Document: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonBytes),
			},
		},
	}

	md, err := c.GetMetadataContext(userContext, issueRequest)
	if err != nil {
		return nil, err
	}
	response, err := c.client.Issue(md, issueRequest)
	if err != nil {
		return nil, err
	}
	var doc map[string]interface{}
	err = json.Unmarshal([]byte(response.Document.GetJsonString()), &doc)
	if err != nil {
		return nil, err
	}
	return doc, nil
}

func (c *CredentialBase) CreateProof(userContext context.Context, documentId string, revealDocument Document) (Document, error) {
	jsonString, err := json.Marshal(revealDocument)
	if err != nil {
		return nil, err
	}
	request := &sdk.CreateProofRequest{
		DocumentId: documentId,
		RevealDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	}
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	proof, err := c.client.CreateProof(md, request)
	if err != nil {
		return nil, err
	}
	var proofMap map[string]interface{}
	err = json.Unmarshal([]byte(proof.ProofDocument.GetJsonString()), &proofMap)
	if err != nil {
		return nil, err
	}
	return proofMap, nil
}

func (c *CredentialBase) VerifyProof(userContext context.Context, proofDocument Document) (bool, error) {
	jsonString, err := json.Marshal(proofDocument)
	if err != nil {
		return false, err
	}
	request := &sdk.VerifyProofRequest{
		ProofDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	}
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return false, err
	}
	proof, err := c.client.VerifyProof(md, request)
	if err != nil {
		return false, err
	}
	return proof.Valid, nil
}

func (c *CredentialBase) Send(userContext context.Context, document Document, email string) error {
	jsonString, err := json.Marshal(document)
	if err != nil {
		return err
	}
	request := &sdk.SendRequest{
		DeliveryMethod: &sdk.SendRequest_Email{
			Email: email,
		},
		Document: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	}
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	_, err = c.client.Send(md, request)
	if err != nil {
		return err
	}
	return nil
}

type ProviderService interface {
	Service
	InviteParticipant(userContext context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error)
	InvitationStatus(userContext context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error)
	AcceptInvite(ctx context.Context, code string) (*sdk.AcceptInviteResponse, error)
	CreateEcosystem(ctx context.Context, request *sdk.CreateEcosystemRequest) (*sdk.CreateEcosystemResponse, error)
	SetEcosystem(ecosystemId string)
}

type ProviderBase struct {
	*ServiceBase
	channel *grpc.ClientConn
	client  sdk.ProviderClient
}

func (p *ProviderBase) SetEcosystem(ecosystemId string) {
	p.ecosystemId = ecosystemId
}

func (p *ProviderBase) CreateEcosystem(ctx context.Context, request *sdk.CreateEcosystemRequest) (*sdk.CreateEcosystemResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	resp, err := p.client.CreateEcosystem(md, request)
	if err != nil {
		return nil, err
	}

	return &sdk.CreateEcosystemResponse{Id: resp.Id}, nil
}

func (p *ProviderBase) InviteParticipant(ctx context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
	// Verify contact method is set
	switch request.ContactMethod.(type) {
	case nil:
		return nil, fmt.Errorf("unset contact method")
	}

	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.Invite(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (p *ProviderBase) InvitationStatus(ctx context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.InvitationStatus(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *ProviderBase) AcceptInvite(ctx context.Context, code string) (*sdk.AcceptInviteResponse, error) {
	request := &sdk.InfoRequest{}

	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.AcceptInvite(md, &sdk.AcceptInviteRequest{Code: code})
	if err != nil {
		return nil, err
	}

	return response, err
}

type TrustRegistryService interface {
	Service
	RegisterGovernanceFramework(userContext context.Context, governanceFramework string, description string) error
	RegisterIssuer(userContext context.Context, issuerDid string, credentialType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error
	UnregisterIssuer(userContext context.Context, issuerDid string, credentialType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error
	RegisterVerifier(userContext context.Context, verifierDid string, presentationType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error
	UnregisterVerifier(userContext context.Context, verifierDid string, presentationType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error
	CheckIssuerStatus(userContext context.Context, issuerDid string, credentialType string, governanceFramework string) (sdk.RegistrationStatus, error)
	CheckVerifierStatus(userContext context.Context, verifierDid string, presentationType string, governanceFramework string) (sdk.RegistrationStatus, error)
	SearchRegistry(userContext context.Context, query string) (*sdk.SearchRegistryResponse, error)
}

type TrustRegistryBase struct {
	*ServiceBase
	client sdk.TrustRegistryClient
}

func (t *TrustRegistryBase) RegisterGovernanceFramework(userContext context.Context, governanceFramework string, description string) error {
	// Verify that it is a valid uri
	_, err := url.Parse(governanceFramework)
	if err != nil {
		return err
	}
	request := &sdk.AddFrameworkRequest{
		GovernanceFramework: &sdk.GovernanceFramework{
			GovernanceFrameworkUri: governanceFramework,
			TrustRegistryUri:       "",
			Description:            description,
		},
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	_, err = t.client.AddFramework(md, request)
	if err != nil {
		return err
	}
	return nil
}

func (t *TrustRegistryBase) RegisterIssuer(userContext context.Context, issuerDid string, credentialType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error {
	request := &sdk.RegisterIssuerRequest{
		Authority:              &sdk.RegisterIssuerRequest_DidUri{DidUri: issuerDid},
		CredentialTypeUri:      credentialType,
		ValidFromUtc:           uint64(validFrom.UnixMilli()),
		ValidUntilUtc:          uint64(validUntil.UnixMilli()),
		GovernanceFrameworkUri: governanceFramework,
		Options:                nil,
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	_, err = t.client.RegisterIssuer(md, request)
	if err != nil {
		return err
	}
	return nil
}

func (t *TrustRegistryBase) UnregisterIssuer(userContext context.Context, issuerDid string, credentialType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error {
	panic("implement me")
}

func (t *TrustRegistryBase) RegisterVerifier(userContext context.Context, verifierDid string, presentationType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error {
	request := &sdk.RegisterVerifierRequest{
		Authority:              &sdk.RegisterVerifierRequest_DidUri{DidUri: verifierDid},
		PresentationTypeUri:    presentationType,
		ValidFromUtc:           uint64(validFrom.UnixMilli()),
		ValidUntilUtc:          uint64(validUntil.UnixMilli()),
		GovernanceFrameworkUri: governanceFramework,
		Options:                nil,
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	_, err = t.client.RegisterVerifier(md, request)
	if err != nil {
		return err
	}
	return nil
}

func (t *TrustRegistryBase) UnregisterVerifier(userContext context.Context, verifierDid string, presentationType string, governanceFramework string, validFrom time.Time, validUntil time.Time) error {
	panic("implement me")
}

func (t *TrustRegistryBase) CheckIssuerStatus(userContext context.Context, issuerDid string, credentialType string, governanceFramework string) (sdk.RegistrationStatus, error) {
	request := &sdk.CheckIssuerStatusRequest{
		GovernanceFrameworkUri: governanceFramework,
		Member:                 &sdk.CheckIssuerStatusRequest_DidUri{DidUri: issuerDid},
		CredentialTypeUri:      credentialType,
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return sdk.RegistrationStatus_NOT_FOUND, err
	}
	response, err := t.client.CheckIssuerStatus(md, request)
	if err != nil {
		return sdk.RegistrationStatus_NOT_FOUND, err
	}
	return response.Status, nil
}

func (t *TrustRegistryBase) CheckVerifierStatus(userContext context.Context, verifierDid string, presentationType string, governanceFramework string) (sdk.RegistrationStatus, error) {
	request := &sdk.CheckVerifierStatusRequest{
		GovernanceFrameworkUri: governanceFramework,
		Member:                 &sdk.CheckVerifierStatusRequest_DidUri{DidUri: verifierDid},
		PresentationTypeUri:    presentationType,
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return sdk.RegistrationStatus_NOT_FOUND, err
	}
	response, err := t.client.CheckVerifierStatus(md, request)
	if err != nil {
		return sdk.RegistrationStatus_NOT_FOUND, err
	}
	return response.Status, nil
}

func (t *TrustRegistryBase) SearchRegistry(userContext context.Context, query string) (*sdk.SearchRegistryResponse, error) {
	request := &sdk.SearchRegistryRequest{
		Query:   query,
		Options: &sdk.RequestOptions{ResponseJsonFormat: sdk.JsonFormat_Protobuf},
	}
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.SearchRegistry(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

type WalletService interface {
	Service

	Search(userContext context.Context, query string) (*sdk.SearchResponse, error)
	InsertItem(userContext context.Context, item Document) (string, error)
}

type WalletBase struct {
	*ServiceBase
	channel *grpc.ClientConn
	client  sdk.UniversalWalletClient
}

func (w *WalletBase) Search(userContext context.Context, query string) (*sdk.SearchResponse, error) {
	request := &sdk.SearchRequest{
		Query: query,
	}
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := w.client.Search(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (w *WalletBase) InsertItem(userContext context.Context, item Document) (string, error) {
	jsonString, err := json.Marshal(item)
	if err != nil {
		return "", err
	}
	request := &sdk.InsertItemRequest{
		Item: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	}
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return "", err
	}
	response, err := w.client.InsertItem(md, request)
	if err != nil {
		return "", err
	}
	return response.ItemId, nil
}
