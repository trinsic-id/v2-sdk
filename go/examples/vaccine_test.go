package examples

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/stretchr/testify/assert"
	wallet "github.com/trinsic-id/sdk/go/proto/universalwallet/v1"
	template "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/templates/v1"
	credential "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/v1"
	"github.com/trinsic-id/sdk/go/services"
	"testing"
)

func createTemplate(templateService services.CredentialTemplateService, t *testing.T) *template.TemplateData {
	// createTemplate() {
	templateRequest := &template.CreateCredentialTemplateRequest{Name: "VaccinationCertificate", AllowAdditionalFields: false, Fields: make(map[string]*template.TemplateField)}
	templateRequest.Fields["firstName"] = &template.TemplateField{Description: "First name of vaccine recipient"}
	templateRequest.Fields["lastName"] = &template.TemplateField{Description: "Last name of vaccine recipient"}
	templateRequest.Fields["batchNumber"] = &template.TemplateField{Description: "Batch number of vaccine"}
	templateRequest.Fields["countryOfVaccination"] = &template.TemplateField{}

	createdTemplate, _ := templateService.Create(context.Background(), templateRequest)

	templateId := createdTemplate.Data.Id
	// }
	assert.True(t, templateId != "")
	assert.True(t, createdTemplate.Data.SchemaUri != "")

	return createdTemplate.Data
}

func TestVaccineDemo(t *testing.T) {
	config, _ := services.NewServiceOptions(services.WithTestEnv())

	accountService, _ := services.NewAccountService(config)
	providerService, _ := services.NewProviderService(config)

	// createEcosystem() {
	ecosystem, _ := providerService.CreateEcosystem(context.Background(), nil)
	ecosystemId := ecosystem.Ecosystem.Id
	// }

	// Set service default ecosystem
	providerService.SetEcosystemId(ecosystemId)
	accountService.SetEcosystemId(ecosystemId)
	config.ServiceOptions.DefaultEcosystem = ecosystemId

	walletService, _ := services.NewWalletService(config)
	credentialService, _ := services.NewCredentialService(config)
	templateService, _ := services.NewCredentialTemplateService(config)

	// setupActors() {
	// Create an account for each participant in the scenario
	allison, _, _ := accountService.SignIn(context.Background(), nil)
	airline, _, _ := accountService.SignIn(context.Background(), nil)
	clinic, _, _ := accountService.SignIn(context.Background(), nil)
	// }

	accountService.SetToken(clinic)
	info, _ := accountService.GetInfo(context.Background())
	fmt.Println("Account info:", info)

	// Create a template
	templateService.SetToken(clinic)
	createdTemplate := createTemplate(templateService, t)

	// Create template values
	// issueCredential() {
	// Prepare values for credential
	valuesStruct := struct {
		FirstName            string
		LastName             string
		batchNumber          int
		countryOfVaccination string
	}{
		FirstName:            "Allison",
		LastName:             "Allisonne",
		batchNumber:          123454321,
		countryOfVaccination: "US",
	}
	values, _ := json.Marshal(valuesStruct)

	// Issue credential
	issueResponse, _ := credentialService.IssueFromTemplate(context.Background(), &credential.IssueFromTemplateRequest{
		TemplateId: createdTemplate.Id,
		ValuesJson: string(values),
	})

	issuedCredential := issueResponse.DocumentJson
	// }

	fmt.Println("Credential:", issuedCredential)

	// sendCredential() {
	sendResponse, _ := credentialService.Send(context.Background(), &credential.SendRequest{
		DeliveryMethod: &credential.SendRequest_Email{Email: "example@trinsic.id"},
		DocumentJson:   issuedCredential,
	})
	// }
	if sendResponse != nil {
	} // Do nothing, this is for documentation injection

	// storeCredential() {
	// Allison stores the credential in her cloud wallet
	walletService.SetToken(allison)
	insertResponse, _ := walletService.InsertItem(context.Background(), &wallet.InsertItemRequest{ItemJson: issuedCredential})

	itemId := insertResponse.ItemId
	// }
	fmt.Println("Item Id:", itemId)

	// shareCredential() {
	// Allison shares the credential with the airline
	credentialService.SetToken(allison)
	proofResponse, _ := credentialService.CreateProof(context.Background(), &credential.CreateProofRequest{
		Proof: &credential.CreateProofRequest_ItemId{ItemId: itemId},
	})

	credentialProof := proofResponse.ProofDocumentJson
	// }

	fmt.Println("Proof:", credentialProof)

	// verifyCredential() {
	// The airline verifies the credential
	credentialService.SetToken(airline)
	verifyResult, _ := credentialService.VerifyProof(context.Background(), &credential.VerifyProofRequest{ProofDocumentJson: credentialProof})
	valid := verifyResult.IsValid
	// }

	fmt.Println("Verification result:", valid)
	assert.True(t, valid)

	// revokeCredential() {
	// update_status_response = await credential_service.update_status(credential_status_id=status_id, revoked=True)
	// print(f"UpdateStatusResponse: {update_status_response}")
	// credential_status = await credential_service.check_status(credential_status_id=status_id)
	// print(f"Credential_status: {credential_status}")
	// assert credential_status.revoked is True
	// }
}
