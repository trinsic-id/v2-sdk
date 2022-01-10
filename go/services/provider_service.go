package services

import (
	"context"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
)

func NewProviderService(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (ProviderService, error) {
	base, err := NewServiceBase(profile, serverConfig, channel)
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
	ListEcosystems(ctx context.Context) ([]*sdk.Ecosystem, error)
	AcceptInvite(ctx context.Context, code string) (*sdk.AcceptInviteResponse, error)
	//SetEcosystem(ecosystemId string)
}

type ProviderBase struct {
	*ServiceBase
	channel *grpc.ClientConn
	client  sdk.ProviderClient
}

//func (p *ProviderBase) SetEcosystem(ecosystemId string) {
//	p.ecosystemId = ecosystemId
//}

func (p *ProviderBase) InviteParticipant(ctx context.Context, request *sdk.InviteRequest) (*sdk.InviteResponse, error) {
	// Verify contact method is set
	switch request.ContactMethod.(type) {
	case nil:
		return nil, fmt.Errorf("unset contact method")
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
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	resp, err := p.client.CreateEcosystem(md, request)
	if err != nil {
		return nil, err
	}

	return resp, nil
}

func (p *ProviderBase) ListEcosystems(ctx context.Context) ([]*sdk.Ecosystem, error) {
	request := &sdk.ListEcosystemsRequest{}
	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	resp, err := p.client.ListEcosystems(md, request)
	if err != nil {
		return nil, err
	}

	return resp.Ecosystem, nil
}

func (p *ProviderBase) AcceptInvite(ctx context.Context, code string) (*sdk.AcceptInviteResponse, error) {
	request := &sdk.InfoRequest{}

	md, err := p.GetMetadataContext(ctx, request)
	if err != nil {
		return nil, err
	}

	response, err := p.client.AcceptInvite(md, &sdk.AcceptInviteRequest{Code: code})
	if err != nil {
		return nil, err
	}

	return response, err
}
