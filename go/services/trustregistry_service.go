package services

import (
	"context"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"net/url"
)

func NewTrustRegistryService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (TrustRegistryService, error) {
	base, err := NewServiceBase(profile, serverConfig, channel)
	if err != nil {
		return nil, err
	}
	service := &TrustRegistryBase{
		ServiceBase: base,
		client:      sdk.NewTrustRegistryClient(base.channel),
	}

	return service, nil
}

type TrustRegistryService interface {
	Service
	RegisterGovernanceFramework(userContext context.Context, governanceFramework string, description string) error
	RemoveGovernanceFramework(userContext context.Context, request *sdk.RemoveFrameworkRequest) (*sdk.RemoveFrameworkResponse, error)
	RegisterIssuer(userContext context.Context, request *sdk.RegisterIssuerRequest) error
	UnregisterIssuer(userContext context.Context, request *sdk.UnregisterIssuerRequest) error
	RegisterVerifier(userContext context.Context, request *sdk.RegisterVerifierRequest) error
	UnregisterVerifier(userContext context.Context, request *sdk.UnregisterVerifierRequest) error
	CheckIssuerStatus(userContext context.Context, request *sdk.CheckIssuerStatusRequest) (sdk.RegistrationStatus, error)
	CheckVerifierStatus(userContext context.Context, request *sdk.CheckVerifierStatusRequest) (sdk.RegistrationStatus, error)
	SearchRegistry(userContext context.Context, query string) (*sdk.SearchRegistryResponse, error)
	FetchData(userContext context.Context, request *sdk.FetchDataRequest) (sdk.TrustRegistry_FetchDataClient, error)
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

func (t *TrustRegistryBase) RegisterIssuer(userContext context.Context, request *sdk.RegisterIssuerRequest) error {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	response, err := t.client.RegisterIssuer(md, request)
	if err != nil {
		return err
	}
	if response.Status != sdk.ResponseStatus_SUCCESS {
		return fmt.Errorf("cannot register issuer: code %s", response.Status)
	}
	return nil
}

func (t *TrustRegistryBase) UnregisterIssuer(userContext context.Context, request *sdk.UnregisterIssuerRequest) error {
	panic("implement me")
}

func (t *TrustRegistryBase) RegisterVerifier(userContext context.Context, request *sdk.RegisterVerifierRequest) error {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}
	response, err := t.client.RegisterVerifier(md, request)
	if err != nil {
		return err
	}
	if response.Status != sdk.ResponseStatus_SUCCESS {
		return fmt.Errorf("cannot register verifier: code %s", response.Status)
	}
	return nil
}

func (t *TrustRegistryBase) UnregisterVerifier(userContext context.Context, request *sdk.UnregisterVerifierRequest) error {
	panic("implement me")
}

func (t *TrustRegistryBase) CheckIssuerStatus(userContext context.Context, request *sdk.CheckIssuerStatusRequest) (sdk.RegistrationStatus, error) {
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

func (t *TrustRegistryBase) CheckVerifierStatus(userContext context.Context, request *sdk.CheckVerifierStatusRequest) (sdk.RegistrationStatus, error) {
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
	if query == "" {
		query = "SELECT * FROM c"
	}
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

func (t *TrustRegistryBase) RemoveGovernanceFramework(userContext context.Context, request *sdk.RemoveFrameworkRequest) (*sdk.RemoveFrameworkResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.RemoveFramework(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (t *TrustRegistryBase) FetchData(userContext context.Context, request *sdk.FetchDataRequest) (sdk.TrustRegistry_FetchDataClient, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.FetchData(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}
