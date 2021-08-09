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
	path := filepath.Clean(filepath.Join(filepath.Dir(fileName), "..", "..","python", "tests"))
	return path
}

func GetVaccineCertUnsignedPath() string {
	return filepath.Join(GetBasePath(), "vaccination-certificate-unsigned.jsonld")
}
func GetVaccineCertFramePath() string {
	return filepath.Join(GetBasePath(), "vaccination-certificate-frame.jsonld")
}

func TestServices(t *testing.T) {
	serverAddress := os.Getenv("TRINSIC_SERVER_ADDRESS")
	walletService := CreateWalletService(serverAddress, nil)

	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	allison := walletService.CreateWallet("")
	clinic := walletService.CreateWallet("")
	airline := walletService.CreateWallet("")

	// Store profile for later use
	// File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

	// Create profile from existing data
	// var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	walletService.base.SetProfile(clinic)
	fileContent, _ := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	var credentialJson map[string]interface{}
	json.Unmarshal(fileContent, &credentialJson)

	credential := walletService.IssueCredential(credentialJson)

	fmt.Printf("Credential:%s\n", credential)

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	walletService.base.SetProfile(allison)
	itemId := walletService.InsertItem(credential)
	fmt.Println("item id", itemId)

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	walletService.base.SetProfile(allison)

	fileContent2, _ := ioutil.ReadFile(GetVaccineCertFramePath())
	var proofRequestJson map[string]interface{}
	json.Unmarshal(fileContent2, &proofRequestJson)

	credentialProof := walletService.CreateProof(itemId, proofRequestJson)

	fmt.Println("Credential proof", credentialProof)

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	walletService.base.SetProfile(airline)
	valid := walletService.VerifyProof(credentialProof)

	fmt.Println("Validation result", valid)
	if valid != true {
		t.Fail()
	}
}