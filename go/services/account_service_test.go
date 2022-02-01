package services

import (
	"context"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)
	accountService, err := newAccountService(nil, TrinsicTestConfig(), nil)
	if !assert2.Nil(err) {
		return
	}
	profile, _, err := accountService.SignIn(context.Background(), nil)
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
		accountService.SetProfile(protectedProfile)
		info2, err2 := accountService.GetInfo(context.Background())
		if !assert2.NotNil(err2) {
			return
		}
		if !assert2.Nil(info2) {
			return
		}
	})

	t.Run("Unprotected profile should work", func(t *testing.T) {
		accountService.SetProfile(unprotectedProfile)
		info2, err2 := accountService.GetInfo(context.Background())
		if !assert2.Nil(err2) {
			return
		}
		if !assert2.NotNil(info2) {
			return
		}
	})
}
