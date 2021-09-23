package services

import (
	"encoding/json"
	"fmt"
	"github.com/stretchr/testify/assert"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"io/ioutil"
	"os"
	"path/filepath"
	"runtime"
	"testing"
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
	base := ServiceBase{}
	// No profile set, should be an error
	ctxt, err := base.GetMetadata()
	assert.EqualErrorf(t, err, "profile not set", "profile not set")
	assert.Nil(t, ctxt)

	walletService, err := createWalletServiceViaEnvVar(t)
	demoWallet, err := walletService.CreateWallet("")

	err = base.SetProfile(demoWallet)
	assert.NoError(t, err)
	ctxt, err = base.GetMetadata()
	assert.NoError(t, err)
	assert.NotNil(t, ctxt)
}

func TestCreateChannelIfNeeded(t *testing.T) {
	var validHttpAddress = "http://localhost:5000"
	var validHttpsAddress = "https://localhost:5000" // Currently, fails due to lack of HTTPS support.
	var missingPortAddress = "http://localhost"
	var missingProtocolAddress = "localhost:5000"
	var blankAddress = ""
	testAddresses := []string{validHttpAddress, validHttpsAddress, missingPortAddress, missingProtocolAddress, blankAddress}
	throwsException := []bool {false, true, true, true, true}

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
	walletService, err := createWalletServiceViaEnvVar(t)
	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	allison, err := walletService.CreateWallet("")
	failError(t, "error creating wallet", err)
	clinic, err := walletService.CreateWallet("")
	failError(t, "error creating wallet", err)
	airline, err := walletService.CreateWallet("")
	failError(t, "error creating wallet", err)

	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	err = walletService.base.SetProfile(clinic)
	failError(t, "error setting profile", err)
	fileContent, err := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	failError(t, "error reading file", err)
	var credentialJson Document
	err = json.Unmarshal(fileContent, &credentialJson)
	failError(t, "error parsing JSON", err)

	credential, err := walletService.IssueCredential(credentialJson)
	failError(t, "error issuing credential", err)

	fmt.Printf("Credential:%s\n", credential)

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	err = walletService.base.SetProfile(allison)
	failError(t, "error setting profile", err)
	itemId, err := walletService.InsertItem(credential)
	failError(t, "error inserting item", err)
	fmt.Println("item id", itemId)

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	err = walletService.base.SetProfile(allison)
	failError(t, "error reading file", err)

	fileContent2, err := ioutil.ReadFile(GetVaccineCertFramePath())
	failError(t, "error reading file", err)
	var proofRequestJson Document
	err = json.Unmarshal(fileContent2, &proofRequestJson)
	failError(t, "error parsing JSON", err)

	credentialProof, err := walletService.CreateProof(itemId, proofRequestJson)
	failError(t, "error creating proof", err)
	fmt.Println("Credential proof", credentialProof)

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	err = walletService.base.SetProfile(airline)
	failError(t, "error setting profile", err)
	valid, err := walletService.VerifyProof(credentialProof)
	failError(t, "error verifying proof", err)
	fmt.Println("Validation result", valid)
	if valid != true {
		t.Fail()
	}
}

func createWalletServiceViaEnvVar(t *testing.T) (*WalletService, error) {
	serverAddress := os.Getenv("TRINSIC_SERVER_ADDRESS")
	walletService, err := CreateWalletService(serverAddress, nil)
	failError(t, "error creating service", err)
	return walletService, err
}

func createProviderServiceViaEnvVar(t *testing.T) (*ProviderService, error) {
	serverAddress := os.Getenv("TRINSIC_SERVER_ADDRESS")
	providerService, err := CreateProviderService(serverAddress, nil)
	failError(t, "error creating service", err)
	return providerService, err
}

func TestProviderService_InviteParticipant(t *testing.T) {
	// Credit for this bug goes to Roman Levin (https://github.com/romanlevin)
	walletService, err := createWalletServiceViaEnvVar(t)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%+v\n", walletService)
	wallet, err := walletService.CreateWallet("")
	if err != nil {
		fmt.Printf("%+v\n", err)
	} else {
		fmt.Printf("%+v\n", wallet)
	}
	providerService, err := createProviderServiceViaEnvVar(t)
	if err != nil {
		panic(err)
	}

	// The issue was not throwing an error that the profile isn't set, but we don't need a wallet profile, so use a
	// context without metadata attached. See method definition.
	inviteResponse, err := providerService.InviteParticipant(&sdk.InviteRequest{
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

	// TODO - Verify invitation status
	//inviteStatus, err := providerService.InvitationStatus(&sdk.InvitationStatusRequest{
	//	InvitationId: inviteResponse.InvitationId,
	//})
	//if err != nil {
	//	panic(err)
	//}
	//fmt.Printf("%+v\n", inviteStatus)
	//assert.Equal(t, sdk.InvitationStatusResponse_InvitationSent, inviteStatus.Status)
}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Errorf("%s: %v",message, err)
	}
}