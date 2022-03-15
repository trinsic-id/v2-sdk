package services

import (
	"os"
	"strconv"
	"strings"

	sdk "github.com/trinsic-id/sdk/go/proto"
)

//Options for configuring the sdk
type Options struct {
	ServiceOptions *sdk.ServiceOptions
}

// NewServiceOptions returns a service options configuration with the provided options set
func NewServiceOptions(opts ...Option) (*Options, error) {
	options := &Options{
		ServiceOptions: &sdk.ServiceOptions{
			DefaultEcosystem: "default",
		},
	}

	// Default to production
	WithProductionEnv()(options)

	// set user defined options
	for _, o := range opts {
		err := o(options)
		if err != nil {
			return nil, err
		}
	}

	return options, nil
}

// Option function for setting options when configuring the service
type Option func(*Options) error

// WithAuthToken sets a specific account token to use
func WithAuthToken(token string) Option {
	return func(s *Options) error {
		s.ServiceOptions.AuthToken = token

		return nil
	}
}

// WithDefaultEcosystem will set the default ecosystem used for each of the calls
//
// This value will be added to calls that reqire an ecosystemID to be set
// if no value is provided
func WithDefaultEcosystem(ecosystemID string) Option {
	return func(s *Options) error {
		s.ServiceOptions.DefaultEcosystem = ecosystemID
		return nil
	}
}

// WithOptions will replace the current options with the one provided
func WithOptions(serviceOptions *sdk.ServiceOptions) Option {
	return func(s *Options) error {
		s.ServiceOptions.AuthToken = serviceOptions.AuthToken
		s.ServiceOptions.ServerPort = serviceOptions.ServerPort
		s.ServiceOptions.ServerEndpoint = serviceOptions.ServerEndpoint
		s.ServiceOptions.ServerUseTls = serviceOptions.ServerUseTls
		s.ServiceOptions.DefaultEcosystem = serviceOptions.DefaultEcosystem

		return nil
	}
}

// WithDevEnv will configure the server to use the trinsic development environment
func WithDevEnv() Option {
	return func(s *Options) error {
		s.ServiceOptions.ServerEndpoint = "dev-internal.trinsic.cloud"
		s.ServiceOptions.ServerPort = 443
		s.ServiceOptions.ServerUseTls = true

		return nil
	}
}

// WithStagingEnv will configure the server to use the trinsic staging environment
func WithStagingEnv() Option {
	return func(s *Options) error {
		s.ServiceOptions.ServerEndpoint = "staging-internal.trinsic.cloud"
		s.ServiceOptions.ServerPort = 443
		s.ServiceOptions.ServerUseTls = true

		return nil
	}
}

// WithProductionEnv will configure the server to use the trinsic production environment
func WithProductionEnv() Option {
	return func(s *Options) error {
		s.ServiceOptions.ServerEndpoint = "prod.trinsic.cloud"
		s.ServiceOptions.ServerPort = 443
		s.ServiceOptions.ServerUseTls = true

		return nil
	}
}

// WithTestEnv will configure the server to use the environment provided by environment variables
// falling back to trinsic production environment if necessary
func WithTestEnv() Option {
	return func(s *Options) error {
		s.ServiceOptions.ServerEndpoint = os.Getenv("TEST_SERVER_ENDPOINT")

		port, err := strconv.Atoi(os.Getenv("TEST_SERVER_PORT"))
		if err != nil || port <= 0 {
			port = 443
		}
		s.ServiceOptions.ServerPort = int32(port)

		useTLS := os.Getenv("TEST_SERVER_USE_TLS")
		if len(useTLS) != 0 && strings.Compare(strings.ToLower(useTLS), "false") == 0 {
			s.ServiceOptions.ServerUseTls = false
		} else {
			s.ServiceOptions.ServerUseTls = true
		}

		defaultEcosystem := os.Getenv("TEST_SERVER_ECOSYSTEM")
		if len(defaultEcosystem) > 0 {
		} else {
			s.ServiceOptions.DefaultEcosystem = "default"
		}

		return nil
	}
}
