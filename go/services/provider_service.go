package services

import (
	"context"
	"errors"
	providerV1 "github.com/trinsic-id/sdk/go/proto/provider/v1"
)

// NewProviderService returns a provider servcie with the base service configured
// using the provided options
func NewProviderService(options *Options) (ProviderService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &providerBase{
		Service: base,
		client:  providerV1.NewProviderClient(base.GetChannel()),
	}

	return service, nil
}

// ProviderService wraps all the functions for interacting with providers (ecosystems)
type ProviderService interface {
	Service
	// InviteParticipant to the ecosystem
	InviteParticipant(userContext context.Context, request *providerV1.InviteRequest) (*providerV1.InviteResponse, error)
	// InvitationStatus returns the status of the invitation
	InvitationStatus(userContext context.Context, request *providerV1.InvitationStatusRequest) (*providerV1.InvitationStatusResponse, error)
	// CreateEcosystem creates a new ecosystem
	CreateEcosystem(ctx context.Context, request *providerV1.CreateEcosystemRequest) (*providerV1.CreateEcosystemResponse, error)
	// GenerateToken returns an authToken that can be used for interacting with the ecosystem
	GenerateToken(ctx context.Context, description string) (string, error)
}

type providerBase struct {
	Service
	client providerV1.ProviderClient
}

func (p *providerBase) InviteParticipant(ctx context.Context, request *providerV1.InviteRequest) (*providerV1.InviteResponse, error) {
	if request == nil || request.Details == nil || len(request.Details.Email) == 0 {
		return nil, errors.New("must provide email to invite")
	}

	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.Invite(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) InvitationStatus(ctx context.Context, request *providerV1.InvitationStatusRequest) (*providerV1.InvitationStatusResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.InvitationStatus(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) CreateEcosystem(ctx context.Context, request *providerV1.CreateEcosystemRequest) (*providerV1.CreateEcosystemResponse, error) {
	resp, err := p.client.CreateEcosystem(ctx, request)
	if err != nil {
		return nil, err
	}

	return resp, nil
}

func (p *providerBase) GenerateToken(ctx context.Context, description string) (string, error) {
	req := &providerV1.GenerateTokenRequest{Description: description}

	md, err := p.GetMetadataContext(ctx, req)
	if err != nil {
		return "", nil
	}

	resp, err := p.client.GenerateToken(md, req)
	if err != nil {
		return "", err
	}

	return ProfileToToken(resp.Profile)
}
