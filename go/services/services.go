package services

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"github.com/golang/protobuf/ptypes/empty"
	"github.com/trinsic-id/okapi/go/okapi"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/structpb"
	"time"
)

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

func (s *ServiceBase) SetProfile(profile *sdk.WalletProfile) {
	capabilityStruct, err := structpb.NewStruct(map[string]interface{}{
		"@context":         "https://w3id.org/security/v2",
		"invocationTarget": profile.WalletId,
		"proof": map[string]interface{}{
			"proofPurpose": "capabilityInvocation",
			"created":      time.Now().Format(time.RFC3339),
			"capability":   profile.Capability,
		},
	})
	if err != nil { panic(err) }

	invokerKey := okapi.JsonWebKey{}
	err = proto.Unmarshal(profile.InvokerJwk, &invokerKey)
	if err != nil { panic(err) }

	proofResponse, err := okapi.LdProofs{}.CreateProof(&okapi.CreateProofRequest{
		Document: capabilityStruct,
		Key:      &invokerKey,
		Suite:    okapi.LdSuite_JcsEd25519Signature2020,
	})
	if err != nil { panic(err) }

	proofJson, err := json.Marshal(proofResponse.SignedDocument.AsMap())
	if err != nil { panic(err) }

	s.capabilityInvocation = base64.StdEncoding.EncodeToString(proofJson)
}

type WalletService struct {
	base             *ServiceBase
	channel          *grpc.ClientConn
	walletClient     sdk.WalletClient
	credentialClient sdk.CredentialClient
}

func CreateWalletService(serviceAddress string, channel *grpc.ClientConn) *WalletService {
	channel = createChannelIfNeeded(serviceAddress, channel)

	service := WalletService{
		base:             &ServiceBase{},
		channel:          channel,
		walletClient:     sdk.NewWalletClient(channel),
		credentialClient: sdk.NewCredentialClient(channel),
	}
	return &service
}

func createChannelIfNeeded(serviceAddress string, channel *grpc.ClientConn) *grpc.ClientConn {
	if channel == nil {
		channel2, err := grpc.Dial(serviceAddress, grpc.WithInsecure(), grpc.WithBlock())
		if err != nil {
			panic(err)
		}
		channel = channel2
	}
	return channel
}

type IWalletService interface {
	IServiceBase
	RegisterOrConnect(email string)
	CreateWallet(securityCode string) sdk.WalletProfile
	IssueCredential(document map[string]interface{}) map[string]interface{} // TODO - Better typing?
	Search(query string) sdk.SearchResponse
	InsertItem(item map[string]interface{}) string                        // TODO - Better typing?
	Send(document map[string]interface{}, email string)                   // TODO - Better typing?
	CreateProof(documentId string, revealDocument map[string]interface{}) // TODO - Better typing?
	VerifyProof(proofDocument map[string]interface{})                     // TODO - Better typing?
}

func (w WalletService) RegisterOrConnect(email string) {
	connectRequest := sdk.ConnectRequest{
		ContactMethod: &sdk.ConnectRequest_Email{Email: email},
	}

	_, err := w.walletClient.ConnectExternalIdentity(w.base.GetContext(), &connectRequest)
	if err != nil { panic(err) }
}

func (w WalletService) CreateWallet(securityCode string) *sdk.WalletProfile {
	configuration, err := w.walletClient.GetProviderConfiguration(context.Background(), &empty.Empty{})
	if err != nil { panic(err) }
	resolveResponse, err := okapi.DidKey{}.Resolve(&okapi.ResolveRequest{Did: configuration.KeyAgreementKeyId})
	if err != nil { panic(err) }

	var providerExchangeKey *okapi.JsonWebKey
	for _, key := range resolveResponse.Keys {
		if key.Kid == configuration.KeyAgreementKeyId {
			providerExchangeKey = key
			break
		}
	}

	myKey, err := okapi.DidKey{}.Generate(&okapi.GenerateKeyRequest{KeyType: okapi.KeyType_Ed25519})
	if err != nil { panic(err) }

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
	if err != nil {panic(err)}
	packedMessage, err := okapi.DidComm{}.Pack(&okapi.PackRequest{
		SenderKey:   myExchangeKey,
		ReceiverKey: providerExchangeKey,
		Plaintext: walletBytes,
	})
	if err != nil { panic(err) }

	packedSdkMessage := OkapiEncryptedMessageToSdkEncryptedMessage(packedMessage.Message)
	response, err := w.walletClient.CreateWalletEncrypted(context.Background(), packedSdkMessage)
	if err != nil { panic(err) }

	decryptedResponse, err := okapi.DidComm{}.Unpack(&okapi.UnpackRequest{
		SenderKey:   providerExchangeKey,
		ReceiverKey: myExchangeKey,
		Message:     SdkEncryptedMessageToOkapiEncryptedMessage(response),
	})
	if err != nil { panic(err) }

	createWalletResponse := sdk.CreateWalletResponse{}
	err = proto.Unmarshal(decryptedResponse.Plaintext, &createWalletResponse)
	if err != nil { panic(err) }

	myKeyJwk, err := proto.Marshal(myKey.Key[0])
	if err != nil { panic(err) }
	jsonString, err := json.Marshal(myDidDocument)
	if err != nil { panic(err) }
	return &sdk.WalletProfile{
		DidDocument: &sdk.JsonPayload{Json: &sdk.JsonPayload_JsonString{JsonString: string(jsonString)}},
		WalletId:    createWalletResponse.WalletId,
		Invoker:     createWalletResponse.Invoker,
		Capability:  createWalletResponse.Capability,
		InvokerJwk:  myKeyJwk,
	}
}

