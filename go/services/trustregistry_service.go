package services

import (
	"context"
	"fmt"
	"net/url"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

// NewTrustRegistryService returns a trust registry servcie with the base service configured
// using the provided options
func NewTrustRegistryService(options *Options) (TrustRegistryService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &trustRegistryBase{
		Service: base,
		client:  sdk.NewTrustRegistryClient(base.GetChannel()),
	}

	return service, nil
}

// TrustRegistryService defines the interface for interacting with trust registries
type TrustRegistryService interface {
	Service
	// RegisterGovernanceFramework in the ecosystem
	RegisterGovernanceFramework(userContext context.Context, request *sdk.AddFrameworkRequest) error
	// RemoveGovernanceFramework from the ecosystem
	RemoveGovernanceFramework(userContext context.Context, request *sdk.RemoveFrameworkRequest) (*sdk.RemoveFrameworkResponse, error)
	// RegisterIssuer to issue the given credentials within the governance framework
	RegisterIssuer(userContext context.Context, request *sdk.RegisterIssuerRequest) error
	// UnregisterIssuer from issuing given credentials within the governance framework
	UnregisterIssuer(userContext context.Context, request *sdk.UnregisterIssuerRequest) error
	// RegisterVerifier in the given governance framework
	RegisterVerifier(userContext context.Context, request *sdk.RegisterVerifierRequest) error
	// UnregisterVerifier in the given governance framework
	UnregisterVerifier(userContext context.Context, request *sdk.UnregisterVerifierRequest) error
	// CheckIssuerStatus indicates whether the given issuer is authorized to issue credentials
	// within the given framework
	CheckIssuerStatus(userContext context.Context, request *sdk.CheckIssuerStatusRequest) (sdk.RegistrationStatus, error)
	// CheckVerifierStatus indicates whether the given verifier is authorized to verify credentials
	// within the given framework
	CheckVerifierStatus(userContext context.Context, request *sdk.CheckVerifierStatusRequest) (sdk.RegistrationStatus, error)
	// SearchRegistry for frameworks, issues, and verifiers
	SearchRegistry(userContext context.Context, request *sdk.SearchRegistryRequest) (*sdk.SearchRegistryResponse, error)
	// FetchData from the provided governance framework
	FetchData(userContext context.Context, request *sdk.FetchDataRequest) (sdk.TrustRegistry_FetchDataClient, error)
}

type trustRegistryBase struct {
	Service
	client sdk.TrustRegistryClient
}

func (t *trustRegistryBase) RegisterGovernanceFramework(userContext context.Context, request *sdk.AddFrameworkRequest) error {
	// Verify that it is a valid uri
	_, err := url.Parse(request.GovernanceFramework.TrustRegistryUri)
	if err != nil {
		return err
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

func (t *trustRegistryBase) RegisterIssuer(userContext context.Context, request *sdk.RegisterIssuerRequest) error {
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

func (t *trustRegistryBase) UnregisterIssuer(userContext context.Context, request *sdk.UnregisterIssuerRequest) error {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}

	response, err := t.client.UnregisterIssuer(md, request)
	if err != nil {
		return err
	}

	if response.Status != sdk.ResponseStatus_SUCCESS {
		return fmt.Errorf("cannot unregister issuer: code %s", response.Status)
	}

	return nil
}

func (t *trustRegistryBase) RegisterVerifier(userContext context.Context, request *sdk.RegisterVerifierRequest) error {
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

func (t *trustRegistryBase) UnregisterVerifier(userContext context.Context, request *sdk.UnregisterVerifierRequest) error {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}

	response, err := t.client.UnregisterVerifier(md, request)
	if err != nil {
		return err
	}

	if response.Status != sdk.ResponseStatus_SUCCESS {
		return fmt.Errorf("cannot unregister verifier: code %s", response.Status)
	}

	return nil
}

func (t *trustRegistryBase) CheckIssuerStatus(userContext context.Context, request *sdk.CheckIssuerStatusRequest) (sdk.RegistrationStatus, error) {
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

func (t *trustRegistryBase) CheckVerifierStatus(userContext context.Context, request *sdk.CheckVerifierStatusRequest) (sdk.RegistrationStatus, error) {
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

func (t *trustRegistryBase) SearchRegistry(userContext context.Context, request *sdk.SearchRegistryRequest) (*sdk.SearchRegistryResponse, error) {
	if request == nil {
		request = &sdk.SearchRegistryRequest{}
	}

	if request.Query == "" {
		request.Query = "SELECT * FROM c"
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

func (t *trustRegistryBase) RemoveGovernanceFramework(userContext context.Context, request *sdk.RemoveFrameworkRequest) (*sdk.RemoveFrameworkResponse, error) {
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

func (t *trustRegistryBase) FetchData(userContext context.Context, request *sdk.FetchDataRequest) (sdk.TrustRegistry_FetchDataClient, error) {
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
