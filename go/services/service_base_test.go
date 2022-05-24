package services

import (
	"context"
	accountV1 "github.com/trinsic-id/sdk/go/proto/account/v1"
	optionsV1 "github.com/trinsic-id/sdk/go/proto/options/v1"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"

	"google.golang.org/grpc"
	"google.golang.org/grpc/connectivity"
)

func TestServiceBase(t *testing.T) {
	assert := assert.New(t)

	opts, err := NewServiceOptions(
		WithOptions(&optionsV1.ServiceOptions{
			ServerEndpoint:   "127.0.0.1",
			ServerPort:       1234,
			DefaultEcosystem: "test"},
		),
	)

	if !assert.Nil(err) {
		return
	}

	base, err := NewServiceBase(opts)
	assert.Nil(err)
	assert.Equal(opts.ServiceOptions, base.GetServiceOptions())

	// Did we get a default grpc connection?
	conn := base.GetChannel()
	assert.NotNil(conn, "Should have received a default grpc connection")
	assert.Equal(connectivity.Idle, conn.GetState(), "new grpc connection state should be idle")
	assert.Equal("127.0.0.1:1234", conn.Target())

	// Can we specify a grp connection?
	nconn, err := grpc.Dial("192.168.1.1:4321", grpc.WithInsecure())
	assert.Nil(err)
	if !assert.NotNil(nconn) {
		return
	}

	opts, err = NewServiceOptions(
		WithOptions(&optionsV1.ServiceOptions{
			ServerEndpoint:   "127.0.0.1",
			ServerPort:       1234,
			DefaultEcosystem: "test"},
		),
	)

	if !assert.Nil(err) {
		return
	}

	base, err = NewServiceBase(opts)
	assert.Nil(err)
	assert.Equal(opts.ServiceOptions, base.GetServiceOptions())
	assert.Equal("127.0.0.1:1234", base.GetChannel().Target(), "new grpc connection should be set")

	// we should have an empty auth profile
	assert.Empty(base.GetProfile(), "auth Profile should be empty")

	// we should refuse to build metadata without a set token
	_, err = base.GetMetadataContext(context.Background(), &accountV1.AccountDetails{})
	if assert.NotNil(err) {
		assert.Equal("cannot call authenticated endpoint: auth token must be set in service options", err.Error(), "auth token must be set")
	}

	profile := &accountV1.AccountProfile{
		AuthData:  []byte(`1234567890`),
		AuthToken: []byte(`1234567890`),
		Protection: &accountV1.TokenProtection{
			Enabled: true,
		},
	}

	tkn, err := ProfileToToken(profile)
	assert.Nil(err)
	assert.Equal("EgoxMjM0NTY3ODkwGgoxMjM0NTY3ODkwIgIIAQ", tkn)

	// Set new profile
	base.SetToken(tkn)
	assert.Equal(tkn, base.GetServiceOptions().AuthToken, "auth token should have been replaced")

	// Must Unprotect token
	_, err = base.GetMetadataContext(context.Background(), &accountV1.AccountDetails{})
	if assert.NotNil(err) {
		assert.Equal("the token must be unprotected before use", err.Error(), "should refuse to us a protected token")
	}

	// use test vector (valid unprotected token)
	testToken := "CiVodHRwczovL3RyaW5zaWMuaWQvc2VjdXJpdHkvdjEvb2Jlcm9uEnAKKnVybjp0cmluc2ljOndhbGxldHM6SlZkS0pHcWs1YnFzRmtNTGJKTHZwSxIkYmFiM2Y5ZTgtOTIyYS00ZjEwLWI5MmMtMmYyZTM0MmUwNDQzIhx1cm46dHJpbnNpYzplY29zeXN0ZW1zOlRlc3QxGjCFcgwYBFmtbNn4Y2D37yIiChzzNLfods2vo37H6wf65vAYFZ3FqbtMNe6MKX14LQQiAA"
	base.SetToken(testToken)
	assert.Equal(testToken, base.GetServiceOptions().AuthToken, "auth token should have been replaced")

	// Sets the authorization header to oberon
	md, err := base.BuildMetadata(&accountV1.AccountDetails{})
	assert.Nil(err)
	if assert.Len(md.Get("authorization"), 1, "should have single authorization header") {
		assert.True(strings.HasPrefix(md.Get("authorization")[0], "Oberon "), "authorization header should be Oberon")
	}
}
