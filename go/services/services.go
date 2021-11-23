package services

import (
	"context"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"google.golang.org/grpc/credentials"
	"lukechampine.com/blake3"
	"net/url"
	"os"
	"strconv"
	"time"

	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
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
		Port: int32(port),
		UseTls:   useTls,
	}
}

func CreateConfigFromUrl(serviceAddress string) (*sdk.ServerConfig, error) {
	var serviceUrl, err = url.Parse(serviceAddress)
	if err != nil {
		return nil, err
	}
	if serviceUrl.Port() == "" {
		return nil, &url.Error{Op: "parse", URL: serviceAddress, Err: errors.New("missing port (or scheme) in URL")}
	}
	port, err := strconv.ParseInt(serviceUrl.Port(), 10, 32)
	return &sdk.ServerConfig{
		Endpoint: serviceUrl.Hostname(),
		Port:     int32(port),
		UseTls:   serviceUrl.Scheme != "http",
	}, nil
}

func CreateChannelIfNeeded(config *sdk.ServerConfig, channel *grpc.ClientConn, blockOnOpen bool) (*grpc.ClientConn, error) {
	if channel == nil {
		if config == nil {
			config = TrinsicProductionConfig()
		}
		dialUrl := config.Endpoint + ":" + string(config.Port)
		var dialOptions []grpc.DialOption
		if blockOnOpen {
			dialOptions = append(dialOptions, grpc.WithBlock())
		}
		if !config.UseTls {
			dialOptions = append(dialOptions, grpc.WithInsecure())
		} else {
			// TODO - Get the credentials bundle
			pool, err := x509.SystemCertPool()
			if err != nil { return nil, err}
			creds := credentials.NewClientTLSFromCert(pool, "")
			dialOptions = append(dialOptions, grpc.WithTransportCredentials(creds))
		}
		channel1, err := grpc.Dial(dialUrl, dialOptions...)
		if err != nil {
			return nil, err
		}
		channel = channel1
	}
	return channel, nil
}

type ServiceBase struct {
	profile *sdk.AccountProfile
}

type Service interface {
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	GetMetadata(message proto.Message) (metadata.MD, error)
	SetProfile(profile *sdk.AccountProfile)
}

func (s *ServiceBase) SetProfile(profile *sdk.AccountProfile) {
	s.profile = profile
}

func (s *ServiceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error) {
	md, err := s.GetMetadata(message)
	if err != nil {
		return nil, err
	}
	if userContext == nil {
		return nil, errors.New("userContext cannot be nil")
	}
	return metadata.NewOutgoingContext(userContext, md), nil
}

func (s *ServiceBase) GetMetadata(message proto.Message) (metadata.MD, error) {
	if s.profile == nil {
		return nil, errors.New("profile not set")
	}

	data, err := proto.Marshal(message)
	if err != nil {
		return nil, err
	}
	requestHash := blake3.Sum256(data)
	nonce := &sdk.Nonce{
		Timestamp:   time.Now().UnixMilli(),
		RequestHash: requestHash[:],
	}
	nonceBytes, err := proto.Marshal(nonce)
	if err != nil {
		return nil, err
	}

	proof, err := okapi.Oberon().CreateProof(&okapiproto.CreateOberonProofRequest{
		Data:  s.profile.AuthData,
		Token: s.profile.AuthToken,
		Nonce: nonceBytes,
	})
	if err != nil {
		return nil, err
	}
	return metadata.New(map[string]string{
		"authorization": fmt.Sprintf("Oberon proof=%s,data=%s,nonce=%s",
			base64.URLEncoding.EncodeToString(proof.Proof),
			base64.URLEncoding.EncodeToString(s.profile.AuthData),
			base64.URLEncoding.EncodeToString(nonceBytes)),
	}), nil
}

type AccountBase struct {
	*ServiceBase
	channel          *grpc.ClientConn
	client     sdk.AccountServiceClient
}

type AccountService interface {
	Service
	SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error)
	Unprotect(profile *sdk.AccountProfile, securityCode string) error
	Protect(profile *sdk.AccountProfile, securityCode string) error
	GetInfo(userContext context.Context) (*sdk.InfoResponse, error)
}

func CreateAccountService(serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (AccountService, error) {
	channel, err := CreateChannelIfNeeded(serverConfig, channel, true)
	if err != nil {
		return nil, err
	}

	service := &AccountBase{
		ServiceBase:      &ServiceBase{},
		channel:          channel,
		client:     sdk.NewAccountServiceClient(channel),
	}

	return service, nil
}

func (a *AccountBase) SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error) {
	if details == nil {
		details = &sdk.AccountDetails{}
	}
	request := &sdk.SignInRequest{
		Details:        details,
		InvitationCode: "",
	}
	response, err := a.client.SignIn(userContext, request)
	if err != nil {
		return nil, -1, err
	}
	return response.Profile, response.ConfirmationMethod, nil
}

