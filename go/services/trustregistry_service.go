package services

import (
	"context"
	trustregistryV1 "github.com/trinsic-id/sdk/go/proto/trustregistry/v1"
	"net/url"
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
		client:  trustregistryV1.NewTrustRegistryClient(base.GetChannel()),
	}

	return service, nil
}

// TrustRegistryService defines the interface for interacting with trust registries
type TrustRegistryService interface {
	Service
	// RegisterGovernanceFramework in the ecosystem
	RegisterGovernanceFramework(userContext context.Context, request *trustregistryV1.AddFrameworkRequest) (*trustregistryV1.AddFrameworkResponse, error)
	// RemoveGovernanceFramework from the ecosystem
	RemoveGovernanceFramework(userContext context.Context, request *trustregistryV1.RemoveFrameworkRequest) (*trustregistryV1.RemoveFrameworkResponse, error)
	// RegisterMember to issue the given credentials within the governance framework
	RegisterMember(userContext context.Context, request *trustregistryV1.RegisterMemberRequest) (*trustregistryV1.RegisterMemberResponse, error)
	// UnregisterMember in the given governance framework
	UnregisterMember(userContext context.Context, request *trustregistryV1.UnregisterMemberRequest) (*trustregistryV1.UnregisterMemberResponse, error)
	// GetMembershipStatus indicates whether the given member has a status within the given framework
	GetMembershipStatus(userContext context.Context, request *trustregistryV1.GetMembershipStatusRequest) (*trustregistryV1.GetMembershipStatusResponse, error)
	// SearchRegistry for frameworks, issues, and verifiers
	SearchRegistry(userContext context.Context, request *trustregistryV1.SearchRegistryRequest) (*trustregistryV1.SearchRegistryResponse, error)
	// FetchData from the provided governance framework
	FetchData(userContext context.Context, request *trustregistryV1.FetchDataRequest) (trustregistryV1.TrustRegistry_FetchDataClient, error)
}

type trustRegistryBase struct {
	Service
	client trustregistryV1.TrustRegistryClient
}

func (t *trustRegistryBase) RegisterGovernanceFramework(userContext context.Context, request *trustregistryV1.AddFrameworkRequest) (*trustregistryV1.AddFrameworkResponse, error) {
	// Verify that it is a valid uri
	_, err := url.Parse(request.GovernanceFrameworkUri)
	if err != nil {
		return nil, err
	}

	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := t.client.AddFramework(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (t *trustRegistryBase) RegisterMember(userContext context.Context, request *trustregistryV1.RegisterMemberRequest) (*trustregistryV1.RegisterMemberResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := t.client.RegisterMember(md, request)
	return response, err
}

func (t *trustRegistryBase) UnregisterMember(userContext context.Context, request *trustregistryV1.UnregisterMemberRequest) (*trustregistryV1.UnregisterMemberResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := t.client.UnregisterMember(md, request)
	return response, err
}

func (t *trustRegistryBase) GetMembershipStatus(userContext context.Context, request *trustregistryV1.GetMembershipStatusRequest) (*trustregistryV1.GetMembershipStatusResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := t.client.GetMembershipStatus(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (t *trustRegistryBase) SearchRegistry(userContext context.Context, request *trustregistryV1.SearchRegistryRequest) (*trustregistryV1.SearchRegistryResponse, error) {
	if request == nil {
		request = &trustregistryV1.SearchRegistryRequest{}
	}

	if request.Query == "" {
		request.Query = "SELECT * FROM c OFFSET 0 LIMIT 100"
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

func (t *trustRegistryBase) RemoveGovernanceFramework(userContext context.Context, request *trustregistryV1.RemoveFrameworkRequest) (*trustregistryV1.RemoveFrameworkResponse, error) {
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

func (t *trustRegistryBase) FetchData(userContext context.Context, request *trustregistryV1.FetchDataRequest) (trustregistryV1.TrustRegistry_FetchDataClient, error) {
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
