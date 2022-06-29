package services

import (
	"context"
	"fmt"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"github.com/trinsic-id/sdk/go/proto/sdk/options/v1/options"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
	"github.com/trinsic-id/sdk/go/proto/services/trustregistry/v1/trustregistry"
)

// pathData() {
func GetBasePath() string {
	_, fileName, _, _ := runtime.Caller(1)
	path := filepath.Clean(filepath.Join(filepath.Dir(fileName), "..", "..", "devops", "testdata"))
	return path
}
func GetVaccineCertUnsignedPath() string {
	return filepath.Join(GetBasePath(), "vaccination-certificate-unsigned.jsonld")
}
func GetVaccineCertFramePath() string {
	return filepath.Join(GetBasePath(), "vaccination-certificate-frame.jsonld")
}

// }

func TestServiceOptions(t *testing.T) {
	assert := assert.New(t)

	opts, err := NewServiceOptions()
	assert.Nil(err)

	prodOpts := &Options{ServiceOptions: &options.ServiceOptions{}}
	err = WithProductionEnv()(prodOpts)
	assert.Nil(err, "production options should return")

	prodOpts.ServiceOptions.DefaultEcosystem = "default"
	assert.Equal(prodOpts, opts, "should default to production env")
	assert.Equal("prod.trinsic.cloud", opts.ServiceOptions.ServerEndpoint, "incorrect prod url")

	err = WithAuthToken("test token")(opts)
	assert.Nil(err, "should not error on test token")
	assert.Equal("test token", opts.ServiceOptions.AuthToken, "test token not applied")

	err = WithDevEnv()(opts)
	assert.Nil(err, "should not error on dev env")
	assert.Equal("dev-internal.trinsic.cloud", opts.ServiceOptions.ServerEndpoint, "incorrect dev url")

	err = WithStagingEnv()(opts)
	assert.Nil(err, "should not error on staging env")
	assert.Equal("staging-internal.trinsic.cloud", opts.ServiceOptions.ServerEndpoint, "incorrect staging url")

	err = WithDefaultEcosystem("test1")(opts)
	assert.Nil(err, "should not error on setting default ecosystem")
	assert.Equal("test1", opts.ServiceOptions.DefaultEcosystem, "default ecosystem not updated")
}

func TestTrustRegistryDemo(t *testing.T) {
	assert2, trinsic, err := createAccountAndSignIn(t)
	if !assert2.Nil(err) {
		return
	}

	// register issuer
	didURI := "did:example:test"
	schemaURI := "https://schema.org/Card"
	frameworkURI := fmt.Sprintf("https://example.com/%s", uuid.New())

	// registerGovernanceFramework() {
	newFramework, err := trinsic.TrustRegistry().AddFramework(context.Background(), &trustregistry.AddFrameworkRequest{
		GovernanceFrameworkUri: frameworkURI,
		Name:                   fmt.Sprintf("Example Framework - %s", uuid.New()),
	})
	// }
	if !assert2.Nil(err) {
		return
	}

	// registerMemberSample() {
	registerMemberResponse, err := trinsic.TrustRegistry().RegisterMember(context.Background(), &trustregistry.RegisterMemberRequest{
		FrameworkId: newFramework.Id,
		SchemaUri:   schemaURI,
		Member:      &trustregistry.RegisterMemberRequest_DidUri{DidUri: didURI},
	})
	// }
	if !assert2.Nil(err) {
		return
	}

	// getMembershipStatus() {
	getMembershipStatusResponse, err := trinsic.TrustRegistry().GetMembershipStatus(context.Background(), &trustregistry.GetMembershipStatusRequest{
		GovernanceFrameworkUri: frameworkURI,
		Member:                 &trustregistry.GetMembershipStatusRequest_DidUri{DidUri: didURI},
		SchemaUri:              schemaURI,
	})
	// }
	if !assert2.Nil(err) {
		return
	}
	assert2.Equal(trustregistry.RegistrationStatus_CURRENT, getMembershipStatusResponse.Status, "Member status should be current")

	// searchTrustRegistry() {
	ecosystemList, err := trinsic.TrustRegistry().SearchRegistry(context.Background(), nil)
	// }
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(ecosystemList)
	assert2.NotEmpty(ecosystemList)

	// unregisterIssuer() {
	unregisterMemberResponse, err := trinsic.TrustRegistry().UnregisterMember(context.Background(), &trustregistry.UnregisterMemberRequest{
		SchemaUri:   schemaURI,
		FrameworkId: newFramework.Id,
	})
	// }

	// This is for the variables used for demos above, so they appear "used".
	if unregisterMemberResponse == nil || registerMemberResponse == nil || getMembershipStatusResponse == nil {
		// Do absolutely nothing
	}
}

func createAccountAndSignIn(t *testing.T) (*assert.Assertions, *Trinsic, error) {
	assert2 := assert.New(t)

	trinsic, err := NewTrinsic(WithTestEnv())
	if !assert2.Nil(err) {
		fmt.Println(err)
		return assert2, nil, err
	}
	_, _, err = trinsic.Account().SignIn(context.Background(), &account.SignInRequest{})
	if !assert2.Nil(err) {
		fmt.Println(err)
		return assert2, nil, err
	}
	return assert2, trinsic, nil
}

func TestEcosystemDemo(t *testing.T) {
	assert2, trinsic, err := createAccountAndSignIn(t)
	if !assert2.Nil(err) {
		return
	}

	// createEcosystem() {
	actualCreate, err := trinsic.Provider().CreateEcosystem(context.Background(), &provider.CreateEcosystemRequest{
		Description: "My ecosystem",
		Uri:         "https://example.com",
	})
	// }
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(actualCreate)
	// assert2.NotNil(actualCreate.Id)
	// assert2.True(strings.HasPrefix(actualCreate.Id, "urn:trinsic:ecosystems:"))

	// inviteParticipant() {
	inviteResponse, err := trinsic.Provider().Invite(context.Background(),
		&provider.InviteRequest{Participant: provider.ParticipantType_participant_type_individual,
			Details: &account.AccountDetails{Email: "example@trinsic.id"}})
	// }
	if inviteResponse == nil {
		inviteResponse = &provider.InviteResponse{InvitationId: "NA"}
	}
	// invitationStatus() {
	inviteStatus, err := trinsic.Provider().InvitationStatus(context.Background(), &provider.InvitationStatusRequest{InvitationId: inviteResponse.InvitationId})
	// }
	if inviteStatus != nil {
	}

}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Helper()
		t.Errorf("%s: %v", message, err)
		t.FailNow()
	}
}
