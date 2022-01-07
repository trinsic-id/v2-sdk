package services

import (
	"context"
	"fmt"
	"github.com/stretchr/testify/assert"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"testing"
)

func TestProviderBase_InviteParticipant(t *testing.T) {
	assert2 := assert.New(t)
	t.Run("Contact method unset throws", func(t *testing.T) {
		providerService, err := NewProviderService(nil, TrinsicTestConfig(), nil)
		if !assert2.Nil(err) {
			return
		}
		_, err = providerService.InviteParticipant(context.Background(), &sdk.InviteRequest{})
		if !assert2.NotNil(err) {
			return
		}
	})
}

func TestProviderService_InviteParticipant(t *testing.T) {
	assert2 := assert.New(t)
	// Credit for this bug goes to Roman Levin (https://github.com/romanlevin)
	accountService, err := NewAccountService(nil, TrinsicTestConfig(), nil)
	if !assert2.Nil(err) {
		return
	}

	fmt.Printf("%+v\n", accountService)

	wallet, _, err := accountService.SignIn(context.Background(), nil)
	if !assert2.Nil(err) || !assert2.NotNil(wallet) {
		return
	}
	fmt.Printf("%+v\n", wallet)

	providerService, err := NewProviderService(nil, TrinsicTestConfig(), GetTestServerChannel())
	if !assert2.Nil(err) {
		return
	}

	// The issue was not throwing an error that the profile isn't set, but we don't need a wallet profile, so use a
	// context without metadata attached. See method definition.
	_, err = providerService.InviteParticipant(context.Background(), &sdk.InviteRequest{
		Participant: sdk.ParticipantType_participant_type_individual,
		Description: "I dunno",
		ContactMethod: &sdk.InviteRequest_Email{
			Email: "does.not.exist@trinsic.id",
		},
	})
	//if err != nil {
	//	panic(err)
	//}
	//fmt.Printf("%+v\n", inviteResponse)
}
