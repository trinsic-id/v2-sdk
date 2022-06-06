package services

import (
	"context"
	account "github.com/trinsic-id/sdk/go/proto/account/v1"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)

	// accountServiceConstructor() {
	opts, err := NewServiceOptions(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}

	accountService, err := NewAccountService(opts)
	if !assert2.Nil(err) {
		return
	}
	// }
	// accountServiceSignIn() {
	profile, _, err := accountService.SignIn(context.Background(), &account.SignInRequest{})
	if !assert2.Nil(err) {
		return
	}
	// }

	// accountService
	// protectUnprotectProfile() {
	securityCode := "1234"
	protectedProfile, err := accountService.Protect(profile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	unprotectedProfile, err := accountService.Unprotect(protectedProfile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	// }

	t.Run("Protected profile should fail", func(t *testing.T) {
		accountService.SetToken(protectedProfile)
		info2, err2 := accountService.GetInfo(context.Background())
		if !assert2.NotNil(err2) {
			t.FailNow()
		}
		if !assert2.Nil(info2) {
			t.FailNow()
		}
	})

	t.Run("Unprotected profile should work", func(t *testing.T) {
		accountService.SetToken(unprotectedProfile)
		// getInfo() {
		info2, err2 := accountService.GetInfo(context.Background())
		// }
		if !assert2.Nil(err2) {
			t.FailNow()
		}
		if !assert2.NotNil(info2) {
			t.FailNow()
		}
	})
}
