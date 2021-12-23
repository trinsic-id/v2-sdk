package services

import (
	"context"
	"encoding/json"
	"fmt"
	"google.golang.org/grpc"
	"google.golang.org/grpc/connectivity"
	"io/ioutil"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/stretchr/testify/assert"
	sdk "github.com/trinsic-id/sdk/go/proto"
)

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

func GetTestServerChannel() *grpc.ClientConn {
	channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), true)
	if err != nil {
		panic(err)
	}
	return channel
}

func TestServiceBase_SetProfile(t *testing.T) {
	assert2 := assert.New(t)
	base, err := CreateServiceBase(nil, TrinsicTestConfig(), GetTestServerChannel())
	failError(t, "error creating service base", err)

	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), GetTestServerChannel())
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

func TestVaccineCredentials(t *testing.T) {
	assert2 := assert.New(t)
	// Open in background
	channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), false)
	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), channel)
	if !assert2.Nil(err) {
		return
	}
	if !accountService.GetChannel().WaitForStateChange(context.Background(), connectivity.Ready) {
		t.Fail()
	}
	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	allison, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert2.NotNil(allison) {
		return
	}

	clinic, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert2.NotNil(clinic) {
		return
	}

	airline, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert2.NotNil(airline) {
		return
	}

	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

	walletService, err := CreateWalletService(clinic, TrinsicTestConfig(), channel)
	failError(t, "error creating wallet service", err)
	credentialService, err := CreateCredentialService(clinic, TrinsicTestConfig(), channel)
	failError(t, "error creating credential service", err)

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	fileContent, err := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	failError(t, "error reading file", err)
	var credentialJson Document
	err = json.Unmarshal(fileContent, &credentialJson)
	failError(t, "error parsing JSON", err)

	credential, err := credentialService.IssueCredential(context.Background(), credentialJson)
	failError(t, "error issuing credential", err)

	fmt.Printf("Credential:%s\n", credential)

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	walletService.SetProfile(allison)
	failError(t, "error setting profile", err)
	itemId, err := walletService.InsertItem(context.Background(), credential)
	failError(t, "error inserting item", err)
	fmt.Println("item id", itemId)

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	walletService.SetProfile(allison)
	failError(t, "error reading file", err)

	fileContent2, err := ioutil.ReadFile(GetVaccineCertFramePath())
	failError(t, "error reading file", err)
	var proofRequestJson Document
	err = json.Unmarshal(fileContent2, &proofRequestJson)
	failError(t, "error parsing JSON", err)

	credentialService.SetProfile(allison)
	credentialProof, err := credentialService.CreateProof(context.Background(), itemId, proofRequestJson)
	failError(t, "error creating proof", err)
	fmt.Println("Credential proof", credentialProof)

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	walletService.SetProfile(airline)
	failError(t, "error setting profile", err)
	valid, err := credentialService.VerifyProof(context.Background(), credentialProof)
	failError(t, "error verifying proof", err)
	fmt.Println("Validation result", valid)
	if valid != true {
		t.Fail()
	}
}

func TestProviderService_InviteParticipant(t *testing.T) {
	assert2 := assert.New(t)
	// Credit for this bug goes to Roman Levin (https://github.com/romanlevin)
	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), nil)
	if !assert2.Nil(err) {
		return
	}

	fmt.Printf("%+v\n", accountService)

	wallet, _, err := accountService.SignIn(context.Background(), nil)
	if !assert2.Nil(err) || !assert2.NotNil(wallet) {
		return
	}
	fmt.Printf("%+v\n", wallet)

	providerService, err := CreateProviderService(nil, TrinsicTestConfig(), GetTestServerChannel())
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

func TestCreateChannelUrlFromConfig(t *testing.T) {
	assert2 := assert.New(t)
	if !assert2.Equalf(CreateChannelUrlFromConfig(TrinsicProductionConfig()), CreateChannelUrlFromConfig(nil), "Default is production stack") {
		return
	}
}

func TestProtectUnprotectProfile(t *testing.T) {
	assert2 := assert.New(t)
	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), nil)
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

func TestProviderBase_InviteParticipant(t *testing.T) {
	assert2 := assert.New(t)
	t.Run("Contact method unset throws", func(t *testing.T) {
		providerService, err := CreateProviderService(nil, TrinsicTestConfig(), nil)
		if !assert2.Nil(err) {
			return
		}
		_, err = providerService.InviteParticipant(context.Background(), &sdk.InviteRequest{})
		if !assert2.NotNil(err) {
			return
		}
	})
}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Helper()
		t.Errorf("%s: %v", message, err)
	}
}
