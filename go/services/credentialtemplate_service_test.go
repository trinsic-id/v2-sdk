package services

import (
	"context"
	"encoding/json"
	"testing"

	sdk "github.com/trinsic-id/sdk/go/proto"
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
	templateRequest := &sdk.CreateCredentialTemplateRequest{Name: "My Example Credential", AllowAdditionalFields: false, Fields: make(map[string]*sdk.TemplateField)}
	templateRequest.Fields["firstName"] = &sdk.TemplateField{Description: "Given name"}
	templateRequest.Fields["lastName"] = &sdk.TemplateField{}
	templateRequest.Fields["age"] = &sdk.TemplateField{Type: sdk.FieldType_NUMBER, Optional: true}

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

	// issureFromTemplate() {
	credentialJSON, err := credentialService.IssueFromTemplate(context.Background(), &sdk.IssueFromTemplateRequest{
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

	// checkCredentialStatus() {
	status, err := credentialService.CheckStatus(context.Background(), &sdk.CheckStatusRequest{CredentialStatusId: ""})
	// }
	if status != nil {
	}

	// updateCredentialStatus() {
	updateResponse, err := credentialService.UpdateStatus(context.Background(), &sdk.UpdateStatusRequest{CredentialStatusId: "", Revoked: true})
	// }
	if updateResponse != nil {
	}

}
