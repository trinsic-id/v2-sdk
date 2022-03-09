package services

import (
	"context"
	"encoding/base64"

	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/protobuf/proto"
)

func NewAccountService(options *sdk.ServiceOptions) (AccountService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &AccountBase{
		ServiceBase: base,
		client:      sdk.NewAccountClient(base.channel),
	}

	return service, nil
}

type AccountService interface {
	Service
	SignIn(userContext context.Context, details *sdk.AccountDetails) (string, sdk.ConfirmationMethod, error)
	Unprotect(authtoken, securityCode string) (string, error)
	Protect(authtoken, securityCode string) (string, error)
	GetInfo(userContext context.Context) (*sdk.InfoResponse, error)
	ListDevices(userContext context.Context, request *sdk.ListDevicesRequest) (*sdk.ListDevicesResponse, error)
	RevokeDevice(userContext context.Context, request *sdk.RevokeDeviceRequest) (*sdk.RevokeDeviceResponse, error)
}

type AccountBase struct {
	*ServiceBase
	client sdk.AccountClient
}

func (a *AccountBase) SignIn(userContext context.Context, details *sdk.AccountDetails) (string, sdk.ConfirmationMethod, error) {
	if details == nil {
		details = &sdk.AccountDetails{}
	}

	response, err := a.client.SignIn(userContext, &sdk.SignInRequest{Details: details, EcosystemId: a.options.DefaultEcosystem})
	if err != nil {
		return "", sdk.ConfirmationMethod_None, err
	}

	tkn, err := ProfileToToken(response.Profile)
	if err != nil {
		return "", sdk.ConfirmationMethod_None, err
	}

	return tkn, response.ConfirmationMethod, nil
}

// Unprotect an authtoken using the given security code
func (a *AccountBase) Unprotect(authtoken, securityCode string) (string, error) {
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
	profile.Protection = &sdk.TokenProtection{
		Enabled: false,
		Method:  sdk.ConfirmationMethod_None,
	}

	return ProfileToToken(profile)
}

// Protect an authtoken with the given security code. Must be unprotected before use
//
// This method can be called as many times as you want, but each code must be "unwrapped"
// in the reverse order before use
func (a *AccountBase) Protect(authtoken, securityCode string) (string, error) {
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
	profile.Protection = &sdk.TokenProtection{
		Enabled: true,
		Method:  sdk.ConfirmationMethod_Other,
	}

	return ProfileToToken(profile)
}

func (a *AccountBase) GetInfo(userContext context.Context) (*sdk.InfoResponse, error) {
	request := &sdk.InfoRequest{}
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

func (a *AccountBase) ListDevices(userContext context.Context, request *sdk.ListDevicesRequest) (*sdk.ListDevicesResponse, error) {
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

func (a *AccountBase) RevokeDevice(userContext context.Context, request *sdk.RevokeDeviceRequest) (*sdk.RevokeDeviceResponse, error) {
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

func ProfileToToken(profile *sdk.AccountProfile) (string, error) {
	pbytes, err := proto.Marshal(profile)
	if err != nil {
		return "", err
	}

	return base64.RawURLEncoding.EncodeToString(pbytes), nil
}

func ProfileFromToken(token string) (*sdk.AccountProfile, error) {
	tb, err := base64.RawURLEncoding.DecodeString(token)
	if err != nil {
		return nil, err
	}

	profile := &sdk.AccountProfile{}

	err = proto.Unmarshal(tb, profile)

	return profile, err
}
