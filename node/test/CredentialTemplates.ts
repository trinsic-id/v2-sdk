import test from "ava";

import {AccountService, CredentialService, WalletService, TemplateService, CreateCredentialTemplateRequest, TemplateField, FieldType, AccountProfile, IssueFromTemplateRequest} from "../src";
import {getTestServerConfig, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON} from "./TestData";

require("dotenv").config();

const config = getTestServerConfig();

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

let profile = new AccountProfile();


async function createCredentialTemplateTest() {
  const templateService = new TemplateService({profile, server: config});
  
  let request = new CreateCredentialTemplateRequest();
  request.setName(credentialTemplateName); 
  
  request.getFieldsMap()
  .set("name", nameField)
  .set("numberOfBags", numberOfBags)
  .set("dateOfBirth", dateOfBirth)
  .set("vaccinated", isVaccinated);
  
  let response = await templateService.createCredentialTemplate(request);
  
  return response;
}

async function issueCredentialFromTemplate() {
  let templateResponse = await createCredentialTemplateTest();

  let service = new CredentialService({ profile, server: config });
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

test.before(async t => {
    let service = new AccountService({server: config});
    let response = await service.signIn();

    profile = response.getProfile()!;
});

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
  let response = await issueCredentialFromTemplate();

  t.assert(response?.issuer !== null);
  t.assert(response?.id !== null);
  t.is(response?.credentialSubject?.name, "Alice");
  t.is(response?.credentialSubject?.numberOfBags, 2);
  t.is(new Date(response?.credentialSubject?.dateOfBirth).toISOString(), new Date("1/1/2000").toISOString());
  t.is(response?.credentialSubject?.vaccinated, true);

  t.pass();
})

async function verifyCredential() {
  const credentialService = new CredentialService({ profile, server: config });
  const accountService = new AccountService({ profile, server: config });
  const walletService = new WalletService({ profile, server: config });

  const allison = (await accountService.signIn()).getProfile()!;
  const airline = (await accountService.signIn()).getProfile()!;
  
  const credential = await issueCredentialFromTemplate();
  console.log(`Credential=${credential}`);
  
  accountService.updateActiveProfile(allison);
  const itemId = await walletService.insertItem(credential);
  console.log(`Item id=${itemId}`);


  credentialService.updateActiveProfile(allison);
  const proofRequestJson = getVaccineCertFrameJSON();
  const proof = await credentialService.createProof(itemId, proofRequestJson);
  console.log(`Proof=${proof}`);
  
  credentialService.updateActiveProfile(airline);
  const isValid = await credentialService.verifyProof(proof);
  console.log(`Verification result=${isValid}`);

  return isValid
}

test("Verify Credential Issued from Template", async (t) => {
  let response = await issueCredentialFromTemplate();

  t.assert(response);

  t.pass();
})