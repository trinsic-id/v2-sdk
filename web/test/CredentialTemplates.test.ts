import {
  AccountService,
  CreateCredentialTemplateRequest,
  CreateProofRequest,
  CredentialService,
  FieldType,
  InsertItemRequest,
  IssueFromTemplateRequest,
  TemplateField,
  TemplateService,
  VerifyProofRequest,
  WalletService,
} from "../src";
import { getTemplateCertFrameJSON } from "./TestData";
import "jasmine";

import {getTestServerOptions} from "./env";

// require("dotenv").config();

const options = getTestServerOptions();

// defineTemplate() {
const credentialTemplateName = "My First Credential Template";
const nameField = TemplateField.fromPartial({
  description: "The name of the person",
  type: FieldType.STRING,
  optional: false,
});

const numberOfBags = TemplateField.fromPartial({
  type: FieldType.NUMBER,
  description: "The number of bags the person is taking on the trip",
  optional: false,
});

const dateOfBirth = TemplateField.fromPartial({
  type: FieldType.DATETIME,
  description: "The date of birth of the person",
  optional: false,
});

const isVaccinated = TemplateField.fromPartial({
  type: FieldType.BOOL,
  description: "Whether or not the person has been vaccinated",
  optional: false,
});
// }

describe("CredentialTemplatesService Unit Tests", () => {
  beforeAll(async () => {
    let service = new AccountService(options);
    options.authToken = await service.signIn();
  });

  it("Create Credential Template", async () => {
    let response = await createCredentialTemplateTest();

    expect(response.data?.name).toBe(credentialTemplateName);

    const fieldsMap = response.data?.fields!;
    expect(fieldsMap["name"]).toEqual(nameField);
    expect(fieldsMap["numberOfBags"]).toEqual(numberOfBags);
    expect(fieldsMap["dateOfBirth"]).toEqual(dateOfBirth);
    expect(fieldsMap["vaccinated"]).toEqual(isVaccinated);
  });

  it("Issue Credential From Template", async () => {
    let response = JSON.parse(
      (await issueCredentialFromTemplate()).documentJson
    );

    expect(response?.issuer !== null);
    expect(response?.id !== null);
    expect(response?.credentialSubject?.name).toBe("Alice");
    expect(response?.credentialSubject?.numberOfBags).toBe(2);
    expect(
      new Date(response?.credentialSubject?.dateOfBirth).toISOString()
    ).toBe(new Date("1/1/2000").toISOString());
    expect(response?.credentialSubject?.vaccinated).toBe(true);
  });

  it("Verify Credential Issued from Template", async () => {
    let response = await verifyCredential();
    expect(response).not.toBeNull();
  });
});

async function createCredentialTemplateTest() {
  // createTemplate() {
  const templateService = new TemplateService(options);

  let request = CreateCredentialTemplateRequest.fromPartial({
    name: credentialTemplateName,
    fields: {
      name: nameField,
      numberOfBags: numberOfBags,
      dateOfBirth: dateOfBirth,
      vaccinated: isVaccinated,
    },
  });

  let response = await templateService.createCredentialTemplate(request);
  // }

  return response;
}

async function issueCredentialFromTemplate() {
  let templateResponse = await createCredentialTemplateTest();

  let service = new CredentialService(options);
  // issueFromTemplate() {
  let request = IssueFromTemplateRequest.fromPartial({
    templateId: templateResponse?.data?.id ?? "",
    valuesJson: JSON.stringify({
      name: "Alice",
      numberOfBags: 2,
      dateOfBirth: new Date("1/1/2000").toISOString(),
      vaccinated: true,
    }),
  });

  let response = await service.issueFromTemplate(request);
  // }

  return response;
}

async function verifyCredential() {
  const credentialService = new CredentialService(options);
  const accountService = new AccountService(options);
  const walletService = new WalletService(options);

  const allison = await accountService.signIn();
  const airline = await accountService.signIn();

  const credential = await issueCredentialFromTemplate();

  walletService.options.authToken = allison;
  const insertItemResponse = await walletService.insertItem(
    InsertItemRequest.fromPartial({ itemJson: credential.documentJson })
  );

  credentialService.options.authToken = allison;
  const proofRequestJson = getTemplateCertFrameJSON();
  const proofRequest = CreateProofRequest.fromPartial({
    itemId: insertItemResponse.itemId,
    revealDocumentJson: proofRequestJson,
  });
  const proof = await credentialService.createProof(proofRequest);

  credentialService.options.authToken = airline;
  const verifyProofRequest = VerifyProofRequest.fromPartial({
    proofDocumentJson: proof.proofDocumentJson,
  });
  const verifyProofResponse = await credentialService.verifyProof(
    verifyProofRequest
  );

  return verifyProofResponse.isValid;
}
