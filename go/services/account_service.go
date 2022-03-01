package services

import (
	"context"
	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"
	sdk "github.com/trinsic-id/sdk/go/proto"
)

func NewAccountService(options ServiceOptions) (AccountService, error) {
	base, err := NewServiceBase(options.profile, options.config, options.channel)
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
	SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error)
	Unprotect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)
	Protect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error)
	GetInfo(userContext context.Context) (*sdk.InfoResponse, error)
	ListDevices(userContext context.Context, request *sdk.ListDevicesRequest) (*sdk.ListDevicesResponse, error)
	RevokeDevice(userContext context.Context, request *sdk.RevokeDeviceRequest) (*sdk.RevokeDeviceResponse, error)
}

type AccountBase struct {
	*ServiceBase
	client sdk.AccountClient
}

func (a *AccountBase) SignIn(userContext context.Context, details *sdk.AccountDetails) (*sdk.AccountProfile, sdk.ConfirmationMethod, error) {
	if details == nil {
		details = &sdk.AccountDetails{}
	}
	request := &sdk.SignInRequest{
		Details: details,
	}
	response, err := a.client.SignIn(userContext, request)
	if err != nil {
		return nil, sdk.ConfirmationMethod_None, err
	}

	return response.Profile, response.ConfirmationMethod, nil
}

func (a *AccountBase) Unprotect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error) {
	cloned := &sdk.AccountProfile{
		ProfileType: profile.ProfileType,
		AuthData:    profile.AuthData,
	}
	request := &okapiproto.UnBlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}
	response, err := okapi.Oberon().UnblindToken(request)
	if err != nil {
		return nil, err
	}
	cloned.AuthToken = response.Token
	cloned.Protection = &sdk.TokenProtection{
		Enabled: false,
		Method:  sdk.ConfirmationMethod_None,
	}
	return cloned, nil
}

func (a *AccountBase) Protect(profile *sdk.AccountProfile, securityCode string) (*sdk.AccountProfile, error) {
	cloned := &sdk.AccountProfile{
		ProfileType: profile.ProfileType,
		AuthData:    profile.AuthData,
	}
	request := &okapiproto.BlindOberonTokenRequest{
		Token:    profile.AuthToken,
		Blinding: append([][]byte{}, []byte(securityCode)),
	}
	response, err := okapi.Oberon().BlindToken(request)
	if err != nil {
		return nil, err
	}
	cloned.AuthToken = response.Token
	cloned.Protection = &sdk.TokenProtection{
		Enabled: true,
		Method:  sdk.ConfirmationMethod_Other,
	}
	return cloned, nil
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
