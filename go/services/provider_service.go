package services

import (
	"context"
	"errors"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

func NewProviderService(options *sdk.ServiceOptions) (ProviderService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &ProviderBase{
		ServiceBase: base,
		client:      sdk.NewProviderClient(base.channel),
	}

	return service, nil
}

type ProviderService interface {
	Service
	InviteParticipant(userContext context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error)
	InvitationStatus(userContext context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error)
	CreateEcosystem(ctx context.Context, request *sdk.CreateEcosystemRequest) (*sdk.CreateEcosystemResponse, error)
	GenerateToken(ctx context.Context, description string) (string, error)
}

type ProviderBase struct {
	*ServiceBase
	client sdk.ProviderClient
}

func (p *ProviderBase) InviteParticipant(ctx context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
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

func (p *ProviderBase) InvitationStatus(ctx context.Context, request *sdk.InvitationStatusRequest) (*sdk.InvitationStatusResponse, error) {
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

func (p *ProviderBase) CreateEcosystem(ctx context.Context, request *sdk.CreateEcosystemRequest) (*sdk.CreateEcosystemResponse, error) {
	resp, err := p.client.CreateEcosystem(ctx, request)
	if err != nil {
		return nil, err
	}

	return resp, nil
}

func (p *ProviderBase) GenerateToken(ctx context.Context, description string) (string, error) {
	req := &sdk.GenerateTokenRequest{Description: description}

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
