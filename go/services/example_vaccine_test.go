package services

import (
	"context"
	"fmt"
	account "github.com/trinsic-id/sdk/go/proto/account/v1"
	wallet "github.com/trinsic-id/sdk/go/proto/universalwallet/v1"
	credential "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/v1"
	"io/ioutil"
)

func ExampleVaccineDemo() {
	// Open in background
	opts, err := NewServiceOptions(WithTestEnv())
	if err != nil {
		return
	}

	accountService, err := NewAccountService(opts)
	if err != nil {
		return
	}

	// if !accountService.GetChannel().WaitForStateChange(context.Background(), connectivity.Ready) {
	// 	t.Fail()
	// }

	// SETUP ACTORS
	// Create 3 different profiles for each participant in the scenario
	// setupActors() {
	allison, _, err := accountService.SignIn(context.Background(), &account.SignInRequest{})
	printError("error creating profile", err)
	if allison == "" {
		fmt.Println("error creating profile")
		return
	}

	clinic, _, err := accountService.SignIn(context.Background(), &account.SignInRequest{})
	printError("error creating profile", err)
	if clinic == "" {
		fmt.Println("error creating profile")
		return
	}

	airline, _, err := accountService.SignIn(context.Background(), &account.SignInRequest{})
	printError("error creating profile", err)
	if airline == "" {
		fmt.Println("error creating profile")
		return
	}
	// }

	walletService, err := NewWalletService(opts)
	printError("error creating wallet service", err)

	credentialService, err := NewCredentialService(opts)
	printError("error creating credential service", err)

	// ISSUE CREDENTIAL
	// Sign a credential as the clinic and send it to Allison
	// issueCredential() {
	fileContent, err := ioutil.ReadFile(GetVaccineCertUnsignedPath())
	printError("error reading file", err)

	credentialService.SetToken(clinic)
	// issueCredentialSample() {
	credentialResponse, err := credentialService.IssueCredential(context.Background(), &credential.IssueRequest{DocumentJson: string(fileContent)})
	// }
	printError("error issuing credential", err)
	//fmt.Printf("Credential:%s\n", credentialResponse)
	// }

	// sendCredential() {
	err = credentialService.Send(context.Background(), &credential.SendRequest{DocumentJson: credentialResponse.SignedDocumentJson,
		DeliveryMethod: &credential.SendRequest_Email{Email: "example@trinsic.id"}})
	// }
	// We ignore errors because we don't expect this email account to exist.
	err = nil

	// STORE CREDENTIAL
	// Alice stores the credential in her cloud wallet.
	// storeCredential() {
	walletService.SetToken(allison)
	printError("error setting profile", err)
	// insertItemWallet() {
	itemID, err := walletService.InsertItem(context.Background(), &wallet.InsertItemRequest{ItemJson: credentialResponse.SignedDocumentJson})
	// }
	printError("error inserting item", err)
	// }

	// searchWalletBasic() {
	items, err := walletService.Search(context.Background(), &wallet.SearchRequest{})
	// }
	// searchWalletSQL() {
	items2, err := walletService.Search(context.Background(), &wallet.SearchRequest{Query: "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"})
	// }
	if items != nil && items2 != nil {
	}

	// SHARE CREDENTIAL
	// Allison shares the credential with the venue.
	// The venue has communicated with Allison the details of the credential
	// that they require expressed as a JSON-LD frame.
	// shareCredential() {
	walletService.SetToken(allison)
	printError("error reading file", err)

	fileContent2, err := ioutil.ReadFile(GetVaccineCertFramePath())
	printError("error reading file", err)

	req := &credential.CreateProofRequest{
		RevealDocumentJson: string(fileContent2),
		Proof:              &credential.CreateProofRequest_ItemId{ItemId: itemID},
	}

	credentialService.SetToken(allison)
	// createProof() {
	credentialProof, err := credentialService.CreateProof(context.Background(), req)
	// }
	printError("error creating proof", err)
	fmt.Println("Credential proof", credentialProof)
	// }

	// VERIFY CREDENTIAL
	// The airline verifies the credential
	// verifyCredential() {
	walletService.SetToken(airline)
	printError("error setting profile", err)
	// verifyProof() {
	valid, err := credentialService.VerifyProof(context.Background(), &credential.VerifyProofRequest{ProofDocumentJson: credentialResponse.SignedDocumentJson})
	// }
	printError("error verifying proof", err)
	fmt.Println("Validation result", valid)
	// }

	// Output: Validation result true
}

func printError(message string, err error) {
	if err != nil {
		fmt.Printf("%s: %v\n", message, err)
	}
}
