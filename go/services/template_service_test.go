package services

import (
	"context"
	"encoding/json"
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
	templateRequest := &template.CreateCredentialTemplateRequest{
		Name:                  "An Example Credential",
		Title:                 "Example Credential",
		Description:           "A credential for Trinsic's SDK samples",
		AllowAdditionalFields: false,
		Fields: map[string]*template.TemplateField{
			"firstName": {
				Title:       "First Name",
				Description: "Given name of holder",
			},
			"lastName": {
				Title:       "Last Name",
				Description: "Surname of holder",
				Optional:    true,
			},
			"age": {
				Title:       "Age",
				Description: "Age in years of holder",
				Type:        template.FieldType_NUMBER,
			},
		},
		FieldOrdering: map[string]*template.FieldOrdering{
			"firstName": {Order: 0, Section: "Name"},
			"lastName":  {Order: 1, Section: "Name"},
			"age":       {Order: 2, Section: "Miscellaneous"},
		},
		AppleWalletOptions: &template.AppleWalletOptions{
			PrimaryField:    "firstName",
			SecondaryFields: []string{"lastName"},
			AuxiliaryFields: []string{"age"},
		},
	}

	templateResponse, err := trinsic.Template().Create(context.Background(), templateRequest)
	// }
	if !assert2.Nil(err) && !assert2.NotNil(templateResponse) {
		return
	}
	assert2.NotNil(templateResponse.Data)
	assert2.NotNil(templateResponse.Data.Id)
	assert2.NotNil(templateResponse.Data.SchemaUri)

	templateId := templateResponse.Data.Id

	// updateTemplate() {
	var newTemplateTitle = "New Title"
	var newTemplateDescription = "New Description"
	var newFirstNameTitle = "New title for firstName"
	var newLastNameDescription = "New description for lastName"

	updateRequest := &template.UpdateCredentialTemplateRequest{
		Id:          templateId,
		Title:       &newTemplateTitle,
		Description: &newTemplateDescription,
		Fields: map[string]*template.TemplateFieldPatch{
			"firstName": {Title: &newFirstNameTitle},
			"lastName":  {Description: &newLastNameDescription},
		},
		FieldOrdering: map[string]*template.FieldOrdering{
			"age":       {Order: 0, Section: "Misc"},
			"firstName": {Order: 1, Section: "Full Name"},
			"lastName":  {Order: 2, Section: "Full Name"},
		},
		AppleWalletOptions: &template.AppleWalletOptions{
			PrimaryField:    "age",
			SecondaryFields: []string{"firstName", "lastName"},
		},
	}

	updateResponse, err := trinsic.Template().Update(context.Background(), updateRequest)
	// }

	if !assert2.Nil(err) && !assert2.NotNil(updateResponse) {
		return
	}

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
	updateStatusResponse, err := trinsic.Credential().UpdateStatus(context.Background(), &credential.UpdateStatusRequest{CredentialStatusId: "", Revoked: true})
	// }
	if updateStatusResponse != nil {
	}

}
