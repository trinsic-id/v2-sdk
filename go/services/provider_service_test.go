package services

import (
    "context"
    "github.com/trinsic-id/sdk/go/test_util"

    "testing"

    "github.com/stretchr/testify/assert"
    "github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
)

func TestWebhookAddDelete(t *testing.T) {
    assert2 := assert.New(t)

    trinsic, err := test_util.TestTrinsicWithNewEcosystem()
    if !assert2.Nil(err) {
        return
    }

    webhookId := ""

    {
        // addWebhook() {
        request := &provider.AddWebhookRequest{
            DestinationUrl: "https://example.com/webhooks/trinsic",
            Secret:         "my well-kept secret",
            Events:         []string{"*"}, // All events
        }

        response, err := trinsic.Provider().AddWebhook(context.Background(), request)
        // }

        if !assert2.Nil(err) || !assert2.NotNil(response) {
            return
        }

        webhookId = response.Ecosystem.Webhooks[0].Id
    }

    {
        // deleteWebhook() {
        request := &provider.DeleteWebhookRequest{
            WebhookId: webhookId,
        }

        deleteResponse, err := trinsic.Provider().DeleteWebhook(context.Background(), request)
        // }

        if !assert2.Nil(err) || !assert2.NotNil(deleteResponse) {
            return
        }
    }
}

func TestEcosystemUpdateInfo(t *testing.T) {
    assert2 := assert.New(t)

    trinsic, err := test_util.TestTrinsicWithNewEcosystem()
    if !assert2.Nil(err) {
        return
    }

    // updateEcosystem() {
    updateRequest := &provider.UpdateEcosystemRequest{
        Description: "My new description",
        Uri:         "https://new-example.com",
    }

    updateResponse, err := trinsic.Provider().UpdateEcosystem(context.Background(), updateRequest)
    // }
    if !assert2.Nil(err) || !assert2.NotNil(updateResponse) {
        return
    }

    if !assert2.Equal(updateResponse.Ecosystem.Description, "My new description") {
        return
    }

    // ecosystemInfo() {
    infoResponse, err := trinsic.Provider().EcosystemInfo(context.Background(), &provider.EcosystemInfoRequest{})
    // }

    if !assert2.Nil(err) || !assert2.NotNil(updateResponse) {
        return
    }

    if !assert2.Equal(infoResponse.Ecosystem.Description, updateResponse.Ecosystem.Description) {
        return
    }
}

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
        _, err = providerService.Invite(context.Background(), &provider.InviteRequest{})
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
