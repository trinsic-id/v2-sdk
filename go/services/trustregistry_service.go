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
	// target: /home/runner/work/sdk/sdk/go/services/trustregistry_service.go

	// RegisterMember  Register an authoritative issuer for a credential schema
	RegisterMember(userContext context.Context, request *trustregistry.RegisterMemberRequest) (*trustregistry.RegisterMemberResponse, error)
	// UnregisterMember  Removes an authoritative issuer for a credential schema from the trust registry
	UnregisterMember(userContext context.Context, request *trustregistry.UnregisterMemberRequest) (*trustregistry.UnregisterMemberResponse, error)
	// GetMemberAuthorizationStatus  Fetch the status of a member for a given credential schema in a trust registry
	GetMemberAuthorizationStatus(userContext context.Context, request *trustregistry.GetMemberAuthorizationStatusRequest) (*trustregistry.GetMemberAuthorizationStatusResponse, error)
	// ListAuthorizedMembers  Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
	ListAuthorizedMembers(userContext context.Context, request *trustregistry.ListAuthorizedMembersRequest) (*trustregistry.ListAuthorizedMembersResponse, error)
	// GetMember  Get member for a given did in a trust registry
	GetMember(userContext context.Context, request *trustregistry.GetMemberRequest) (*trustregistry.GetMemberResponse, error)

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
// target: /home/runner/work/sdk/sdk/go/services/trustregistry_service.go

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

// GetMemberAuthorizationStatus  Fetch the status of a member for a given credential schema in a trust registry
func (t *trustRegistryBase) GetMemberAuthorizationStatus(userContext context.Context, request *trustregistry.GetMemberAuthorizationStatusRequest) (*trustregistry.GetMemberAuthorizationStatusResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.GetMemberAuthorizationStatus(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// ListAuthorizedMembers  Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
func (t *trustRegistryBase) ListAuthorizedMembers(userContext context.Context, request *trustregistry.ListAuthorizedMembersRequest) (*trustregistry.ListAuthorizedMembersResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.ListAuthorizedMembers(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// GetMember  Get member for a given did in a trust registry
func (t *trustRegistryBase) GetMember(userContext context.Context, request *trustregistry.GetMemberRequest) (*trustregistry.GetMemberResponse, error) {
	md, err := t.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := t.client.GetMember(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// END Implementation Code generated by protoc-gen-trinsic. DO NOT EDIT.
