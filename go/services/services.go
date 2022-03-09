package services

import (
	"os"
	"strconv"
	"strings"

	sdk "github.com/trinsic-id/sdk/go/proto"
	_ "google.golang.org/protobuf/types/known/structpb"
)

// NewServiceOptions returns a service options configuration with the provided options set
func NewServiceOptions(opts ...Option) (*sdk.ServiceOptions, error) {
	so := &sdk.ServiceOptions{}

	// Default to production
	WithProductionEnv()(so)

	// with the default ecosystem set
	so.DefaultEcosystem = "default"

	// set user defined options
	for _, o := range opts {
		err := o(so)
		if err != nil {
			return nil, err
		}
	}

	return so, nil
}

// Option function for setting options when configuring the service
type Option func(*sdk.ServiceOptions) error

// WithAuthToken sets a specific account token to use
func WithAuthToken(token string) Option {
	return func(s *sdk.ServiceOptions) error {
		s.AuthToken = token

		return nil
	}
}

// WithEcosystem will set the default ecosystem used for each of the calls
//
// This value will be added to calls that reqire an ecosystemID to be set
// if no value is provided
func WithDefaultEcosystem(ecosystemID string) Option {
	return func(s *sdk.ServiceOptions) error {
		s.DefaultEcosystem = ecosystemID
		return nil
	}
}

// WithOptions will replace the current options with the one provided
func WithOptions(serviceOptions *sdk.ServiceOptions) Option {
	return func(s *sdk.ServiceOptions) error {
		s.AuthToken = serviceOptions.AuthToken
		s.ServerPort = serviceOptions.ServerPort
		s.ServerEndpoint = serviceOptions.ServerEndpoint
		s.ServerUseTls = serviceOptions.ServerUseTls
		s.DefaultEcosystem = serviceOptions.DefaultEcosystem

		return nil
	}
}

// WithDevEnv will configure the server to use the trinsic development environment
func WithDevEnv() Option {
	return func(s *sdk.ServiceOptions) error {
		s.ServerEndpoint = "dev-internal.trinsic.cloud"
		s.ServerPort = 443
		s.ServerUseTls = true

		return nil
	}
}

// WithStagingEnv will configure the server to use the trinsic staging environment
func WithStagingEnv() Option {
	return func(s *sdk.ServiceOptions) error {
		s.ServerEndpoint = "staging-internal.trinsic.cloud"
		s.ServerPort = 443
		s.ServerUseTls = true

		return nil
	}
}

// WithProductionEnv will configure the server to use the trinsic production environment
func WithProductionEnv() Option {
	return func(s *sdk.ServiceOptions) error {
		s.ServerEndpoint = "prod.trinsic.cloud"
		s.ServerPort = 443
		s.ServerUseTls = true

		return nil
	}
}

// WithProductionEnv will configure the server to use the trinsic production environment
func WithTestEnv() Option {
	return func(s *sdk.ServiceOptions) error {
		s.ServerEndpoint = os.Getenv("TEST_SERVER_ENDPOINT")

		port, err := strconv.Atoi(os.Getenv("TEST_SERVER_PORT"))
		if err != nil || port <= 0 {
			port = 443
		}
		s.ServerPort = int32(port)

		useTLS := os.Getenv("TEST_SERVER_USE_TLS")
		if len(useTLS) != 0 && strings.Compare(strings.ToLower(useTLS), "false") != 0 {
			s.ServerUseTls = true
		} else {
			s.ServerUseTls = false
		}

		return nil
	}
}
