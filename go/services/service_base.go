package services

import (
	"context"
	"crypto/x509"
	"errors"
	"fmt"
	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"

	"runtime"

	//"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	//"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
)

// NewServiceBase returns a base service which is the foundation
// for all the other services
func NewServiceBase(options *Options) (Service, error) {
	conn, err := NewServiceConnection(options.ServiceOptions, options.GrpcDialOptions...)
	if err != nil {
		return nil, err
	}

	return &serviceBase{
		options:          options,
		channel:          conn,
		securityProvider: &OberonSecurityProvider{},
		tokenProvider:    DefaultTokenProvider, // This is a global instance
	}, nil
}

// Service defines functionality common to all services
type Service interface {
	// GetMetadataContext returns a context with the required grpc metadata embedded in it
	GetMetadataContext(userContext context.Context, message proto.Message) (context.Context, error)
	// BuildMetadata builds the required grpc metadata
	BuildMetadata(message proto.Message) (metadata.MD, error)
	// SetAuthToken assigns the given auth token to the service. This token will be used for
	// make all api calls
	SetAuthToken(token string)
	// GetAuthToken returns the auth token currently assigned to this service or an empty string
	// if none is set
	GetAuthToken() string
	// GetProfile returns the account profile associated with this service, or null if none
	GetProfile() *account.AccountProfile
	// GetServiceOptions returns the set of ServiceOptions the service is using
	GetServiceOptions() *options.ServiceOptions
	// GetChannel returns the grpc client connect
	GetChannel() *grpc.ClientConn
	// GetTokenProvider returns the Token provider
	GetTokenProvider() TokenProvider
}

type serviceBase struct {
	options          *Options
	channel          *grpc.ClientConn
	securityProvider SecurityProvider
	tokenProvider    TokenProvider
}

func (s *serviceBase) GetChannel() *grpc.ClientConn {
	return s.channel
}
func (s *serviceBase) GetTokenProvider() TokenProvider {
	return s.tokenProvider
}

func (s *serviceBase) SetAuthToken(authtoken string) {
	s.options.ServiceOptions.AuthToken = authtoken
}

func (s *serviceBase) GetAuthToken() string {
	return s.options.ServiceOptions.AuthToken
}

func (s *serviceBase) GetProfile() *account.AccountProfile {
	if s.options != nil && len(s.options.ServiceOptions.AuthToken) != 0 {
		profile, _ := ProfileFromToken(s.options.ServiceOptions.AuthToken)
		return profile
	}

	return nil
}

func (s *serviceBase) GetServiceOptions() *options.ServiceOptions {
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
	md := metadata.New(make(map[string]string))
	if len(s.options.ServiceOptions.AuthToken) == 0 {
		return nil, errors.New("cannot call authenticated endpoint: auth token must be set in service options")
	}
	okapiVersion, err := okapi.OkapiMetadata().GetMetadata()
	if err != nil {
		return nil, err
	}
	md.Set("TrinsicOkapiVersion", okapiVersion.Version)
	md.Set("TrinsicSDKVersion", GetSdkVersion())
	md.Set("TrinsicSDKLanguage", "golang")

	if message != nil {
		authToken := s.options.ServiceOptions.AuthToken
		if authToken == "" {
			authToken = s.tokenProvider.GetDefault()
		}
		profile, err := ProfileFromToken(s.options.ServiceOptions.AuthToken)
		if err != nil {
			return nil, err
		}

		authString, err := s.securityProvider.GetAuthHeader(profile, message)
		if err != nil {
			return nil, err
		}
		md.Set("authorization", authString)
	}

	return md, nil
}

// NewServiceConnection returns a grpc client connection to the target
// provided in the options (ServerEndpoint, ServerPort, and ServerUseTLS)
func NewServiceConnection(options *options.ServiceOptions, grpcDialOptions ...grpc.DialOption) (*grpc.ClientConn, error) {
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

	for _, dialOption := range grpcDialOptions {
		dialOptions = append(dialOptions, dialOption)
	}

	return grpc.Dial(fmt.Sprintf("%s:%d", options.ServerEndpoint, options.ServerPort), dialOptions...)
}
