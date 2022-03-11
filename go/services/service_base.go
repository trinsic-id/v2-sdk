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

// NewServiceBase returns a base service which is the foundation
// for all the other services
func NewServiceBase(options *Options) (Service, error) {
	if options.Channel == nil {
		conn, err := NewServiceConnection(options.ServiceOptions)
		if err != nil {
			return nil, err
		}

		options.Channel = conn
	}

	return &serviceBase{
		options:          options,
		securityProvider: &OberonSecurityProvider{},
	}, nil
}

// Service defines functionality common to all services
type Service interface {
	// GetMetadatContext returns a context with the required grpc metadata embedded in it
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	// BuildMetdata builds the required grpc metadata
	BuildMetadata(message proto.Message) (metadata.MD, error)
	// SetToken assigns the given auth token to the service. This token will be used for
	// make all api calls
	SetToken(token string)
	// GetToken returns the auth token currently assigned to this service or an empty string
	// if none is set
	GetToken() string
	// GetProfile returns the account profile associated with this service, or null if none
	GetProfile() *sdk.AccountProfile
	// GetServiceOptions returns the set of ServiceOptions the service is using
	GetServiceOptions() *sdk.ServiceOptions
	// GetChannel returns the grpc client connect
	GetChannel() *grpc.ClientConn
}

type serviceBase struct {
	options          *Options
	securityProvider SecurityProvider
}

func (s *serviceBase) GetChannel() *grpc.ClientConn {
	return s.options.Channel
}

func (s *serviceBase) SetToken(authtoken string) {
	s.options.ServiceOptions.AuthToken = authtoken
}

func (s *serviceBase) GetToken() string {
	return s.options.ServiceOptions.AuthToken
}

func (s *serviceBase) GetProfile() *sdk.AccountProfile {
	if s.options != nil && len(s.options.ServiceOptions.AuthToken) != 0 {
		profile, _ := ProfileFromToken(s.options.ServiceOptions.AuthToken)
		return profile
	}

	return nil
}

func (s *serviceBase) GetServiceOptions() *sdk.ServiceOptions {
	return s.options.ServiceOptions
}

// GetMetadataContext returns a new context with grpc metadata containing authentication headers
//
// This call will return an error if the auth token is not set
func (s *serviceBase) GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error) {
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
func (s *serviceBase) BuildMetadata(message proto.Message) (metadata.MD, error) {
	if len(s.options.ServiceOptions.AuthToken) == 0 {
		return nil, errors.New("cannot call authenticated endpoint: auth token must be set in service options")
	}

	profile, err := ProfileFromToken(s.options.ServiceOptions.AuthToken)
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
