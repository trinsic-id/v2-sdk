import test from "ava";

import {AccountService, CredentialService, WalletService, TemplateService, CreateCredentialTemplateRequest, TemplateField, FieldType, AccountProfile, IssueFromTemplateRequest, SignInRequest, InsertItemRequest, CreateProofRequest, VerifyProofRequest} from "../src";
import {getTemplateCertFrameJSON, getTestServerOptions, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON} from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

// defineTemplate() {
var credentialTemplateName = "My First Credential Template";
var  nameField = new TemplateField();
nameField.setType(FieldType.STRING);
nameField.setDescription("The name of the person");
nameField.setOptional(false);

var  numberOfBags = new TemplateField();
numberOfBags.setType(FieldType.NUMBER);
numberOfBags.setDescription("The number of bags the person is taking on the trip");
numberOfBags.setOptional(false);

var  dateOfBirth = new TemplateField();
dateOfBirth.setType(FieldType.DATETIME);
dateOfBirth.setDescription("The date of birth of the person");
dateOfBirth.setOptional(false);

var  isVaccinated = new TemplateField();
isVaccinated.setType(FieldType.BOOL);
isVaccinated.setDescription("Whether or not the person has been vaccinated");
isVaccinated.setOptional(false);
// }

let issuer = new AccountProfile();

test.before(async t => {
  let service = new AccountService(options);
  let response = await service.signIn(new SignInRequest());

  issuer.setAuthToken(response);
});

async function createCredentialTemplateTest() {
  // createTemplate() {
  const templateService = new TemplateService(options);
  
  let request = new CreateCredentialTemplateRequest();
  request.setName(credentialTemplateName); 
  
  request.getFieldsMap()
  .set("name", nameField)
  .set("numberOfBags", numberOfBags)
  .set("dateOfBirth", dateOfBirth)
  .set("vaccinated", isVaccinated);
  
  let response = await templateService.createCredentialTemplate(request);
  // }
  
  return response;
}

async function issueCredentialFromTemplate() {
  let templateResponse = await createCredentialTemplateTest();

  let service = new CredentialService(options);
  let request = new IssueFromTemplateRequest()
    .setTemplateId(templateResponse?.getData()?.getId() ?? "")
    .setValuesJson(JSON.stringify({
      "name": "Alice",
      "numberOfBags": 2,
      "dateOfBirth": new Date("1/1/2000").toISOString(),
      "vaccinated": true
    }));

  let response = await service.issueFromTemplate(request);

  return response;
}

async function verifyCredential() {
  const credentialService = new CredentialService(options);
  const accountService = new AccountService(options);
  const walletService = new WalletService(options);

  const allison = await accountService.signIn(new SignInRequest());
  const airline = await accountService.signIn(new SignInRequest());
  
  const credential = await issueCredentialFromTemplate();
  
  walletService.options.setAuthToken(allison);
  const insertItemResponse = await walletService.insertItem(new InsertItemRequest()
    .setItemJson(credential.getDocumentJson()));


  credentialService.options.setAuthToken(allison);
  const proofRequestJson = getTemplateCertFrameJSON();
  const proofRequest = new CreateProofRequest()
    .setItemId(insertItemResponse.getItemId())
    .setDocumentJson(proofRequestJson);
  const proof = await credentialService.createProof(proofRequest);
  
  credentialService.options.setAuthToken(airline);
  const verifyProofRequest = new VerifyProofRequest().setProofDocumentJson(proof.getProofDocumentJson())
  const verifyProofResponse = await credentialService.verifyProof(verifyProofRequest);

  return verifyProofResponse.getIsValid();
}

test("Create Credential Template", async (t) => {
  let response = await createCredentialTemplateTest();

  t.is(response.getData()?.getName(), credentialTemplateName);

  const fieldsMap = response.getData()?.getFieldsMap();
  t.deepEqual(fieldsMap?.get("name")?.toObject(), nameField.toObject());
  t.deepEqual(fieldsMap?.get("numberOfBags")?.toObject(), numberOfBags.toObject());
  t.deepEqual(fieldsMap?.get("dateOfBirth")?.toObject(), dateOfBirth.toObject());
  t.deepEqual(fieldsMap?.get("vaccinated")?.toObject(), isVaccinated.toObject());

  t.pass();
});

test("Issue Credential From Template", async (t) => {
  let response = JSON.parse((await issueCredentialFromTemplate()).getDocumentJson());

  t.assert(response?.issuer !== null);
  t.assert(response?.id !== null);
  t.is(response?.credentialSubject?.name, "Alice");
  t.is(response?.credentialSubject?.numberOfBags, 2);
  t.is(new Date(response?.credentialSubject?.dateOfBirth).toISOString(), new Date("1/1/2000").toISOString());
  t.is(response?.credentialSubject?.vaccinated, true);

  t.pass();
})

test("Verify Credential Issued from Template", async (t) => {
  let response = await verifyCredential();

  t.assert(response);

  t.pass();
})