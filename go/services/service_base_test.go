package services

import (
	"context"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestServiceBase_SetProfile(t *testing.T) {
	assert2 := assert.New(t)
	base, err := newServiceBase(nil, nil, GetTestServerChannel())
	failError(t, "error creating service base", err)

	accountService, err := NewAccountService(nil, GetTestServerChannel())
	if !assert2.Nil(err) {
		return
	}
	demoProfile, _, err := accountService.SignIn(context.Background(), nil)
	if !assert2.Nil(err) {
		return
	}

	t.Run("Profile not set throws error", func(t *testing.T) {
		// No profile set, should be an error
		md, err := base.BuildMetadata(nil)
		if !assert2.EqualErrorf(err, "cannot call authenticated endpoint: profile must be set", "cannot call authenticated endpoint: profile must be set") {
			return
		}
		if !assert2.Nil(md) {
			return
		}
	})
	t.Run("Profile set does not throw", func(t *testing.T) {
		base.SetProfile(demoProfile)
		if !assert2.NoError(err) {
			return
		}
		md, err := base.BuildMetadata(nil)
		if !assert2.NoError(err) {
			return
		}
		assert2.NotNil(md)
	})
}
