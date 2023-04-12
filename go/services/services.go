package services

import (
	"os"
	"strconv"
	"strings"

	"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	"google.golang.org/grpc"
)

// GetSdkVersion used to send metadata
func GetSdkVersion() string {
	const sdkVersion = "1.8.0"
	return sdkVersion
}

// Options for configuring the sdk
type Options struct {
	TrinsicOptions  *options.TrinsicOptions
	GrpcDialOptions []grpc.DialOption
}

// NewServiceOptions returns a service options configuration with the provided options set
func NewServiceOptions(opts ...Option) (*Options, error) {
	myOptions := &Options{
		TrinsicOptions: &options.TrinsicOptions{},
	}

	// Default to production
	err := WithProductionEnv()(myOptions)
	if err != nil {
		return nil, err
	}

	// set user defined options
	for _, o := range opts {
		err := o(myOptions)
		if err != nil {
			return nil, err
		}
	}

	return myOptions, nil
}

// Option function for setting options when configuring the service
type Option func(*Options) error

// WithAuthToken sets a specific account token to use
func WithAuthToken(token string) Option {
	return func(s *Options) error {
		s.TrinsicOptions.AuthToken = token

		return nil
	}
}

// WithGrpcDialOptions sets grpc dial options
//
// This function can be user for setting up client-side middlewares (i.e. monitoring, logging, tracing, retry)
func WithGrpcDialOptions(grpcDialOptions ...grpc.DialOption) Option {
	return func(s *Options) error {
		s.GrpcDialOptions = make([]grpc.DialOption, len(grpcDialOptions))
		copy(s.GrpcDialOptions, grpcDialOptions)

		return nil
	}
}

// WithDefaultEcosystem will set the default ecosystem used for each of the calls
//
// This value will be added to calls that reqire an ecosystemID to be set
// if no value is provided
func WithDefaultEcosystem(ecosystemID string) Option {
	return func(s *Options) error {
		return nil
	}
}

// WithOptions will replace the current options with the one provided
func WithOptions(TrinsicOptions *options.TrinsicOptions) Option {
	return func(s *Options) error {
		s.TrinsicOptions.AuthToken = TrinsicOptions.AuthToken
		s.TrinsicOptions.ServerPort = TrinsicOptions.ServerPort
		s.TrinsicOptions.ServerEndpoint = TrinsicOptions.ServerEndpoint
		s.TrinsicOptions.ServerUseTls = TrinsicOptions.ServerUseTls

		return nil
	}
}

// WithDevEnv will configure the server to use the trinsic development environment
func WithDevEnv() Option {
	return func(s *Options) error {
		s.TrinsicOptions.ServerEndpoint = "dev-internal.trinsic.cloud"
		s.TrinsicOptions.ServerPort = 443
		s.TrinsicOptions.ServerUseTls = true

		return nil
	}
}

// WithStagingEnv will configure the server to use the trinsic staging environment
func WithStagingEnv() Option {
	return func(s *Options) error {
		s.TrinsicOptions.ServerEndpoint = "staging-internal.trinsic.cloud"
		s.TrinsicOptions.ServerPort = 443
		s.TrinsicOptions.ServerUseTls = true

		return nil
	}
}

// WithProductionEnv will configure the server to use the trinsic production environment
func WithProductionEnv() Option {
	return func(s *Options) error {
		s.TrinsicOptions.ServerEndpoint = "prod.trinsic.cloud"
		s.TrinsicOptions.ServerPort = 443
		s.TrinsicOptions.ServerUseTls = true

		return nil
	}
}

// WithTestEnv will configure the server to use the environment provided by environment variables
// falling back to trinsic production environment if necessary
func WithTestEnv() Option {
	return func(s *Options) error {
		testEndpoint := strings.TrimSpace(os.Getenv("TEST_SERVER_ENDPOINT"))
		if len(testEndpoint) == 0 {
			testEndpoint = "prod.trinsic.cloud"
		}
		s.TrinsicOptions.ServerEndpoint = testEndpoint

		port, err := strconv.Atoi(os.Getenv("TEST_SERVER_PORT"))
		if err != nil || port <= 0 {
			port = 443
		}
		s.TrinsicOptions.ServerPort = int32(port)

		useTLS := os.Getenv("TEST_SERVER_USE_TLS")
		if len(useTLS) != 0 && strings.Compare(strings.ToLower(useTLS), "false") == 0 {
			s.TrinsicOptions.ServerUseTls = false
		} else {
			s.TrinsicOptions.ServerUseTls = true
		}

		return nil
	}
}
