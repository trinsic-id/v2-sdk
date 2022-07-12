package services

import (
	"context"

	"github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/v1/credential"
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
		client:  credential.NewVerifiableCredentialClient(base.GetChannel()),
	}

	return service, nil
}

// CredentialService defines the interface for interacting with credentials
type CredentialService interface {
	Service
// BEGIN Interface Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: ..\sdk\go\services\credential_service.go

    // Issue  Sign and issue a verifiable credential from a submitted document.
// The document must be a valid JSON-LD document. 
    Issue(userContext context.Context, request *credential.IssueRequest) (*credential.IssueResponse, error)
    // IssueFromTemplate  Sign and issue a verifiable credential from a pre-defined template.
// This process will also add schema validation and 
// revocation registry values to the credential. 
    IssueFromTemplate(userContext context.Context, request *credential.IssueFromTemplateRequest) (*credential.IssueFromTemplateResponse, error)
    // CheckStatus  Check credential status in the revocation registry 
    CheckStatus(userContext context.Context, request *credential.CheckStatusRequest) (*credential.CheckStatusResponse, error)
    // UpdateStatus  Update credential status by setting the revocation value 
    UpdateStatus(userContext context.Context, request *credential.UpdateStatusRequest) (*credential.UpdateStatusResponse, error)
    // CreateProof  Create a proof from a signed document that is a valid
// verifiable credential and contains a signature from which a proof can be derived. 
    CreateProof(userContext context.Context, request *credential.CreateProofRequest) (*credential.CreateProofResponse, error)
    // VerifyProof  Verifies a proof by checking the signature value, and if possible schema validation,
// revocation status, and issuer status against a trust registry 
    VerifyProof(userContext context.Context, request *credential.VerifyProofRequest) (*credential.VerifyProofResponse, error)
    // Send  Sends a document directly to a user's email within the given ecosystem 
    Send(userContext context.Context, request *credential.SendRequest) (*credential.SendResponse, error)

// END Interface Code generated by protoc-gen-trinsic. DO NOT EDIT.
}

type credentialBase struct {
	Service
	client credential.VerifiableCredentialClient
}

// BEGIN Implementation Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: ..\sdk\go\services\credential_service.go

// Issue  Sign and issue a verifiable credential from a submitted document.
// The document must be a valid JSON-LD document.
func (c *credentialBase) Issue(userContext context.Context, request *credential.IssueRequest) (*credential.IssueResponse, error) {
    // TODO - Handle a flag for the metadata context
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
// IssueFromTemplate  Sign and issue a verifiable credential from a pre-defined template.
// This process will also add schema validation and 
// revocation registry values to the credential.
func (c *credentialBase) IssueFromTemplate(userContext context.Context, request *credential.IssueFromTemplateRequest) (*credential.IssueFromTemplateResponse, error) {
    // TODO - Handle a flag for the metadata context
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
// CheckStatus  Check credential status in the revocation registry
func (c *credentialBase) CheckStatus(userContext context.Context, request *credential.CheckStatusRequest) (*credential.CheckStatusResponse, error) {
    // TODO - Handle a flag for the metadata context
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
// UpdateStatus  Update credential status by setting the revocation value
func (c *credentialBase) UpdateStatus(userContext context.Context, request *credential.UpdateStatusRequest) (*credential.UpdateStatusResponse, error) {
    // TODO - Handle a flag for the metadata context
	md, err := c.GetMetadataContext(userContext, request)
    if err != nil {
        return nil, err
    }
    response, err := c.client.UpdateStatus(md, request)
    if err != nil {
		return nil, err
	}
	return response, nil
}
// CreateProof  Create a proof from a signed document that is a valid
// verifiable credential and contains a signature from which a proof can be derived.
func (c *credentialBase) CreateProof(userContext context.Context, request *credential.CreateProofRequest) (*credential.CreateProofResponse, error) {
    // TODO - Handle a flag for the metadata context
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
// VerifyProof  Verifies a proof by checking the signature value, and if possible schema validation,
// revocation status, and issuer status against a trust registry
func (c *credentialBase) VerifyProof(userContext context.Context, request *credential.VerifyProofRequest) (*credential.VerifyProofResponse, error) {
    // TODO - Handle a flag for the metadata context
	md, err := c.GetMetadataContext(userContext, request)
    if err != nil {
        return nil, err
    }
    response, err := c.client.VerifyProof(md, request)
    if err != nil {
		return nil, err
	}
	return response, nil
}
// Send  Sends a document directly to a user's email within the given ecosystem
func (c *credentialBase) Send(userContext context.Context, request *credential.SendRequest) (*credential.SendResponse, error) {
    // TODO - Handle a flag for the metadata context
	md, err := c.GetMetadataContext(userContext, request)
    if err != nil {
        return nil, err
    }
    response, err := c.client.Send(md, request)
    if err != nil {
		return nil, err
	}
	return response, nil
}
// END Implementation Code generated by protoc-gen-trinsic. DO NOT EDIT.