package services

import (
	"context"
	"errors"

	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
)

// NewProviderService returns a provider service with the base service configured
// using the provided options
func NewProviderService(options *Options) (ProviderService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &providerBase{
		Service: base,
		client:  provider.NewProviderClient(base.GetChannel()),
	}

	return service, nil
}

// ProviderService wraps all the functions for interacting with providers (ecosystems)
type ProviderService interface {
	Service
	// CreateEcosystem creates a new ecosystem
	CreateEcosystem(ctx context.Context, request *provider.CreateEcosystemRequest) (*provider.CreateEcosystemResponse, error)
	// UpdateEcosystem update an existing ecosystem
	UpdateEcosystem(ctx context.Context, request *provider.UpdateEcosystemRequest) (*provider.UpdateEcosystemResponse, error)
	AddWebhook(ctx context.Context, request *provider.AddWebhookRequest) (*provider.AddWebhookResponse, error)
	DeleteWebhook(ctx context.Context, request *provider.DeleteWebhookRequest) (*provider.DeleteWebhookResponse, error)
	EcosystemInfo(ctx context.Context, request *provider.EcosystemInfoRequest) (*provider.EcosystemInfoResponse, error)
	// GenerateToken returns an authToken that can be used for interacting with the ecosystem
	GenerateToken(ctx context.Context, request *provider.GenerateTokenRequest) (*provider.GenerateTokenResponse, error)
	// InviteParticipant to the ecosystem
	InviteParticipant(userContext context.Context, request *provider.InviteRequest) (*provider.InviteResponse, error)
	// InvitationStatus returns the status of the invitation
	InvitationStatus(userContext context.Context, request *provider.InvitationStatusRequest) (*provider.InvitationStatusResponse, error)
	// GenerateToken returns an authToken that can be used for interacting with the ecosystem
	GetOberonKey(ctx context.Context, request *provider.GetOberonKeyRequest) (*provider.GetOberonKeyResponse, error)
	// GenerateToken returns an authToken that can be used for interacting with the ecosystem
	GetEventToken(ctx context.Context, request *provider.GetEventTokenRequest) (*provider.GetEventTokenResponse, error)
}

type providerBase struct {
	Service
	client provider.ProviderClient
}

func (p *providerBase) UpdateEcosystem(ctx context.Context, request *provider.UpdateEcosystemRequest) (*provider.UpdateEcosystemResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.UpdateEcosystem(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) AddWebhook(ctx context.Context, request *provider.AddWebhookRequest) (*provider.AddWebhookResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.AddWebhook(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) DeleteWebhook(ctx context.Context, request *provider.DeleteWebhookRequest) (*provider.DeleteWebhookResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.DeleteWebhook(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) EcosystemInfo(ctx context.Context, request *provider.EcosystemInfoRequest) (*provider.EcosystemInfoResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.EcosystemInfo(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) GenerateToken(ctx context.Context, request *provider.GenerateTokenRequest) (*provider.GenerateTokenResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.GenerateToken(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) GetOberonKey(ctx context.Context, request *provider.GetOberonKeyRequest) (*provider.GetOberonKeyResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.GetOberonKey(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) GetEventToken(ctx context.Context, request *provider.GetEventTokenRequest) (*provider.GetEventTokenResponse, error) {
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.GetEventToken(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (p *providerBase) InviteParticipant(ctx context.Context, request *provider.InviteRequest) (*provider.InviteResponse, error) {
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

func (p *providerBase) InvitationStatus(ctx context.Context, request *provider.InvitationStatusRequest) (*provider.InvitationStatusResponse, error) {
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

func (p *providerBase) CreateEcosystem(ctx context.Context, request *provider.CreateEcosystemRequest) (*provider.CreateEcosystemResponse, error) {
	if request == nil {
		request = &provider.CreateEcosystemRequest{}
	}
	resp, err := p.client.CreateEcosystem(ctx, request)
	if err != nil {
		return nil, err
	}

	return resp, nil
}
