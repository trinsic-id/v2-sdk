package services

import (
	"context"
	"encoding/json"
	"testing"

	"github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/templates/v1/template"
	"github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/v1/credential"

	"github.com/stretchr/testify/assert"
)

func TestIssueAndVerify(t *testing.T) {
	assert := assert.New(t)

	trinsic, err := CreateTestTrinsicWithNewEcosystem()
	assert.Nil(err)

	// Create a simple template to issue against
	templateRequest := &template.CreateCredentialTemplateRequest{Name: "Test", AllowAdditionalFields: false, Fields: make(map[string]*template.TemplateField)}
	templateRequest.Fields["name"] = &template.TemplateField{Description: "Name of credential recipient"}

	createdTemplate, err := trinsic.Template().Create(context.Background(), templateRequest)
	if !assert.Nil(err, "error creating template") {
		return
	}
	templateId := createdTemplate.Data.Id

	// Issue from template
	valuesBytes, err := json.Marshal(struct{ name string }{name: "A Realperson"})
	if !assert.Nil(err, "error marshalling template") {
		return
	}
	valuesJson := string(valuesBytes)

	// issueFromTemplate() {
	issueTemplateResponse, err := trinsic.Credential().IssueFromTemplate(context.Background(),
		&credential.IssueFromTemplateRequest{
			ValuesJson: valuesJson,
			TemplateId: templateId,
		})
	// }

	credentialJson := issueTemplateResponse.DocumentJson

	if !assert.Nil(err, "error issuing credential from template") {
		return
	}
	if !assert.NotNil(issueTemplateResponse, "Issue template response undefined") {
		return
	}

	// Issue (not from template) -- can just be any JSON blob
	unsignedCredential := valuesJson

	// issueCredential() {
	issueResponse, err := trinsic.Credential().Issue(context.Background(),
		&credential.IssueRequest{
			DocumentJson: unsignedCredential,
		})
	// }

	assert.Nil(err)
	assert.NotNil(issueResponse)

	// Create a proof
	// createProof() {
	request := &credential.CreateProofRequest{
		Proof: &credential.CreateProofRequest_DocumentJson{
			DocumentJson: credentialJson,
		},
	}

	proofResponse, err := trinsic.Credential().CreateProof(context.Background(), request)
	// }

	assert.NotNil(proofResponse)
	assert.Nil(err)

	proofJson := proofResponse.ProofDocumentJson

	// Verify proof
	// verifyProof() {
	verifyResponse, err := trinsic.Credential().VerifyProof(context.Background(), &credential.VerifyProofRequest{
		ProofDocumentJson: proofJson,
	})
	// }

	assert.NotNil(verifyResponse)
	assert.Nil(err)

	// Send credential
	// sendCredential() {
	sendResponse, err := trinsic.Credential().Send(context.Background(), &credential.SendRequest{
		DeliveryMethod: &credential.SendRequest_Email{
			Email: "example@trinsic.id",
		},
		DocumentJson: credentialJson,
	})
	// }

	// Send() isn't implemented yet, should error
	assert.Nil(sendResponse)
	assert.NotNil(err)
}
