package services

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"github.com/golang/protobuf/ptypes/empty"
	"github.com/trinsic-id/okapi/go/okapi"
	okapiProto "github.com/trinsic-id/okapi/go/proto"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/structpb"
	"net/url"
	"time"
)

type Document map[string]interface{}

type ServiceBase struct {
	capabilityInvocation string
}

type ServiceBaser interface {
	GetContext() context.Context
	GetMetadata() metadata.MD
	SetProfile(profile sdk.WalletProfile)
}

func (s ServiceBase) GetContext() (context.Context, error) {
	md, err := s.GetMetadata()
	if err != nil { return nil, err }
	return metadata.NewOutgoingContext(context.Background(), md), nil
}

func (s ServiceBase) GetMetadata() (metadata.MD, error) {
	if s.capabilityInvocation == "" {
		return nil, errors.New("profile not set")
	}
	return metadata.New(map[string]string{
		"capability-invocation": s.capabilityInvocation,
	}), nil
}

func (s *ServiceBase) SetProfile(profile *sdk.WalletProfile) error {
	capabilityStruct, err := structpb.NewStruct(map[string]interface{}{
		"@context":         "https://w3id.org/security/v2",
		"invocationTarget": profile.WalletId,
		"proof": map[string]interface{}{
			"proofPurpose": "capabilityInvocation",
			"created":      time.Now().Format(time.RFC3339),
			"capability":   profile.Capability,
		},
	})
	if err != nil { return err }

	invokerKey := okapiProto.JsonWebKey{}
	err = proto.Unmarshal(profile.InvokerJwk, &invokerKey)
	if err != nil { return err }

	proofResponse, err := okapi.LdProofs{}.CreateProof(&okapiProto.CreateProofRequest{
		Document: capabilityStruct,
		Key:      &invokerKey,
		Suite:    okapiProto.LdSuite_JcsEd25519Signature2020,
	})
	if err != nil { return err }

	proofJson, err := json.Marshal(proofResponse.SignedDocument.AsMap())
	if err != nil { return err }

	s.capabilityInvocation = base64.StdEncoding.EncodeToString(proofJson)
	return nil
}

type WalletService struct {
	base             *ServiceBase
	channel          *grpc.ClientConn
	walletClient     sdk.WalletClient
	credentialClient sdk.CredentialClient
}

func CreateWalletService(serviceAddress string, channel *grpc.ClientConn) (*WalletService, error) {
	channel, err := CreateChannelIfNeeded(serviceAddress, channel, true)
	if err != nil {
		return nil, err
	}

	service := WalletService{
		base:             &ServiceBase{},
		channel:          channel,
		walletClient:     sdk.NewWalletClient(channel),
		credentialClient: sdk.NewCredentialClient(channel),
	}
	return &service, nil
}

func CreateChannelIfNeeded(serviceAddress string, channel *grpc.ClientConn, blockOnOpen bool) (*grpc.ClientConn, error) {
	if channel == nil {
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
			// TODO - Get the credentials bundle
			//credBundle := credentials.Bundle{}
			//dialOptions = append(dialOptions, grpc.WithCredentialsBundle(credentials.Bundle()))
			return nil, errors.New("HTTPS not supported yet due to credential bundle declaration")
		}
		channel, err = grpc.Dial(dialUrl, dialOptions...)
		if err != nil {
			return nil, err
		}
	}
	return channel, nil
}

type WalletServicer interface {
	ServiceBaser
	RegisterOrConnect(email string)
	CreateWallet(securityCode string) sdk.WalletProfile
	IssueCredential(document map[string]interface{}) Document
	Search(query string) sdk.SearchResponse
	InsertItem(item Document) string
	Send(document Document, email string)
	CreateProof(documentId string, revealDocument Document)
	VerifyProof(proofDocument map[string]interface{})
}

func (w WalletService) RegisterOrConnect(email string) error {
	connectRequest := sdk.ConnectRequest{
		ContactMethod: &sdk.ConnectRequest_Email{Email: email},
	}

	md, err := w.base.GetContext()
	if err != nil { return err }
	_, err = w.walletClient.ConnectExternalIdentity(md, &connectRequest)
	if err != nil { return err }
	return nil
}

