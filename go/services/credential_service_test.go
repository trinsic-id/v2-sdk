package services

import (
    "context"
    "encoding/json"
    "github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
    "github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/templates/v1/template"
    "github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/v1/credential"
    "testing"

    "github.com/stretchr/testify/assert"
)

func TestIssueAndVerify(t *testing.T) {
    assert2 := assert.New(t)

    trinsic, err := NewTrinsic(WithTestEnv())
    if !assert2.Nil(err) {
        return
    }

    // Make a new ecosystem
    ecoResponse, _ := trinsic.Provider().CreateEcosystem(context.Background(), &provider.CreateEcosystemRequest{})

    // Set auth token and ecosystem ID
    token, _ := ProfileToToken(ecoResponse.GetProfile())
    trinsic.SetToken(token)
    trinsic.SetEcosystemId(ecoResponse.GetEcosystem().Id)

    // Create a simple template to issue against
    templateRequest := &template.CreateCredentialTemplateRequest{Name: "Test", AllowAdditionalFields: false, Fields: make(map[string]*template.TemplateField)}
    templateRequest.Fields["name"] = &template.TemplateField{Description: "Name of credential recipient"}

    createdTemplate, _ := trinsic.Template().Create(context.Background(), templateRequest)
    templateId := createdTemplate.Data.Id

    // Issue from template
    valuesBytes, _ := json.Marshal(struct{ name string }{name: "A Realperson"})
    valuesJson := string(valuesBytes)

    // issueFromTemplate() {
    issueTemplateResponse, err := trinsic.Credential().IssueFromTemplate(context.Background(),
        &credential.IssueFromTemplateRequest{
            ValuesJson: valuesJson,
            TemplateId: templateId,
        })
    // }

    credentialJson := issueTemplateResponse.DocumentJson

    assert2.Nil(err)
    assert2.NotNil(issueTemplateResponse)

    // Issue (not from template) -- can just be any JSON blob
    unsignedCredential := valuesJson

    // issueCredential() {
    issueResponse, err := trinsic.Credential().Issue(context.Background(),
        &credential.IssueRequest{
            DocumentJson: unsignedCredential,
        })
    // }

    assert2.NotNil(issueResponse)

    // Create a proof
    // createProof() {
    request := &credential.CreateProofRequest{
        Proof: &credential.CreateProofRequest_DocumentJson{
            DocumentJson: credentialJson,
        },
    }

    proofResponse, err := trinsic.Credential().CreateProof(context.Background(), request)
    // }

    assert2.NotNil(proofResponse)
    assert2.Nil(err)

    proofJson := proofResponse.ProofDocumentJson

    // Verify proof
    // verifyProof() {
    verifyResponse, err := trinsic.Credential().VerifyProof(context.Background(), &credential.VerifyProofRequest{
        ProofDocumentJson: proofJson,
    })
    // }

    assert2.NotNil(verifyResponse)
    assert2.Nil(err)

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
    assert2.Nil(sendResponse)
    assert2.NotNil(err)
}
