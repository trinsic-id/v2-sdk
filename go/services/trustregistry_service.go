package services

import (
	"context"

	"github.com/trinsic-id/sdk/go/proto/services/trustregistry/v1/trustregistry"
)

// NewTrustRegistryService returns a trust registry service with the base service configured
// using the provided options
func NewTrustRegistryService(options *Options) (TrustRegistryService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &trustRegistryBase{
		Service: base,
		client:  trustregistry.NewTrustRegistryClient(base.GetChannel()),
	}

	return service, nil
}

// TrustRegistryService defines the interface for interacting with trust registries
type TrustRegistryService interface {
	Service

	Search(userContext context.Context, request *trustregistry.SearchRegistryRequest) (*trustregistry.SearchRegistryResponse, error)
// BEGIN Interface Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: D:\trinsic\sdk\go\services\trustregistry_service.go

    // AddFramework  Add a governance framework to the ecosystem 
    AddFramework(userContext context.Context, request *trustregistry.AddFrameworkRequest) (*trustregistry.AddFrameworkResponse, error)
    // RemoveFramework  Remove a governance framework from the ecosystem 
    RemoveFramework(userContext context.Context, request *trustregistry.RemoveFrameworkRequest) (*trustregistry.RemoveFrameworkResponse, error)
    // SearchRegistry  Search the ecosystem's governance frameworks 
    SearchRegistry(userContext context.Context, request *trustregistry.SearchRegistryRequest) (*trustregistry.SearchRegistryResponse, error)
    // RegisterMember  Register an authoritative issuer for a credential schema 
    RegisterMember(userContext context.Context, request *trustregistry.RegisterMemberRequest) (*trustregistry.RegisterMemberResponse, error)
    // UnregisterMember  Removes an authoritative issuer for a credential schema from the trust registry 
    UnregisterMember(userContext context.Context, request *trustregistry.UnregisterMemberRequest) (*trustregistry.UnregisterMemberResponse, error)
    // GetMembershipStatus  Fetch the membership status of an issuer for a given credential schema in a trust registry 
    GetMembershipStatus(userContext context.Context, request *trustregistry.GetMembershipStatusRequest) (*trustregistry.GetMembershipStatusResponse, error)

// END Interface Code generated by protoc-gen-trinsic. DO NOT EDIT.
}

type trustRegistryBase struct {
	Service
	client trustregistry.TrustRegistryClient
}

func (t *trustRegistryBase) Search(userContext context.Context, request *trustregistry.SearchRegistryRequest) (*trustregistry.SearchRegistryResponse, error) {
	if request == nil {
		request = &trustregistry.SearchRegistryRequest{}
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

// BEGIN Implementation Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: D:\trinsic\sdk\go\services\trustregistry_service.go

// AddFramework  Add a governance framework to the ecosystem
func (t *trustRegistryBase) AddFramework(userContext context.Context, request *trustregistry.AddFrameworkRequest) (*trustregistry.AddFrameworkResponse, error) {
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
// RemoveFramework  Remove a governance framework from the ecosystem
func (t *trustRegistryBase) RemoveFramework(userContext context.Context, request *trustregistry.RemoveFrameworkRequest) (*trustregistry.RemoveFrameworkResponse, error) {
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
// SearchRegistry  Search the ecosystem's governance frameworks
func (t *trustRegistryBase) SearchRegistry(userContext context.Context, request *trustregistry.SearchRegistryRequest) (*trustregistry.SearchRegistryResponse, error) {
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
// RegisterMember  Register an authoritative issuer for a credential schema
func (t *trustRegistryBase) RegisterMember(userContext context.Context, request *trustregistry.RegisterMemberRequest) (*trustregistry.RegisterMemberResponse, error) {
    md, err := t.GetMetadataContext(userContext, request)
    if err != nil {
        return nil, err
    }
    response, err := t.client.RegisterMember(md, request)
    if err != nil {
		return nil, err
	}
	return response, nil
}
// UnregisterMember  Removes an authoritative issuer for a credential schema from the trust registry
func (t *trustRegistryBase) UnregisterMember(userContext context.Context, request *trustregistry.UnregisterMemberRequest) (*trustregistry.UnregisterMemberResponse, error) {
    md, err := t.GetMetadataContext(userContext, request)
    if err != nil {
        return nil, err
    }
    response, err := t.client.UnregisterMember(md, request)
    if err != nil {
		return nil, err
	}
	return response, nil
}
// GetMembershipStatus  Fetch the membership status of an issuer for a given credential schema in a trust registry
func (t *trustRegistryBase) GetMembershipStatus(userContext context.Context, request *trustregistry.GetMembershipStatusRequest) (*trustregistry.GetMembershipStatusResponse, error) {
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
// END Implementation Code generated by protoc-gen-trinsic. DO NOT EDIT.
