package services

import (
	"encoding/json"
	"fmt"
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

func TestCreateChannelIfNeeded(t *testing.T) {
	var validHttpAddress = "http://localhost:5000"
	var validHttpsAddress = "https://localhost:5000" // Currently fails due to lack of HTTPS support.
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

func TestServices(t *testing.T) {
	serverAddress := os.Getenv("TRINSIC_SERVER_ADDRESS")
	walletService, err := CreateWalletService(serverAddress, nil)
	failError(t,"error creating service", err)

	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	allison, err := walletService.CreateWallet("")
	failError(t,"error creating wallet", err)
	clinic, err := walletService.CreateWallet("")
	failError(t,"error creating wallet", err)
	airline, err := walletService.CreateWallet("")
	failError(t,"error creating wallet", err)

	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	err = walletService.base.SetProfile(clinic)
	failError(t,"error setting profile", err)
	fileContent, err := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	failError(t,"error reading file", err)
	var credentialJson Document
	err = json.Unmarshal(fileContent, &credentialJson)
	failError(t,"error parsing JSON", err)

	credential, err := walletService.IssueCredential(credentialJson)
	failError(t,"error issuing credential", err)

	fmt.Printf("Credential:%s\n", credential)

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	err = walletService.base.SetProfile(allison)
	failError(t,"error setting profile", err)
	itemId, err := walletService.InsertItem(credential)
	failError(t,"error inserting item", err)
	fmt.Println("item id", itemId)

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	err = walletService.base.SetProfile(allison)
	failError(t,"error reading file", err)

	fileContent2, err := ioutil.ReadFile(GetVaccineCertFramePath())
	failError(t,"error reading file", err)
	var proofRequestJson Document
	err = json.Unmarshal(fileContent2, &proofRequestJson)
	failError(t,"error parsing JSON", err)

	credentialProof, err := walletService.CreateProof(itemId, proofRequestJson)
	failError(t,"error creating proof", err)
	fmt.Println("Credential proof", credentialProof)

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	err = walletService.base.SetProfile(airline)
	failError(t,"error setting profile", err)
	valid, err := walletService.VerifyProof(credentialProof)
	failError(t,"error verifying proof", err)
	fmt.Println("Validation result", valid)
	if valid != true {
		t.Fail()
	}
}

func failError(t *testing.T, message string, err error) {
	if err != nil {
		t.Errorf("%s: %v",message, err)
	}
}