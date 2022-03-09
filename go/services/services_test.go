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
	"google.golang.org/grpc"
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

	prodOpts := &sdk.ServiceOptions{}
	err = WithProductionEnv()(prodOpts)
	assert.Nil(err, "production options should return")

	prodOpts.DefaultEcosystem = "default"
	assert.Equal(prodOpts, opts, "should default to production env")
	assert.Equal("prod.trinsic.cloud", opts.ServerEndpoint, "incorrect prod url")

	err = WithAuthToken("test token")(opts)
	assert.Nil(err, "should not error on test token")
	assert.Equal("test token", opts.AuthToken, "test token not applied")

	err = WithDevEnv()(opts)
	assert.Nil(err, "should not error on dev env")
	assert.Equal("dev-internal.trinsic.cloud", opts.ServerEndpoint, "incorrect dev url")

	err = WithStagingEnv()(opts)
	assert.Nil(err, "should not error on staging env")
	assert.Equal("staging-internal.trinsic.cloud", opts.ServerEndpoint, "incorrect staging url")

	err = WithDefaultEcosystem("test1")(opts)
	assert.Nil(err, "should not error on setting default ecosystem")
	assert.Equal("test1", opts.DefaultEcosystem, "default ecosystem not updated")

	// // Grab config from env
	// os.Setenv("TEST_SERVER_ENDPOINT", "test.ing")
	// os.Setenv("TEST_SERVER_PORT", "1234")
	// os.Setenv("TEST_SERVER_USE_TLS", "true")

	// err = WithTestEnv()(opts)
	// assert.Nil(err, "should not error on test env")
	// assert.Equal("test.ing", opts.ServerEndpoint)
	// assert.Equal(int32(1234), opts.ServerPort)
	// assert.True(opts.ServerUseTls)

	// // Respect false for flag
	// os.Setenv("TEST_SERVER_USE_TLS", "false")
	// err = WithTestEnv()(opts)
	// assert.Nil(err, "should not error on test env")
	// assert.False(opts.ServerUseTls)
}

// func GetTestServerChannel() *grpc.ClientConn {
// 	channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), true)
// 	if err != nil {
// 		panic(err)
// 	}
// 	return channel
// }

func TestVaccineCredentialsDemo(t *testing.T) {
	assert2 := assert.New(t)

	err := createDefaultEcosystem()
	if !assert2.Nil(err) {
		return
	}

	// Open in background
	opts, err := NewServiceOptions(WithTestEnv())
	if !assert2.Nil(err) {
		return
	}

	accountService, err := NewAccountService(opts)
	if !assert2.Nil(err) {
		return
	}

	// if !accountService.GetChannel().WaitForStateChange(context.Background(), connectivity.Ready) {
	// 	t.Fail()
	// }

	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	// setupActors() {
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
	// }

	// storeAndRecallProfile() {
	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));
	// }

	walletService, err := CreateWalletService(opts)
	failError(t, "error creating wallet service", err)
	walletService.SetChannel(accountService.GetChannel())

	credentialService, err := NewCredentialService(opts)
	failError(t, "error creating credential service", err)
	credentialService.SetChannel(accountService.GetChannel())

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	// issueCredential() {
	fileContent, err := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	failError(t, "error reading file", err)
	var credentialJson Document
	err = json.Unmarshal(fileContent, &credentialJson)
	failError(t, "error parsing JSON", err)

	credentialService.SetProfile(clinic)
	credential, err := credentialService.IssueCredential(context.Background(), credentialJson)
	failError(t, "error issuing credential", err)
	fmt.Printf("Credential:%s\n", credential)
	// }

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	// storeCredential() {
	walletService.SetProfile(allison)
	failError(t, "error setting profile", err)
	itemId, err := walletService.InsertItem(context.Background(), credential)
	failError(t, "error inserting item", err)
	fmt.Println("item id", itemId)
	// }

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	// shareCredential() {
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
	// }

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	// verifyCredential() {
	walletService.SetProfile(airline)
	failError(t, "error setting profile", err)
	valid, err := credentialService.VerifyProof(context.Background(), credentialProof)
	failError(t, "error verifying proof", err)
	fmt.Println("Validation result", valid)
	if valid != true {
		t.Fail()
	}
	// }
}

