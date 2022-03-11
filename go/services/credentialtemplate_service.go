package services

import (
	"context"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

// NewCredentialTemplateService returns a credential template servcie with the base service configured
// using the provided options
func NewCredentialTemplateService(options *Options) (CredentialTemplateService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &credentialTemplateBase{
		Service: base,
		client:  sdk.NewCredentialTemplatesClient(base.GetChannel()),
	}

	return service, nil
}

// CredentialTemplateService defines the interface for interacting with credentials templates
type CredentialTemplateService interface {
	Service
	// Create a credential template
	Create(userContext context.Context, request *sdk.CreateCredentialTemplateRequest) (*sdk.CreateCredentialTemplateResponse, error)
	// Get a specific credential template
	Get(userContext context.Context, request *sdk.GetCredentialTemplateRequest) (*sdk.GetCredentialTemplateResponse, error)
	// List available credential templates
	List(userContext context.Context, request *sdk.ListCredentialTemplatesRequest) (*sdk.ListCredentialTemplatesResponse, error)
	// Search for a template
	Search(userContext context.Context, request *sdk.SearchCredentialTemplatesRequest) (*sdk.SearchCredentialTemplatesResponse, error)
	// Delete a template
	Delete(userContext context.Context, request *sdk.DeleteCredentialTemplateRequest) (*sdk.DeleteCredentialTemplateResponse, error)
}

type credentialTemplateBase struct {
	Service
	client sdk.CredentialTemplatesClient
}

func (c *credentialTemplateBase) Create(userContext context.Context, request *sdk.CreateCredentialTemplateRequest) (*sdk.CreateCredentialTemplateResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.Create(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *credentialTemplateBase) Get(userContext context.Context, request *sdk.GetCredentialTemplateRequest) (*sdk.GetCredentialTemplateResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.Get(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *credentialTemplateBase) List(userContext context.Context, request *sdk.ListCredentialTemplatesRequest) (*sdk.ListCredentialTemplatesResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.List(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *credentialTemplateBase) Search(userContext context.Context, request *sdk.SearchCredentialTemplatesRequest) (*sdk.SearchCredentialTemplatesResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.Search(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *credentialTemplateBase) Delete(userContext context.Context, request *sdk.DeleteCredentialTemplateRequest) (*sdk.DeleteCredentialTemplateResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.Delete(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}
