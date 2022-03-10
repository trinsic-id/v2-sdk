package services

import (
	"context"
	"crypto/x509"
	"errors"
	"fmt"
	"runtime"

	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
)

func NewServiceBase(options *sdk.ServiceOptions) (*ServiceBase, error) {
	conn, err := NewServiceConnection(options)
	if err != nil {
		return nil, err
	}

	return &ServiceBase{
		options:          options,
		channel:          conn,
		securityProvider: &OberonSecurityProvider{},
	}, nil
}

type ServiceBase struct {
	options          *sdk.ServiceOptions
	channel          *grpc.ClientConn
	securityProvider SecurityProvider
}

type Service interface {
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	BuildMetadata(message proto.Message) (metadata.MD, error)
	SetProfile(token string)
	GetProfile() string
	GetServiceOptions() *sdk.ServiceOptions
	SetChannel(channel *grpc.ClientConn)
	GetChannel() *grpc.ClientConn
}

func (s *ServiceBase) GetChannel() *grpc.ClientConn {
	return s.channel
}

func (s *ServiceBase) SetChannel(channel *grpc.ClientConn) {
	s.channel = channel
}

func (s *ServiceBase) SetProfile(authtoken string) {
	s.options.AuthToken = authtoken
}

func (s *ServiceBase) GetProfile() string {
	if s.options != nil {
		return s.options.AuthToken
	}

	return ""
}

func (s *ServiceBase) GetServiceOptions() *sdk.ServiceOptions {
	return s.options
}

// GetMetadataContext returns a new context with grpc metadata containing authentication headers
//
// This call will return an error if the auth token is not set
func (s *ServiceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error) {
	if userContext == nil {
		return nil, errors.New("userContext cannot be nil")
	}

	md, err := s.BuildMetadata(message)
	if err != nil {
		return nil, err
	}

	return metadata.NewOutgoingContext(userContext, md), nil
}

// BuildMetadata builds grpc metadata with the authentication header configured.
//
// This call will return an error if the auth token is not set
func (s *ServiceBase) BuildMetadata(message proto.Message) (metadata.MD, error) {
	if len(s.options.AuthToken) == 0 {
		return nil, errors.New("cannot call authenticated endpoint: auth token must be set in service options")
	}

	profile, err := ProfileFromToken(s.options.AuthToken)
	if err != nil {
		return nil, err
	}

	authString, err := s.securityProvider.GetAuthHeader(profile, message)
	if err != nil {
		return nil, err
	}

	return metadata.New(map[string]string{
		"authorization": authString,
	}), nil
}

// NewServiceConnection returns a grpc client connection to the target
// provided in the options (ServerEndpoint, ServerPort, and ServerUseTLS)
func NewServiceConnection(options *sdk.ServiceOptions) (*grpc.ClientConn, error) {
	var dialOptions []grpc.DialOption

	if !options.ServerUseTls {
		dialOptions = append(dialOptions, grpc.WithInsecure())
	} else {
		rootCAs, err := x509.SystemCertPool()
		if err != nil && runtime.GOOS == "windows" {
			rootCAs = x509.NewCertPool()
			windowsCerts := loadWindowsCerts()
			for _, cert := range windowsCerts {
				rootCAs.AddCert(cert)
			}
		} else if err != nil {
			return nil, err
		}
		creds := credentials.NewClientTLSFromCert(rootCAs, "")
		dialOptions = append(dialOptions, grpc.WithTransportCredentials(creds))
	}

	return grpc.Dial(fmt.Sprintf("%s:%d", options.ServerEndpoint, options.ServerPort), dialOptions...)
}
