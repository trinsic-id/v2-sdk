package services

import (
	"context"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
)

func TestLogin(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, err := CreateTestTrinsicWithNewEcosystem()
	if !assert2.Nil(err) {
		return
	}

	// loginRequest() {
	loginResponse, err := trinsic.Account().Login(context.Background(), &account.LoginRequest{
		Email: "bob@example.com",
	})
	// }

	if !assert2.Nil(err) {
		return
	}

	// loginConfirm() {
	authToken, err := trinsic.Account().LoginConfirm(context.Background(), loginResponse.GetChallenge(), "12345")
	// }

	// There SHOULD be an error -- auth code should be invalid
	assert2.NotNil(err)
	assert2.Empty(authToken)

	// setAuthTokenSample() {
	trinsic.SetToken(authToken)
	// }
}

func TestAuthWebhook(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, err := CreateTestTrinsicWithNewEcosystem()
	if !assert2.Nil(err) {
		return
	}

	authToken, err := trinsic.Account().LoginAnonymous(context.Background())

	if !assert2.Nil(err) {
		return
	}

	trinsic.GetServiceOptions().AuthToken = authToken

	// authorizeWebhook() {
	request := &account.AuthorizeWebhookRequest{
		Events: []string{"*"}, //Authorize all events
	}

	authResponse, err := trinsic.Account().AuthorizeWebhook(context.Background(), request)
	// }

	if !assert2.Nil(err) {
		return
	}

	assert2.NotNil(authResponse)
}

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)

	// accountServiceConstructor() {
	trinsic, err := NewTrinsic(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}
	// }
	// accountServiceSignIn() {
	profile, err := trinsic.Account().LoginAnonymous(context.Background())
	if !assert2.Nil(err) {
		return
	}
	// }

	// accountService
	// protectUnprotectProfile() {
	securityCode := "1234"
	protectedProfile, err := trinsic.Account().Protect(profile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	unprotectedProfile, err := trinsic.Account().Unprotect(protectedProfile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	// }

	t.Run("Protected profile should fail", func(t *testing.T) {
		trinsic.Account().SetToken(protectedProfile)
		info2, err2 := trinsic.Account().GetInfo(context.Background())
		if !assert2.NotNil(err2) {
			t.FailNow()
		}
		if !assert2.Nil(info2) {
			t.FailNow()
		}
	})

	t.Run("Unprotected profile should work", func(t *testing.T) {
		trinsic.Account().SetToken(unprotectedProfile)
		// getInfo() {
		info2, err2 := trinsic.Account().GetInfo(context.Background())
		// }
		if !assert2.Nil(err2) {
			t.FailNow()
		}
		if !assert2.NotNil(info2) {
			t.FailNow()
		}
	})
}
