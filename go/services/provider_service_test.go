package services

import (
	"context"
	providerV1 "github.com/trinsic-id/sdk/go/proto/provider/v1"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestProviderBase_InviteParticipant(t *testing.T) {
	assert2 := assert.New(t)

	t.Run("Contact method unset throws", func(t *testing.T) {
		opts, err := NewServiceOptions(WithTestEnv())
		if !assert2.Nil(err) {
			return
		}

		providerService, err := NewProviderService(opts)
		if !assert2.Nil(err) {
			return
		}
		_, err = providerService.InviteParticipant(context.Background(), &providerV1.InviteRequest{})
		if !assert2.NotNil(err) {
			return
		}
	})
}

func TestProviderService_InviteParticipant(t *testing.T) {
	// assert2 := assert.New(t)

	// opts, err := NewServiceOptions(WithTestEnv())
	// if !assert2.Nil(err) {
	// 	return
	// }
	// // Credit for this bug goes to Roman Levin (https://github.com/romanlevin)

	// accountService, err := NewAccountService(opts)
	// if !assert2.Nil(err) {
	// 	return
	// }

	// wallet, _, err := accountService.SignIn(context.Background(), nil)
	// if !assert2.Nil(err) || !assert2.NotNil(wallet) {
	// 	return
	// }

	// providerService, err := NewProviderService(opts)
	// if !assert2.Nil(err) {
	// 	return
	// }

	// The issue was not throwing an error that the profile isn't set, but we don't need a wallet profile, so use a
	// context without metadata attached. See method definition.
	// _, err = providerService.InviteParticipant(context.Background(), &InviteRequest{
	// 	Participant: ParticipantType_participant_type_individual,
	// 	Description: "I dunno",
	// 	// ContactMethod: &InviteRequest_Email{
	// 	// 	Email: "does.not.exist@trinsic.id",
	// 	// },
	// })
	// assert2.Nil(err)
	//fmt.Printf("%+v\n", inviteResponse)
}
