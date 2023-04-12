package services

import (
	"context"
	"crypto/x509"
	"encoding/base64"
	"errors"
	"fmt"
	"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	"runtime"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"
	"google.golang.org/protobuf/proto"
)

// NewServiceBase returns a base service which is the foundation
// for all the other services
func NewServiceBase(options *Options) (Service, error) {
	conn, err := NewServiceConnection(options.TrinsicOptions, options.GrpcDialOptions...)
	if err != nil {
		return nil, err
	}

	return &serviceBase{
		options: options,
		channel: conn,
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
	// GetServiceOptions returns the set of TrinsicOptions the service is using
	GetServiceOptions() *options.TrinsicOptions
	// GetChannel returns the grpc client connect
	GetChannel() *grpc.ClientConn
}

type serviceBase struct {
	options *Options
	channel *grpc.ClientConn
}

func (s *serviceBase) GetChannel() *grpc.ClientConn {
	return s.channel
}

func (s *serviceBase) SetAuthToken(authtoken string) {
	s.options.TrinsicOptions.AuthToken = authtoken
}

func (s *serviceBase) GetAuthToken() string {
	return s.options.TrinsicOptions.AuthToken
}

func (s *serviceBase) GetServiceOptions() *options.TrinsicOptions {
	return s.options.TrinsicOptions
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
	md.Set("TrinsicSDKVersion", GetSdkVersion())
	md.Set("TrinsicSDKLanguage", "golang")

	if message != nil {
		authToken := s.options.TrinsicOptions.AuthToken
		md.Set("Authorization", "Bearer "+authToken)
	}

	return md, nil
}

// NewServiceConnection returns a grpc client connection to the target
// provided in the options (ServerEndpoint, ServerPort, and ServerUseTLS)
func NewServiceConnection(options *options.TrinsicOptions, grpcDialOptions ...grpc.DialOption) (*grpc.ClientConn, error) {
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

// ProfileToToken takes the profile and returns an encoded auth token
func ProfileToToken(profile *account.AccountProfile) (string, error) {
	pbytes, err := proto.Marshal(profile)
	if err != nil {
		return "", err
	}

	return base64.RawURLEncoding.EncodeToString(pbytes), nil
}

// ProfileFromToken takes an encoded auth token and returns the account profile
func ProfileFromToken(token string) (*account.AccountProfile, error) {
	tb, err := base64.RawURLEncoding.DecodeString(token)
	if err != nil {
		return nil, err
	}

	profile := &account.AccountProfile{}

	err = proto.Unmarshal(tb, profile)

	return profile, err
}
