package services

import (
	"context"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

func NewCredentialTemplateService(options *sdk.ServiceOptions) (CredentialTemplateService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &CredentialTemplateBase{
		ServiceBase: base,
		client:      sdk.NewCredentialTemplatesClient(base.channel),
	}

	return service, nil
}

type CredentialTemplateService interface {
	Service
	Create(userContext context.Context, request *sdk.CreateCredentialTemplateRequest) (*sdk.CreateCredentialTemplateResponse, error)
	Get(userContext context.Context, request *sdk.GetCredentialTemplateRequest) (*sdk.GetCredentialTemplateResponse, error)
	List(userContext context.Context, request *sdk.ListCredentialTemplatesRequest) (*sdk.ListCredentialTemplatesResponse, error)
	Search(userContext context.Context, request *sdk.SearchCredentialTemplatesRequest) (*sdk.SearchCredentialTemplatesResponse, error)
	Delete(userContext context.Context, request *sdk.DeleteCredentialTemplateRequest) (*sdk.DeleteCredentialTemplateResponse, error)
}

type CredentialTemplateBase struct {
	*ServiceBase
	client sdk.CredentialTemplatesClient
}

func (c *CredentialTemplateBase) Create(userContext context.Context, request *sdk.CreateCredentialTemplateRequest) (*sdk.CreateCredentialTemplateResponse, error) {
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

func (c *CredentialTemplateBase) Get(userContext context.Context, request *sdk.GetCredentialTemplateRequest) (*sdk.GetCredentialTemplateResponse, error) {
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

func (c *CredentialTemplateBase) List(userContext context.Context, request *sdk.ListCredentialTemplatesRequest) (*sdk.ListCredentialTemplatesResponse, error) {
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

func (c *CredentialTemplateBase) Search(userContext context.Context, request *sdk.SearchCredentialTemplatesRequest) (*sdk.SearchCredentialTemplatesResponse, error) {
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

func (c *CredentialTemplateBase) Delete(userContext context.Context, request *sdk.DeleteCredentialTemplateRequest) (*sdk.DeleteCredentialTemplateResponse, error) {
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
