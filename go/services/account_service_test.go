package services

import (
	"context"
	"testing"

	"github.com/stretchr/testify/assert"
	sdk "github.com/trinsic-id/sdk/go/proto"
)

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)

	opts, err := NewServiceOptions(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}

	accountService, err := NewAccountService(opts)
	if !assert2.Nil(err) {
		return
	}

	profile, _, err := accountService.SignIn(context.Background(), &sdk.SignInRequest{})
	if !assert2.Nil(err) {
		return
	}

	securityCode := "1234"
	protectedProfile, err := accountService.Protect(profile, securityCode)
	if !assert2.Nil(err) {
		return
	}
	unprotectedProfile, err := accountService.Unprotect(protectedProfile, securityCode)
	if !assert2.Nil(err) {
		return
	}

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
		info2, err2 := accountService.GetInfo(context.Background())
		if !assert2.Nil(err2) {
			t.FailNow()
		}
		if !assert2.NotNil(info2) {
			t.FailNow()
		}
	})
}
