package services

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"github.com/golang/protobuf/ptypes/empty"
	"github.com/trinsic-id/okapi/go/okapi"
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

type IServiceBase interface {
	GetContext() context.Context
	GetMetadata() metadata.MD
	SetProfile(profile sdk.WalletProfile)
}

func (s ServiceBase) GetContext() context.Context {
	return metadata.NewOutgoingContext(context.Background(), s.GetMetadata())
}

func (s ServiceBase) GetMetadata() metadata.MD {
	return metadata.New(map[string]string{
		"capability-invocation": s.capabilityInvocation,
	})
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

	invokerKey := okapi.JsonWebKey{}
	err = proto.Unmarshal(profile.InvokerJwk, &invokerKey)
	if err != nil { return err }

	proofResponse, err := okapi.LdProofs{}.CreateProof(&okapi.CreateProofRequest{
		Document: capabilityStruct,
		Key:      &invokerKey,
		Suite:    okapi.LdSuite_JcsEd25519Signature2020,
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

type IWalletService interface {
	IServiceBase
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

	_, err := w.walletClient.ConnectExternalIdentity(w.base.GetContext(), &connectRequest)
	if err != nil { return err }
	return nil
}

func (w WalletService) CreateWallet(securityCode string) (*sdk.WalletProfile, error) {
	configuration, err := w.walletClient.GetProviderConfiguration(context.Background(), &empty.Empty{})
	if err != nil { return nil, err }
	resolveResponse, err := okapi.DidKey{}.Resolve(&okapi.ResolveRequest{Did: configuration.KeyAgreementKeyId})
	if err != nil { return nil, err }

	var providerExchangeKey *okapi.JsonWebKey
	for _, key := range resolveResponse.Keys {
		if key.Kid == configuration.KeyAgreementKeyId {
			providerExchangeKey = key
			break
		}
	}

	myKey, err := okapi.DidKey{}.Generate(&okapi.GenerateKeyRequest{KeyType: okapi.KeyType_Ed25519})
	if err != nil { return nil, err }

	var myExchangeKey *okapi.JsonWebKey
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
	packedMessage, err := okapi.DidComm{}.Pack(&okapi.PackRequest{
		SenderKey:   myExchangeKey,
		ReceiverKey: providerExchangeKey,
		Plaintext: walletBytes,
	})
	if err != nil { return nil, err }

	packedSdkMessage := packedMessage.Message
	response, err := w.walletClient.CreateWalletEncrypted(context.Background(), packedSdkMessage)
	if err != nil { return nil, err }

	decryptedResponse, err := okapi.DidComm{}.Unpack(&okapi.UnpackRequest{
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
	response, err := w.credentialClient.Issue(w.base.GetContext(), &issueRequest)
	if err != nil { return nil, err }
	var doc map[string]interface{}
	err = json.Unmarshal([]byte(response.Document.GetJsonString()), &doc)
	if err != nil { return nil, err }
	return doc, nil
}

func (w WalletService) Search(query string) (*sdk.SearchResponse, error) {
	response, err := w.walletClient.Search(w.base.GetContext(), &sdk.SearchRequest{
		Query: query,
	})
	if err != nil { return nil, err }
	return response, nil
}

func (w WalletService) InsertItem(item map[string]interface{}) (string, error) {
	jsonString, err := json.Marshal(item)
	if err != nil { return "", err }
	response, err := w.walletClient.InsertItem(w.base.GetContext(), &sdk.InsertItemRequest{
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
	_, err = w.credentialClient.Send(w.base.GetContext(), &sdk.SendRequest{
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
	proof, err := w.credentialClient.CreateProof(w.base.GetContext(), &sdk.CreateProofRequest{
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
	proof, err := w.credentialClient.VerifyProof(w.base.GetContext(), &sdk.VerifyProofRequest{
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

type IProviderService interface {
	IServiceBase
	InviteParticipant(request sdk.InviteRequest) sdk.InviteResponse
	InvitationStatus(request sdk.InvitationStatusRequest) sdk.InvitationStatusResponse
}

func (p ProviderService) InviteParticipant(request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
	// Verify contact method is set
	switch request.ContactMethod.(type) {
	case nil:
		return nil, fmt.Errorf("unset contact method")
	}
	response, err := p.providerClient.Invite(p.base.GetContext(), request)
	if err != nil { return nil, err }
	return response, nil
}

func (p ProviderService) InvitationStatus(request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error) {
	response, err := p.providerClient.InvitationStatus(p.base.GetContext(), request)
	if err != nil { return nil, err }
	return response, nil
}
