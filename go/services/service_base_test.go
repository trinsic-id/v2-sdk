package services

import (
	"strings"
	"testing"

	"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"

	"github.com/stretchr/testify/assert"

	"google.golang.org/grpc"
	"google.golang.org/grpc/connectivity"
)

func TestServiceBase(t *testing.T) {
	assert2 := assert.New(t)

	opts, err := NewServiceOptions(
		WithOptions(&options.TrinsicOptions{
			ServerEndpoint: "127.0.0.1",
			ServerPort:     1234},
		),
	)

	if !assert2.Nil(err) {
		return
	}

	base, err := NewServiceBase(opts)
	assert2.Nil(err)
	assert2.Equal(opts.TrinsicOptions, base.GetServiceOptions())

	// Did we get a default grpc connection?
	conn := base.GetChannel()
	assert2.NotNil(conn, "Should have received a default grpc connection")
	assert2.Equal(connectivity.Idle, conn.GetState(), "new grpc connection state should be idle")
	assert2.Equal("127.0.0.1:1234", conn.Target())

	// Can we specify a grp connection?
	nconn, err := grpc.Dial("192.168.1.1:4321", grpc.WithInsecure())
	assert2.Nil(err)
	if !assert2.NotNil(nconn) {
		return
	}

	opts, err = NewServiceOptions(
		WithOptions(&options.TrinsicOptions{
			ServerEndpoint: "127.0.0.1",
			ServerPort:     1234},
		),
	)

	if !assert2.Nil(err) {
		return
	}

	base, err = NewServiceBase(opts)
	assert2.Nil(err)
	assert2.Equal(opts.TrinsicOptions, base.GetServiceOptions())
	assert2.Equal("127.0.0.1:1234", base.GetChannel().Target(), "new grpc connection should be set")

	profile := &account.AccountProfile{
		AuthData:  []byte(`1234567890`),
		AuthToken: []byte(`1234567890`),
		Protection: &account.TokenProtection{
			Enabled: true,
		},
	}

	tkn, err := ProfileToToken(profile)
	assert2.Nil(err)
	assert2.Equal("EgoxMjM0NTY3ODkwGgoxMjM0NTY3ODkwIgIIAQ", tkn)

	// Set new profile
	base.SetAuthToken(tkn)
	assert2.Equal(tkn, base.GetServiceOptions().AuthToken, "auth token should have been replaced")

	// use test vector (valid unprotected token)
	testToken := "CiVodHRwczovL3RyaW5zaWMuaWQvc2VjdXJpdHkvdjEvb2Jlcm9uEnAKKnVybjp0cmluc2ljOndhbGxldHM6SlZkS0pHcWs1YnFzRmtNTGJKTHZwSxIkYmFiM2Y5ZTgtOTIyYS00ZjEwLWI5MmMtMmYyZTM0MmUwNDQzIhx1cm46dHJpbnNpYzplY29zeXN0ZW1zOlRlc3QxGjCFcgwYBFmtbNn4Y2D37yIiChzzNLfods2vo37H6wf65vAYFZ3FqbtMNe6MKX14LQQiAA"
	base.SetAuthToken(testToken)
	assert2.Equal(testToken, base.GetServiceOptions().AuthToken, "auth token should have been replaced")

	// Sets the authorization header to oberon
	md, err := base.BuildMetadata(&account.AccountDetails{})
	assert2.Nil(err)
	if assert2.Len(md.Get("authorization"), 1, "should have single authorization header") {
		assert2.True(strings.HasPrefix(md.Get("authorization")[0], "Bearer "), "authorization header should be Bearer")
	}
}
