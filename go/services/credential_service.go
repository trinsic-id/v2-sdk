package services

import (
	"context"
	credentialsV1 "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/v1"
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
		client:  credentialsV1.NewVerifiableCredentialClient(base.GetChannel()),
	}

	return service, nil
}

// CredentialService defines the interface for interacting with credentials
type CredentialService interface {
	Service
	// IssueCredential using a document json
	IssueCredential(userContext context.Context, request *credentialsV1.IssueRequest) (*credentialsV1.IssueResponse, error)
	// IssueFromTemplate issues a credential using a template
	IssueFromTemplate(userContext context.Context, request *credentialsV1.IssueFromTemplateRequest) (*credentialsV1.IssueFromTemplateResponse, error)
	// CheckStatus of the credential
	CheckStatus(userContext context.Context, request *credentialsV1.CheckStatusRequest) (*credentialsV1.CheckStatusResponse, error)
	// UpdateStatus of the credential (i.e. revoke)
	UpdateStatus(userContext context.Context, request *credentialsV1.UpdateStatusRequest) (*credentialsV1.UpdateStatusResponse, error)
	// CreateProof using either a credential in a cloud wallet or based on the json document provided
	CreateProof(userContext context.Context, request *credentialsV1.CreateProofRequest) (*credentialsV1.CreateProofResponse, error)
	// VerifyProof presentation
	VerifyProof(userContext context.Context, request *credentialsV1.VerifyProofRequest) (bool, error)
	// Send a credential to another use's wallet
	Send(userContext context.Context, request *credentialsV1.SendRequest) error
}

type credentialBase struct {
	Service
	client credentialsV1.VerifiableCredentialClient
}

func (c *credentialBase) IssueCredential(userContext context.Context, request *credentialsV1.IssueRequest) (*credentialsV1.IssueResponse, error) {
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

func (c *credentialBase) IssueFromTemplate(userContext context.Context, request *credentialsV1.IssueFromTemplateRequest) (*credentialsV1.IssueFromTemplateResponse, error) {
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

func (c *credentialBase) CreateProof(userContext context.Context, request *credentialsV1.CreateProofRequest) (*credentialsV1.CreateProofResponse, error) {
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

func (c *credentialBase) VerifyProof(userContext context.Context, request *credentialsV1.VerifyProofRequest) (bool, error) {
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

func (c *credentialBase) CheckStatus(userContext context.Context, request *credentialsV1.CheckStatusRequest) (*credentialsV1.CheckStatusResponse, error) {
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

func (c *credentialBase) UpdateStatus(userContext context.Context, request *credentialsV1.UpdateStatusRequest) (*credentialsV1.UpdateStatusResponse, error) {
	md, err := c.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := c.client.UpdateStatus(md, request)
	if err != nil {
		return nil, err
	}
	return response, err
}

func (c *credentialBase) Send(userContext context.Context, request *credentialsV1.SendRequest) error {
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
