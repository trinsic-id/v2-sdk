package services

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/google/uuid"
	templatesV1 "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/templates/v1"
	credentialsV1 "github.com/trinsic-id/sdk/go/proto/verifiablecredentials/v1"
	"testing"
)

func TestTemplatesDemo(t *testing.T) {
	assert2, authtoken, err := createAccountAndSignIn(t)
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

	credentialService, err := NewCredentialService(opts)
	if !assert2.Nil(err) {
		return
	}

	// create example template
	// createTemplate() {
	templateRequest := &templatesV1.CreateCredentialTemplateRequest{Name: fmt.Sprintf("Example Template - %s", uuid.New()), AllowAdditionalFields: false, Fields: make(map[string]*templatesV1.TemplateField)}
	templateRequest.Fields["firstName"] = &templatesV1.TemplateField{Description: "Given name"}
	templateRequest.Fields["lastName"] = &templatesV1.TemplateField{}
	templateRequest.Fields["age"] = &templatesV1.TemplateField{Type: templatesV1.FieldType_NUMBER, Optional: true}

	template, err := templateService.Create(context.Background(), templateRequest)
	// }
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

	// issueFromTemplate() {
	credentialJSON, err := credentialService.IssueFromTemplate(context.Background(), &credentialsV1.IssueFromTemplateRequest{
		TemplateId: template.Data.Id,
		ValuesJson: string(valuesString),
	})
	// }
	if !assert2.Nil(err) {
		return
	}
	var jsonDocument = make(map[string]interface{})
	err = json.Unmarshal([]byte(credentialJSON.DocumentJson), &jsonDocument)
	if !assert2.Nil(err) {
		return
	}
	assert2.NotNil(jsonDocument)
	assert2.NotNil(jsonDocument["id"])
	assert2.NotNil(jsonDocument["credentialSubject"])

	// getCredentialTemplate() {
	getResponse, err := templateService.Get(context.Background(), &templatesV1.GetCredentialTemplateRequest{Id: template.Data.Id})
	// }
	if getResponse != nil {
	}

	// searchCredentialTemplate() {
	searchResponse, err := templateService.Search(context.Background(), &templatesV1.SearchCredentialTemplatesRequest{Query: "SELECT * FROM c"})
	// }
	if searchResponse != nil {
	}

	// deleteCredentialTemplate() {
	deleteResponse, err := templateService.Delete(context.Background(), &templatesV1.DeleteCredentialTemplateRequest{Id: template.Data.Id})
	// }
	if deleteResponse != nil {
	}

	// checkCredentialStatus() {
	status, err := credentialService.CheckStatus(context.Background(), &credentialsV1.CheckStatusRequest{CredentialStatusId: ""})
	// }
	if status != nil {
	}

	// updateCredentialStatus() {
	updateResponse, err := credentialService.UpdateStatus(context.Background(), &credentialsV1.UpdateStatusRequest{CredentialStatusId: "", Revoked: true})
	// }
	if updateResponse != nil {
	}

}