func (a *AccountBase) Unprotect(profile *sdk.AccountProfile, securityCode string) error {
	request := &okapiproto.UnBlindOberonTokenRequest{
		Token:    profile.AuthToken,
	}
	request.Blinding = append(request.Blinding, []byte(securityCode))
	result, err := okapi.Oberon().UnblindToken(request)
	if err != nil {
		return err
	}
	profile.AuthToken = result.Token
	profile.Protection = &sdk.TokenProtection{
		Enabled: false,
		Method:  sdk.ConfirmationMethod_None,
	}
	return nil
}

func (a *AccountBase) Protect(profile *sdk.AccountProfile, securityCode string) error {
	request := &okapiproto.BlindOberonTokenRequest{
		Token:    profile.AuthToken,
	}
	request.Blinding = append(request.Blinding, []byte(securityCode))
	result, err := okapi.Oberon().BlindToken(request)
	if err != nil {
		return err
	}
	profile.AuthToken = result.Token
	profile.Protection = &sdk.TokenProtection{
		Enabled: true,
		Method:  sdk.ConfirmationMethod_Other,
	}
	return nil
}

func (a *AccountBase) GetInfo(userContext context.Context) (*sdk.InfoResponse, error) {
	request := &sdk.InfoRequest{
	}
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

type CredentialBase struct {
	*ServiceBase
	channel             *grpc.ClientConn
	credentialClient     sdk.CredentialClient
}

type CredentialService interface {
	Service
	IssueCredential(userContext context.Context, document Document) (Document, error)
	Send(userContext context.Context, document Document, email string) error
	CreateProof(userContext context.Context, documentId string, revealDocument Document) (Document, error)
	VerifyProof(userContext context.Context, proofDocument Document) (bool, error)
}

func CreateCredentialService(serviceAddress *sdk.ServerConfig, channel *grpc.ClientConn) (CredentialService, error) {
	channel, err := CreateChannelIfNeeded(serviceAddress, channel, true)
	if err != nil {
		return nil, err
	}

	service := &CredentialBase{
		ServiceBase:    &ServiceBase{},
		channel:        channel,
		credentialClient: sdk.NewCredentialClient(channel),
	}
	return service, nil
}

func (w *CredentialBase) IssueCredential(userContext context.Context, document Document) (Document, error) {
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

	md, err := w.GetMetadataContext(userContext, issueRequest)
	if err != nil {
		return nil, err
	}
	response, err := w.credentialClient.Issue(md, issueRequest)
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

func (w *CredentialBase) Send(userContext context.Context, document Document, email string) error {
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
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	_, err = w.credentialClient.Send(md, request)
	if err != nil {
		return err
	}
	return nil
}

func (w *CredentialBase) CreateProof(userContext context.Context, documentId string, revealDocument Document) (Document, error) {
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
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	proof, err := w.credentialClient.CreateProof(md, request)
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

func (w *CredentialBase) VerifyProof(userContext context.Context, proofDocument Document) (bool, error) {
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
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return false, err
	}
	proof, err := w.credentialClient.VerifyProof(md, request)
	if err != nil {
		return false, err
	}
	return proof.Valid, nil
}

type ProviderService interface {
	Service
	InviteParticipant(userContext context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error)
	InvitationStatus(userContext context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error)
}

type ProviderBase struct {
	*ServiceBase
	channel        *grpc.ClientConn
	providerClient sdk.ProviderClient
}

func CreateProviderService(serviceAddress *sdk.ServerConfig, channel *grpc.ClientConn) (ProviderService, error) {
	channel, err := CreateChannelIfNeeded(serviceAddress, channel, true)
	if err != nil {
		return nil, err
	}

	service := &ProviderBase{
		ServiceBase:    &ServiceBase{},
		channel:        channel,
		providerClient: sdk.NewProviderClient(channel),
	}
	return service, nil
}

func (p *ProviderBase) InviteParticipant(userContext context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
	// Verify contact method is set
	switch request.ContactMethod.(type) {
	case nil:
		return nil, fmt.Errorf("unset contact method")
	}
	response, err := p.providerClient.Invite(userContext, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (p *ProviderBase) InvitationStatus(userContext context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error) {
	response, err := p.providerClient.InvitationStatus(userContext, request)
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
	channel          *grpc.ClientConn
	walletClient     sdk.WalletServiceClient
}

func CreateWalletService(serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (WalletService, error) {
	channel, err := CreateChannelIfNeeded(serverConfig, channel, true)
	if err != nil {
		return nil, err
	}

	service := &WalletBase{
		ServiceBase:      &ServiceBase{},
		channel:          channel,
		walletClient:     sdk.NewWalletServiceClient(channel),
	}

	return service, nil
}

func (w *WalletBase) Search(userContext context.Context, query string) (*sdk.SearchResponse, error) {
	request := &sdk.SearchRequest{
		Query: query,
	}
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := w.walletClient.Search(md, request)
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
	response, err := w.walletClient.InsertItem(md, request)
	if err != nil {
		return "", err
	}
	return response.ItemId, nil
}
