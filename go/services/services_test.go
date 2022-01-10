package services

import (
	"context"
	"encoding/json"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/connectivity"
	"io/ioutil"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
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

func TestVaccineCredentialsDemo(t *testing.T) {
	assert2 := assert.New(t)
	// Open in background
	channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), false)
	accountService, err := NewAccountService(nil, TrinsicTestConfig(), channel)
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
	credentialService, err := NewCredentialService(clinic, TrinsicTestConfig(), channel)
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

func TestTrustRegistryDemo(t *testing.T) {
	assert2, channel, err, profile, done := createAccountAndSignIn(t)
	if done {
		return
	}
	service, err := NewTrustRegistryService(profile, TrinsicTestConfig(), channel)

	// register issuer
	didUri := "did:example:test"
	typeUri := "https://schema.org/Card"
	frameworkUri := "https://example.com"
	err = service.RegisterIssuer(context.Background(), &sdk.RegisterIssuerRequest{
		Authority:              &sdk.RegisterIssuerRequest_DidUri{DidUri: didUri},
		CredentialTypeUri:      typeUri,
		GovernanceFrameworkUri: frameworkUri,
	})
	if !assert2.Nil(err) {
		return
	}

	err = service.RegisterVerifier(context.Background(), &sdk.RegisterVerifierRequest{
		Authority:              &sdk.RegisterVerifierRequest_DidUri{DidUri: didUri},
		PresentationTypeUri:    typeUri,
		GovernanceFrameworkUri: frameworkUri,
	})
	if !assert2.Nil(err) {
		return
	}

	issuerStatus, err := service.CheckIssuerStatus(context.Background(), &sdk.CheckIssuerStatusRequest{
		GovernanceFrameworkUri: frameworkUri,
		Member:                 &sdk.CheckIssuerStatusRequest_DidUri{DidUri: didUri},
		CredentialTypeUri:      typeUri,
	})
	if !assert2.Nil(err) {
		return
	}
	assert2.Equal(sdk.RegistrationStatus_CURRENT, issuerStatus, "Issuer status should be current")

	verifierStatus, err := service.CheckVerifierStatus(context.Background(), &sdk.CheckVerifierStatusRequest{
		GovernanceFrameworkUri: frameworkUri,
		Member:                 &sdk.CheckVerifierStatusRequest_DidUri{DidUri: didUri},
		PresentationTypeUri:    typeUri,
	})
	if !assert2.Nil(err) {
		return
	}
	assert2.Equal(sdk.RegistrationStatus_CURRENT, verifierStatus, "verifier status should be current")

	ecosystemList, err := service.SearchRegistry(context.Background(), "")
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(ecosystemList)
	assert2.NotEmpty(ecosystemList)
}

func createAccountAndSignIn(t *testing.T) (*assert.Assertions, *grpc.ClientConn, error, *sdk.AccountProfile, bool) {
	assert2 := assert.New(t)
	// Open in background
	channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), true)
	if !assert2.Nil(err) {
		return nil, nil, nil, nil, true
	}
	accountService, err := NewAccountService(nil, TrinsicTestConfig(), channel)
	if !assert2.Nil(err) {
		return nil, nil, nil, nil, true
	}
	profile, _, err := accountService.SignIn(context.Background(), nil)
	if !assert2.Nil(err) {
		return nil, nil, nil, nil, true
	}
	return assert2, channel, err, profile, false
}

func TestEcosystemDemo(t *testing.T) {
	assert2, channel, err, profile, done := createAccountAndSignIn(t)
	if done {
		return
	}
	service, err := NewProviderService(profile, TrinsicTestConfig(), channel)

	actualCreate, err := service.CreateEcosystem(context.Background(), &sdk.CreateEcosystemRequest{
		Name:        "Test Ecosystem",
		Description: "My ecosystem",
		Uri:         "https://example.com",
	})
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(actualCreate)
	assert2.NotNil(actualCreate.Id)
	assert2.True(strings.HasPrefix(actualCreate.Id, "urn:trinsic:ecosystems:"))

	// test list ecosystems
	actualList, err := service.ListEcosystems(context.Background())
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(actualList)
	assert2.NotEmpty(actualList)
}
func TestCreateChannelUrlFromConfig(t *testing.T) {
	assert2 := assert.New(t)
	if !assert2.Equalf(CreateChannelUrlFromConfig(TrinsicProductionConfig()), CreateChannelUrlFromConfig(nil), "Default is production stack") {
		return
	}
}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Helper()
		t.Errorf("%s: %v", message, err)
	}
}
