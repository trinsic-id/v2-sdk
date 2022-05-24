package services

import (
	"context"
	"encoding/base64"

	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"

	"google.golang.org/protobuf/proto"

	account "github.com/trinsic-id/sdk/go/proto/account/v1"
)

// NewAccountService returns an account servcie with the base service configured
// using the provided options
func NewAccountService(options *Options) (AccountService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &accountBase{
		Service: base,
		client:  account.NewAccountClient(base.GetChannel()),
	}

	return service, nil
}

// AccountService wraps all the functions for interacting with accounts
type AccountService interface {
	Service
	// SignIn returns an encoded auth token
	SignIn(userContext context.Context, request *account.SignInRequest) (string, account.ConfirmationMethod, error)
	// Unprotect takes an authtoken that has been protected using a pin code
	// and returns an unlocked token
	Unprotect(authtoken, securityCode string) (string, error)
	// Protect will apply the given security code blind to the provided token
	Protect(authtoken, securityCode string) (string, error)
	// GetInfo returns details about the wallet associated with the account token
	GetInfo(userContext context.Context) (*account.InfoResponse, error)
	// ListDevices returns a list of devices that are associated with the cloud wallet
	ListDevices(userContext context.Context, request *account.ListDevicesRequest) (*account.ListDevicesResponse, error)
	// RevokeDevice removes access to the cloud wallet for the provided device
	RevokeDevice(userContext context.Context, request *account.RevokeDeviceRequest) (*account.RevokeDeviceResponse, error)
}

type accountBase struct {
	Service
	client account.AccountClient
}

// SignIn to a given account
func (a *accountBase) SignIn(userContext context.Context, request *account.SignInRequest) (string, account.ConfirmationMethod, error) {
	if request == nil {
		request = &account.SignInRequest{}
	}
	if request.Details == nil {
		request.Details = &account.AccountDetails{}
	}

	if len(request.EcosystemId) == 0 {
		request.EcosystemId = a.GetServiceOptions().DefaultEcosystem
	}

	resp, err := a.client.SignIn(userContext, request)
	if err != nil {
		return "", account.ConfirmationMethod_None, err
	}

	tkn, err := ProfileToToken(resp.Profile)
	if err != nil {
		return "", account.ConfirmationMethod_None, err
	}

	return tkn, resp.ConfirmationMethod, nil
}

// Unprotect an authtoken using the given security code
//
// This method can be called multiple times on an individual token
// to "unwrap" the blindings that have been applied
func (a *accountBase) Unprotect(authtoken, securityCode string) (string, error) {
	profile, err := ProfileFromToken(authtoken)
	if err != nil {
		return "", err
	}

	request := &okapiproto.UnBlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}

	response, err := okapi.Oberon().UnblindToken(request)
	if err != nil {
		return "", err
	}

	profile.AuthToken = response.Token
	profile.Protection = &account.TokenProtection{
		Enabled: false,
		Method:  account.ConfirmationMethod_None,
	}

	return ProfileToToken(profile)
}

// Protect an authtoken with the given security code. Must be unprotected before use
//
// This method can be called as many times as you want, but each code must be "unwrapped"
// by calling Unprotect in the reverse order before use
func (a *accountBase) Protect(authtoken, securityCode string) (string, error) {
	profile, err := ProfileFromToken(authtoken)
	if err != nil {
		return "", err
	}

	request := &okapiproto.BlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}

	response, err := okapi.Oberon().BlindToken(request)
	if err != nil {
		return "", err
	}

	profile.AuthToken = response.Token
	profile.Protection = &account.TokenProtection{
		Enabled: true,
		Method:  account.ConfirmationMethod_Other,
	}

	return ProfileToToken(profile)
}

// GetInfo associated with a given wallet
func (a *accountBase) GetInfo(userContext context.Context) (*account.InfoResponse, error) {
	request := &account.InfoRequest{}
	md, err := a.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := a.client.Info(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// ListDevices that can access the cloud wallet
func (a *accountBase) ListDevices(userContext context.Context, request *account.ListDevicesRequest) (*account.ListDevicesResponse, error) {
	md, err := a.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := a.client.ListDevices(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// RevokeDevice from the cloud wallet
func (a *accountBase) RevokeDevice(userContext context.Context, request *account.RevokeDeviceRequest) (*account.RevokeDeviceResponse, error) {
	md, err := a.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}
	response, err := a.client.RevokeDevice(md, request)
	if err != nil {
		return nil, err
	}
	return response, nil
}

// ProfileToToken takes the proile and returns an encoded auth token
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
