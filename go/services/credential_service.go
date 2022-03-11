package services

import (
	"context"
	"fmt"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

// NewCredentialService returns a credential service with the base service configured
// using the provided options
func NewCredentialService(options *Options) (CredentialService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &credentialBase{
		Service: base,
		client:  sdk.NewVerifiableCredentialClient(base.GetChannel()),
	}

	return service, nil
}

// CredentialService defines the interface for interacting with credentials
type CredentialService interface {
	Service
	// IssueCredential using a document json
	IssueCredential(userContext context.Context, request *sdk.IssueRequest) (*sdk.IssueResponse, error)
	// IssueFromTemplate issues a credential using a template
	IssueFromTemplate(userContext context.Context, request *sdk.IssueFromTemplateRequest) (*sdk.IssueFromTemplateResponse, error)
	// CheckStatus of the credential
	CheckStatus(userContext context.Context, request *sdk.CheckStatusRequest) (*sdk.CheckStatusResponse, error)
	// UpdateStatus of the credential (i.e. revoke)
	UpdateStatus(userContext context.Context, request *sdk.UpdateStatusRequest) (*sdk.UpdateStatusResponse, error)
	// CreateProof using either a credential in a cloud wallet or based on the json document provided
	CreateProof(userContext context.Context, request *sdk.CreateProofRequest) (*sdk.CreateProofResponse, error)
	// VerifyProof presentation
	VerifyProof(userContext context.Context, request *sdk.VerifyProofRequest) (bool, error)
	// Send a credential to another use's wallet
	Send(userContext context.Context, request *sdk.SendRequest) error
}

type credentialBase struct {
	Service
	client sdk.VerifiableCredentialClient
}

func (c *credentialBase) IssueCredential(userContext context.Context, request *sdk.IssueRequest) (*sdk.IssueResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := c.client.Issue(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (c *credentialBase) IssueFromTemplate(userContext context.Context, request *sdk.IssueFromTemplateRequest) (*sdk.IssueFromTemplateResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := c.client.IssueFromTemplate(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (c *credentialBase) CreateProof(userContext context.Context, request *sdk.CreateProofRequest) (*sdk.CreateProofResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := c.client.CreateProof(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (c *credentialBase) VerifyProof(userContext context.Context, request *sdk.VerifyProofRequest) (bool, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return false, err
	}

	proof, err := c.client.VerifyProof(md, request)
	if err != nil {
		return false, err
	}

	return proof.IsValid, nil
}

func (c *credentialBase) CheckStatus(userContext context.Context, request *sdk.CheckStatusRequest) (*sdk.CheckStatusResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.CheckStatus(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *credentialBase) UpdateStatus(userContext context.Context, request *sdk.UpdateStatusRequest) (*sdk.UpdateStatusResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.UpdateStatus(md, request)
	if err != nil {
		return nil, err
	}
	if response.Status == sdk.ResponseStatus_SUCCESS {
		return response, nil
	}
	return response, fmt.Errorf("error - did not run to completion %s", response.Status)
}

func (c *credentialBase) Send(userContext context.Context, request *sdk.SendRequest) error {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}

	_, err = c.client.Send(md, request)
	if err != nil {
		return err
	}

	return nil
}
