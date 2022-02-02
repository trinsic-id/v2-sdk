package services

import (
	"crypto/x509"
	"errors"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	_ "google.golang.org/protobuf/types/known/structpb"
	"net/url"
	"os"
	"runtime"
	"strconv"
)

type Document map[string]interface{}

func TrinsicProductionConfig() *sdk.ServerConfig {
	return &sdk.ServerConfig{
		Endpoint: "prod.trinsic.cloud",
		Port:     443,
		UseTls:   true,
	}
}

func TrinsicTestConfig() *sdk.ServerConfig {
	server := os.Getenv("TEST_SERVER_ENDPOINT")
	port, err := strconv.Atoi(os.Getenv("TEST_SERVER_PORT"))
	useTls, err2 := strconv.ParseBool(os.Getenv("TEST_SERVER_USE_TLS"))
	if err != nil || port <= 0 {
		port = 443
	}
	if err2 != nil {
		useTls = true
	}

	return &sdk.ServerConfig{
		Endpoint: server,
		Port:     int32(port),
		UseTls:   useTls,
	}
}

func CreateChannelFromConfig(config *sdk.ServerConfig) (*grpc.ClientConn, error) {
	if config == nil {
		config = TrinsicProductionConfig()
	}
	scheme := "http"
	if config.UseTls {
		scheme = "https"
	}
	channelUrl := fmt.Sprintf("%s://%s:%d", scheme, config.Endpoint, config.Port)
	return createChannel(channelUrl, true)
}

func createChannel(serviceAddress string, blockOnOpen bool) (*grpc.ClientConn, error) {
	var serviceUrl, err = url.Parse(serviceAddress)
	if err != nil {
		return nil, err
	}
	if serviceUrl.Port() == "" {
		return nil, &url.Error{Op: "parse", URL: serviceAddress, Err: errors.New("missing port (or scheme) in URL")}
	}
	dialUrl := serviceUrl.Hostname() + ":" + serviceUrl.Port()
	var dialOptions []grpc.DialOption
	if blockOnOpen {
		dialOptions = append(dialOptions, grpc.WithBlock())
	}
	if serviceUrl.Scheme == "http" {
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
	channel, err := grpc.Dial(dialUrl, dialOptions...)
	if err != nil {
		return nil, err
	}
	return channel, nil
}
