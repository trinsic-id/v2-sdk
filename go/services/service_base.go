package services

import (
	"context"
	"errors"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
)

func newServiceBase(profile *sdk.AccountProfile, serverConfig *sdk.ServerConfig, channel *grpc.ClientConn) (*ServiceBase, error) {
	if channel != nil && serverConfig != nil {
		return nil, fmt.Errorf("Cannot provide both a channel and a server configuration")
	}
	if channel == nil {
		channel2, err := CreateChannel(CreateChannelUrlFromConfig(serverConfig), true)
		if err != nil {
			return nil, err
		}
		channel = channel2
	}
	channel.Connect()
	service := &ServiceBase{
		profile:              profile,
		configuration:        serverConfig,
		channel:              channel,
		securityProviderImpl: &OberonSecurityProvider{},
	}
	return service, nil
}

type ServiceBase struct {
	ecosystemId          string
	profile              *sdk.AccountProfile
	configuration        *sdk.ServerConfig
	channel              *grpc.ClientConn
	securityProviderImpl *OberonSecurityProvider
}

type Service interface {
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	BuildMetadata(message proto.Message) (metadata.MD, error)
	SetProfile(profile *sdk.AccountProfile)
	SetChannel(channel *grpc.ClientConn)
	GetChannel() *grpc.ClientConn
}

func (s *ServiceBase) GetChannel() *grpc.ClientConn {
	return s.channel
}

func (s *ServiceBase) SetChannel(channel *grpc.ClientConn) {
	s.channel = channel
}

func (s *ServiceBase) SetProfile(profile *sdk.AccountProfile) {
	s.profile = profile
}

func (s *ServiceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error) {
	md, err := s.BuildMetadata(message)
	if err != nil {
		return nil, err
	}
	if userContext == nil {
		return nil, errors.New("userContext cannot be nil")
	}
	return metadata.NewOutgoingContext(userContext, md), nil
}

func (s *ServiceBase) BuildMetadata(message proto.Message) (metadata.MD, error) {
	if s.profile == nil {
		return nil, fmt.Errorf("cannot call authenticated endpoint: profile must be set")
	}
	authString, err := s.securityProviderImpl.GetAuthHeader(s.profile, message)
	if err != nil {
		return nil, err
	}
	return metadata.New(map[string]string{
		"authorization": authString,
		"ecosystem":     s.ecosystemId,
	}), nil
}
