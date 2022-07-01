package services

import (
    "context"
    "encoding/json"
    "fmt"
    "github.com/google/uuid"
    "github.com/stretchr/testify/assert"
    "github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/templates/v1/template"
    "github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/v1/credential"

    "testing"
)

func TestTemplatesDemo(t *testing.T) {
	assert2 := assert.New(t)
	trinsic, err := CreateTestTrinsicWithNewEcosystem()
	if !assert2.Nil(err) {
		return
	}

	// create example template
	// createTemplate() {
	templateRequest := &template.CreateCredentialTemplateRequest{Name: fmt.Sprintf("Example Template - %s", uuid.New()), AllowAdditionalFields: false, Fields: make(map[string]*template.TemplateField)}
	templateRequest.Fields["firstName"] = &template.TemplateField{Description: "Given name"}
	templateRequest.Fields["lastName"] = &template.TemplateField{}
	templateRequest.Fields["age"] = &template.TemplateField{Type: template.FieldType_NUMBER, Optional: true}

	templateResponse, err := trinsic.Template().Create(context.Background(), templateRequest)
	// }
	if !assert2.Nil(err) && !assert2.NotNil(templateResponse) {
		return
	}
	assert2.NotNil(templateResponse.Data)
	assert2.NotNil(templateResponse.Data.Id)
	assert2.NotNil(templateResponse.Data.SchemaUri)

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
	credentialJSON, err := trinsic.Credential().IssueFromTemplate(context.Background(), &credential.IssueFromTemplateRequest{
		TemplateId: templateResponse.Data.Id,
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
	getResponse, err := trinsic.Template().Get(context.Background(), &template.GetCredentialTemplateRequest{Id: templateResponse.Data.Id})
	// }
	if getResponse != nil {
	}

	// searchCredentialTemplate() {
	searchResponse, err := trinsic.Template().Search(context.Background(), &template.SearchCredentialTemplatesRequest{Query: "SELECT * FROM c"})
	// }
	if searchResponse != nil {
	}

	// deleteCredentialTemplate() {
	deleteResponse, err := trinsic.Template().Delete(context.Background(), &template.DeleteCredentialTemplateRequest{Id: templateResponse.Data.Id})
	// }
	if deleteResponse != nil {
	}

	// checkCredentialStatus() {
	status, err := trinsic.Credential().CheckStatus(context.Background(), &credential.CheckStatusRequest{CredentialStatusId: ""})
	// }
	if status != nil {
	}

	// updateCredentialStatus() {
	updateResponse, err := trinsic.Credential().UpdateStatus(context.Background(), &credential.UpdateStatusRequest{CredentialStatusId: "", Revoked: true})
	// }
	if updateResponse != nil {
	}

}
