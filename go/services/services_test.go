package services

import (
	"context"
	"encoding/json"
	"fmt"
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

func TestServiceBase_SetProfile(t *testing.T) {
	assert := assert.New(t)
	base, err := CreateServiceBase(nil, TrinsicTestConfig())
	failError(t, "error creating service base", err)
	// No profile set, should be an error
	md, err := base.BuildMetadata(nil)
	if !assert.EqualErrorf(err, "profile not set", "profile not set") {
		return
	}
	if !assert.Nil(md) {
		return
	}

	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), nil)
	if !assert.Nil(err) {
		return
	}
	demoWallet, _, err := accountService.SignIn(context.Background(), nil)
	if !assert.Nil(err) {
		return
	}

	base.SetProfile(demoWallet)
	if !assert.NoError(err) {
		return
	}
	md, err = base.BuildMetadata(nil)
	if !assert.NoError(err) {
		return
	}
	assert.NotNil(md)
}

func TestCreateChannelIfNeeded(t *testing.T) {
	const validHttpAddress = "http://localhost:5000"
	const validHttpsAddress = "https://localhost:5000"
	const validIpAddress = "http://20.75.134.127:80"
	const missingPortIpAddress = "http://20.75.134.127"
	const missingPortAddress = "http://localhost"
	const missingProtocolAddress = "localhost:5000"
	const blankAddress = ""
	testAddresses := []string{validHttpAddress, validHttpsAddress, validIpAddress, missingPortIpAddress, missingPortAddress, missingProtocolAddress, blankAddress}
	throwsException := []bool{false, false, false, true, true, true, true}

	for ij := 0; ij < len(testAddresses); ij++ {
		channel, err := CreateChannelIfNeeded(testAddresses[ij], nil, false)
		if (err != nil) != throwsException[ij] {
			t.Fatalf("URL=%s should fail=%v\nerror=%v", testAddresses[ij], throwsException[ij], err)
		}
		if channel != nil {
			_ = channel.Close()
			// Cannot have error and channel.
			if err != nil {
				t.Fail()
			}
		}
	}
}

func TestVaccineCredentials(t *testing.T) {
	assert := assert.New(t)
	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), nil)
	if !assert.Nil(err) {
		return
	}
	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	allison, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert.NotNil(allison) {
		return
	}

	clinic, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert.NotNil(clinic) {
		return
	}

	airline, _, err := accountService.SignIn(context.Background(), nil)
	failError(t, "error creating profile", err)
	if !assert.NotNil(airline) {
		return
	}

	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

	walletService, err := CreateWalletService(allison, TrinsicTestConfig(), nil)
	failError(t, "error creating wallet service", err)
	credentialService, err := CreateCredentialService(airline, TrinsicTestConfig(), nil)
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
	assert := assert.New(t)
	// Credit for this bug goes to Roman Levin (https://github.com/romanlevin)
	accountService, err := CreateAccountService(nil, TrinsicTestConfig(), nil)
	if !assert.Nil(err) {
		return
	}

	fmt.Printf("%+v\n", accountService)

	wallet, _, err := accountService.SignIn(context.Background(), nil)
	if !assert.Nil(err) || !assert.NotNil(wallet) {
		return
	}
	fmt.Printf("%+v\n", wallet)

	providerService, err := CreateProviderService(wallet, TrinsicTestConfig(), nil)
	if !assert.Nil(err) {
		return
	}

	// The issue was not throwing an error that the profile isn't set, but we don't need a wallet profile, so use a
	// context without metadata attached. See method definition.
	inviteResponse, err := providerService.InviteParticipant(context.Background(), &sdk.InviteRequest{
		Participant: sdk.ParticipantType_participant_type_individual,
		Description: "I dunno",
		ContactMethod: &sdk.InviteRequest_Email{
			Email: "scott.phillips@trinsic.id",
		},
	})
	if err != nil {
		panic(err)
	}
	fmt.Printf("%+v\n", inviteResponse)
}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Errorf("%s: %v", message, err)
	}
}
