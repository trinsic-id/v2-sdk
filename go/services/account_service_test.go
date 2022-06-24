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
	trinsic, err := NewTrinsic(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}
	// }
	// accountServiceSignIn() {
	profile, _, err := trinsic.Account().SignIn(context.Background(), &account.SignInRequest{})
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