func (w WalletService) IssueCredential(document map[string]interface{}) map[string]interface{} {
	jsonBytes, err := json.Marshal(document)
	if err != nil { panic(err) }
	issueRequest := sdk.IssueRequest{
		Document: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonBytes),
			},
		},
	}
	response, err := w.credentialClient.Issue(w.base.GetContext(), &issueRequest)
	if err != nil { panic(err) }
	var doc map[string]interface{}
	err = json.Unmarshal([]byte(response.Document.GetJsonString()), &doc)
	if err != nil { panic(err) }
	return doc
}

func (w WalletService) Search(query string) *sdk.SearchResponse {
	response, err := w.walletClient.Search(w.base.GetContext(), &sdk.SearchRequest{
		Query: query,
	})
	if err != nil { panic(err) }
	return response
}

func (w WalletService) InsertItem(item map[string]interface{}) string {
	jsonString, err := json.Marshal(item)
	if err != nil { panic(err) }
	response, err := w.walletClient.InsertItem(w.base.GetContext(), &sdk.InsertItemRequest{
		Item: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { panic(err) }
	return response.ItemId
}

func (w WalletService) Send(document map[string]interface{}, email string) {
	jsonString, err := json.Marshal(document)
	if err != nil { panic(err) }
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
	if err != nil { panic(err) }
}

func (w WalletService) CreateProof(documentId string, revealDocument map[string]interface{}) map[string]interface{} {
	jsonString, err := json.Marshal(revealDocument)
	if err != nil { panic(err) }
	proof, err := w.credentialClient.CreateProof(w.base.GetContext(), &sdk.CreateProofRequest{
		DocumentId: documentId,
		RevealDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { panic(err) }
	var proofMap map[string]interface{}
	err = json.Unmarshal([]byte(proof.ProofDocument.GetJsonString()), &proofMap)
	if err != nil { panic(err) }
	return proofMap
}

func (w WalletService) VerifyProof(proofDocument map[string]interface{}) bool {
	jsonString, err := json.Marshal(proofDocument)
	if err != nil { panic(err) }
	proof, err := w.credentialClient.VerifyProof(w.base.GetContext(), &sdk.VerifyProofRequest{
		ProofDocument: &sdk.JsonPayload{
			Json: &sdk.JsonPayload_JsonString{
				JsonString: string(jsonString),
			},
		},
	})
	if err != nil { panic(err) }
	return proof.Valid
}

func SdkEncryptedMessageToOkapiEncryptedMessage(message *sdk.EncryptedMessage) *okapi.EncryptedMessage {
	bytes, err := proto.Marshal(message)
	if err != nil {panic(err)}
	sdkMessage := okapi.EncryptedMessage{}
	err = proto.Unmarshal(bytes, &sdkMessage)
	if err != nil {panic(err)}
	return &sdkMessage
}

// OkapiEncryptedMessageToSdkEncryptedMessage exists because golang cannot convert identical structs
func OkapiEncryptedMessageToSdkEncryptedMessage(message *okapi.EncryptedMessage) *sdk.EncryptedMessage {
	bytes, err := proto.Marshal(message)
	if err != nil {panic(err)}
	sdkMessage := sdk.EncryptedMessage{}
	err = proto.Unmarshal(bytes, &sdkMessage)
	if err != nil {panic(err)}
	return &sdkMessage
}

type ProviderService struct {
	base ServiceBase
	channel *grpc.ClientConn
	providerClient sdk.ProviderClient
}

func CreateProviderService(serviceAddress string, channel *grpc.ClientConn) *ProviderService {
	channel = createChannelIfNeeded(serviceAddress, channel)

	service := ProviderService{
		base:           ServiceBase{},
		channel:        channel,
		providerClient: sdk.NewProviderClient(channel),
	}
	return &service
}

type IProviderService interface {
	IServiceBase
	InviteParticipant(request sdk.InviteRequest) sdk.InviteResponse
	InvitationStatus(request sdk.InvitationStatusRequest) sdk.InvitationStatusResponse
}

func (p ProviderService) InviteParticipant(request *sdk.InviteRequest) *sdk.InviteResponse {
	// TODO - Verify contact method is set
	response, err := p.providerClient.Invite(p.base.GetContext(), request)
	if err != nil { panic(err) }
	return response
}

func (p ProviderService) InvitationStatus(request *sdk.InvitationStatusRequest) *sdk.InvitationStatusResponse {
	// TODO - Verify onboarding reference is set
	response, err := p.providerClient.InvitationStatus(p.base.GetContext(), request)
	if err != nil { panic(err) }
	return response
}
