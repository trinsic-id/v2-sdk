package services

import (
	"context"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
)

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)

	// accountServiceConstructor() {
	trinsicService, err := NewTrinsic(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}
	// }
	// accountServiceSignIn() {
	profile, _, err := trinsicService.Account().SignIn(context.Background(), &account.SignInRequest{})
	if !assert2.Nil(err) {
		return
	}
	// }

	// accountService
	// protectUnprotectProfile() {
	securityCode := "1234"
	protectedProfile, err := trinsicService.Account().Protect(profile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	unprotectedProfile, err := trinsicService.Account().Unprotect(protectedProfile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	// }

	t.Run("Protected profile should fail", func(t *testing.T) {
		trinsicService.Account().SetToken(protectedProfile)
		info2, err2 := trinsicService.Account().GetInfo(context.Background())
		if !assert2.NotNil(err2) {
			t.FailNow()
		}
		if !assert2.Nil(info2) {
			t.FailNow()
		}
	})

	t.Run("Unprotected profile should work", func(t *testing.T) {
		trinsicService.Account().SetToken(unprotectedProfile)
		// getInfo() {
		info2, err2 := trinsicService.Account().GetInfo(context.Background())
		// }
		if !assert2.Nil(err2) {
			t.FailNow()
		}
		if !assert2.NotNil(info2) {
			t.FailNow()
		}
	})
}