func TestTrustRegistryDemo(t *testing.T) {
	assert2, channel, authtoken, err := createAccountAndSignIn(t)
	if !assert2.Nil(err) {
		return
	}

	opts, err := NewServiceOptions(WithTestEnv(), WithAuthToken(authtoken))
	if !assert2.Nil(err) {
		return
	}

	service, _ := NewTrustRegistryService(opts)
	service.SetChannel(channel)

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

func createAccountAndSignIn(t *testing.T) (*assert.Assertions, *grpc.ClientConn, string, error) {
	assert2 := assert.New(t)
	opts, err := NewServiceOptions(WithTestEnv())
	if !assert2.Nil(err) {
		return nil, nil, "", err
	}
	// Open in background
	accountService, err := NewAccountService(opts)
	if !assert2.Nil(err) {
		return nil, nil, "", err
	}
	authtoken, _, err := accountService.SignIn(context.Background(), nil)
	if !assert2.Nil(err) {
		fmt.Println(err)
		return nil, nil, "", err
	}
	return assert2, accountService.GetChannel(), authtoken, nil
}

func createDefaultEcosystem() error {
	opts, err := NewServiceOptions(WithTestEnv())
	if err != nil {
		return err
	}

	ps, err := NewProviderService(opts)
	if err != nil {
		return err
	}

	_, err = ps.CreateEcosystem(context.Background(), &sdk.CreateEcosystemRequest{Name: "default"})

	return err
}
func TestEcosystemDemo(t *testing.T) {
	assert2, channel, authtoken, err := createAccountAndSignIn(t)
	if !assert2.Nil(err) {
		return
	}

	opts, err := NewServiceOptions(WithTestEnv(), WithAuthToken(authtoken))
	if !assert2.Nil(err) {
		return
	}

	service, err := NewProviderService(opts)
	if !assert2.Nil(err) {
		return
	}

	service.SetChannel(channel)

	actualCreate, err := service.CreateEcosystem(context.Background(), &sdk.CreateEcosystemRequest{
		Name:        "Test-Ecosystem",
		Description: "My ecosystem",
		Uri:         "https://example.com",
	})
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(actualCreate)
	// assert2.NotNil(actualCreate.Id)
	// assert2.True(strings.HasPrefix(actualCreate.Id, "urn:trinsic:ecosystems:"))

	// test list ecosystems
	// actualList, err := service.ListEcosystems(context.Background())
	if !assert2.Nil(err) {
		return
	}
	// assert2.NotNil(actualList)
	// assert2.NotEmpty(actualList)
}

func TestTemplatesDemo(t *testing.T) {
	assert2, channel, authtoken, err := createAccountAndSignIn(t)
	if !assert2.Nil(err) {
		return
	}

	opts, err := NewServiceOptions(WithTestEnv(), WithAuthToken(authtoken))
	if !assert2.Nil(err) {
		return
	}

	templateService, err := NewCredentialTemplateService(opts)
	if !assert2.Nil(err) {
		return
	}
	templateService.SetChannel(channel)

	credentialService, err := NewCredentialService(opts)
	if !assert2.Nil(err) {
		return
	}

	credentialService.SetChannel(channel)

	// create example template
	templateRequest := &sdk.CreateCredentialTemplateRequest{Name: "My Example Credential", AllowAdditionalFields: false, Fields: make(map[string]*sdk.TemplateField)}
	templateRequest.Fields["firstName"] = &sdk.TemplateField{Description: "Given name"}
	templateRequest.Fields["lastName"] = &sdk.TemplateField{}
	templateRequest.Fields["age"] = &sdk.TemplateField{Type: sdk.FieldType_NUMBER, Optional: true}

	template, err := templateService.Create(context.Background(), templateRequest)
	if !assert2.Nil(err) && !assert2.NotNil(template) {
		return
	}
	assert2.NotNil(template.Data)
	assert2.NotNil(template.Data.Id)
	assert2.NotNil(template.Data.SchemaUri)

	// issue credential from this template
	values := struct {
		FirstName string
		LastName  string
		Age       int
	}{
		FirstName: "Jane",
		LastName:  "Doe",
		Age:       42,
	}
	valuesString, err := json.Marshal(values)
	if !assert2.Nil(err) {
		return
	}

	credentialJson, err := credentialService.IssueFromTemplate(context.Background(), &sdk.IssueFromTemplateRequest{
		TemplateId: template.Data.Id,
		ValuesJson: string(valuesString),
	})
	if !assert2.Nil(err) {
		return
	}
	var jsonDocument = make(map[string]interface{})
	err = json.Unmarshal([]byte(credentialJson.DocumentJson), &jsonDocument)
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(jsonDocument)
	assert2.NotNil(jsonDocument["id"])
	assert2.NotNil(jsonDocument["credentialSubject"])
}

// func TestCreateChannelUrlFromConfig(t *testing.T) {
// 	assert2 := assert.New(t)
// 	if !assert2.Equalf(CreateChannelUrlFromConfig(TrinsicProductionConfig()), CreateChannelUrlFromConfig(nil), "Default is production stack") {
// 		return
// 	}
// }

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Helper()
		t.Errorf("%s: %v", message, err)
		t.FailNow()
	}
}