func (w WalletService) CreateWallet(securityCode string) (*sdk.WalletProfile, error) {
	configuration, err := w.walletClient.GetProviderConfiguration(context.Background(), &empty.Empty{})
	if err != nil { return nil, err }
	resolveResponse, err := okapi.DidKey{}.Resolve(&okapiProto.ResolveRequest{Did: configuration.KeyAgreementKeyId})
	if err != nil { return nil, err }

	var providerExchangeKey *okapiProto.JsonWebKey
	for _, key := range resolveResponse.Keys {
		if key.Kid == configuration.KeyAgreementKeyId {
			providerExchangeKey = key
			break
		}
	}

	myKey, err := okapi.DidKey{}.Generate(&okapiProto.GenerateKeyRequest{KeyType: okapiProto.KeyType_Ed25519})
	if err != nil { return nil, err }

	var myExchangeKey *okapiProto.JsonWebKey
	for _, key := range myKey.Key {
		if key.Crv == "X25519" {
			myExchangeKey = key
			break
		}
	}

	myDidDocument := myKey.DidDocument.AsMap()
	walletRequest := sdk.CreateWalletRequest{
		Controller:   myDidDocument["id"].(string),
		Description:  "My Cloud Wallet",
		SecurityCode: securityCode,
	}
	walletBytes, err := proto.Marshal(&walletRequest)
	if err != nil { return nil, err }
	packedMessage, err := okapi.DidComm{}.Pack(&okapiProto.PackRequest{
		SenderKey:   myExchangeKey,
		ReceiverKey: providerExchangeKey,
		Plaintext: walletBytes,
	})
	if err != nil { return nil, err }

	packedSdkMessage := packedMessage.Message
	response, err := w.walletClient.CreateWalletEncrypted(context.Background(), packedSdkMessage)
	if err != nil { return nil, err }

	decryptedResponse, err := okapi.DidComm{}.Unpack(&okapiProto.UnpackRequest{
		SenderKey:   providerExchangeKey,
		ReceiverKey: myExchangeKey,
		Message:     response,
	})
	if err != nil { return nil, err }

	createWalletResponse := sdk.CreateWalletResponse{}
	err = proto.Unmarshal(decryptedResponse.Plaintext, &createWalletResponse)
	if err != nil { return nil, err }

	myKeyJwk, err := proto.Marshal(myKey.Key[0])
	if err != nil { return nil, err }
	jsonString, err := json.Marshal(myDidDocument)
	if err != nil { return nil, err }
	return &sdk.WalletProfile{
		DidDocument: &sdk.JsonPayload{Json: &sdk.JsonPayload_JsonString{JsonString: string(jsonString)}},
		WalletId:    createWalletResponse.WalletId,
		Invoker:     createWalletResponse.Invoker,
		Capability:  createWalletResponse.Capability,
		InvokerJwk:  myKeyJwk,
	}, nil
}

func (w WalletService) IssueCredential(document map[string]interface{}) (map[string]interface{}, error) {
	jsonBytes, err := json.Marshal(document)
	if err != nil { return nil, err }
	issueRequest := sdk.IssueRequest{
		Document: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonBytes),
			},
		},
	}

	md, err := w.base.GetContext()
	if err != nil { return nil, err }
	response, err := w.credentialClient.Issue(md, &issueRequest)
	if err != nil { return nil, err }
	var doc map[string]interface{}
	err = json.Unmarshal([]byte(response.Document.GetJsonString()), &doc)
	if err != nil { return nil, err }
	return doc, nil
}

func (w WalletService) Search(query string) (*sdk.SearchResponse, error) {
	md, err := w.base.GetContext()
	if err != nil { return nil, err }
	response, err := w.walletClient.Search(md, &sdk.SearchRequest{
		Query: query,
	})
	if err != nil { return nil, err }
	return response, nil
}

func (w WalletService) InsertItem(item map[string]interface{}) (string, error) {
	jsonString, err := json.Marshal(item)
	if err != nil { return "", err }
	md, err := w.base.GetContext()
	if err != nil { return "", err }
	response, err := w.walletClient.InsertItem(md, &sdk.InsertItemRequest{
		Item: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { return "", err }
	return response.ItemId, nil
}

func (w WalletService) Send(document map[string]interface{}, email string) error {
	jsonString, err := json.Marshal(document)
	if err != nil { return err }
	md, err := w.base.GetContext()
	if err != nil { return err }
	_, err = w.credentialClient.Send(md, &sdk.SendRequest{
		DeliveryMethod: &sdk.SendRequest_Email{
			Email: email,
		},
		Document: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { return err }
	return nil
}

func (w WalletService) CreateProof(documentId string, revealDocument Document) (Document, error) {
	jsonString, err := json.Marshal(revealDocument)
	if err != nil { return nil, err }
	md, err := w.base.GetContext()
	if err != nil { return nil, err }
	proof, err := w.credentialClient.CreateProof(md, &sdk.CreateProofRequest{
		DocumentId: documentId,
		RevealDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { return nil, err }
	var proofMap map[string]interface{}
	err = json.Unmarshal([]byte(proof.ProofDocument.GetJsonString()), &proofMap)
	if err != nil { return nil, err }
	return proofMap, nil
}

func (w WalletService) VerifyProof(proofDocument map[string]interface{}) (bool, error) {
	jsonString, err := json.Marshal(proofDocument)
	if err != nil { return false, err }
	md, err := w.base.GetContext()
	if err != nil { return false, err }
	proof, err := w.credentialClient.VerifyProof(md, &sdk.VerifyProofRequest{
		ProofDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { return false, err }
	return proof.Valid, nil
}

type ProviderService struct {
	base ServiceBase
	channel *grpc.ClientConn
	providerClient sdk.ProviderClient
}

func CreateProviderService(serviceAddress string, channel *grpc.ClientConn) (*ProviderService, error) {
	channel,err := CreateChannelIfNeeded(serviceAddress, channel, true)
	if err != nil { return nil, err }

	service := ProviderService{
		base:           ServiceBase{},
		channel:        channel,
		providerClient: sdk.NewProviderClient(channel),
	}
	return &service, nil
}

type ProviderServicer interface {
	ServiceBaser
	InviteParticipant(request sdk.InviteRequest) sdk.InviteResponse
	InvitationStatus(request sdk.InvitationStatusRequest) sdk.InvitationStatusResponse
}

func (p ProviderService) InviteParticipant(request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
	// Verify contact method is set
	switch request.ContactMethod.(type) {
	case nil:
		return nil, fmt.Errorf("unset contact method")
	}
	response, err := p.providerClient.Invite(context.Background(), request)
	if err != nil { return nil, err }
	return response, nil
}

func (p ProviderService) InvitationStatus(request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error) {
	response, err := p.providerClient.InvitationStatus(context.Background(), request)
	if err != nil { return nil, err }
	return response, nil
}
