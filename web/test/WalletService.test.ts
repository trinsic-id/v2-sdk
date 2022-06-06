import {
  AccountService,
  CreateCredentialTemplateRequest,
  CreateProofRequest,
  CredentialService,
  FieldType,
  InsertItemRequest,
  IssueFromTemplateRequest,
  SearchRequest,
  TemplateField,
  TemplateService,
  WalletService,
} from "../src";
import {
  getVaccineCertFrameJSON,
  getVaccineCertUnsignedJSON,
} from "./TestData";


import {getTestServerOptions, setTestTimeout} from "./env";
import {v4 as uuid} from "uuid";

const options = getTestServerOptions();
const allison = getTestServerOptions();
const clinic = getTestServerOptions();
const airline = getTestServerOptions();

describe("WalletService Unit Tests", () => {
  setTestTimeout()
  beforeAll(async () => {
    let service = new AccountService(options);
    allison.authToken = await service.signIn();
    clinic.authToken = await service.signIn();
    airline.authToken = await service.signIn();
  });

  it("get account info", async () => {
    let service = new AccountService(clinic);
    let info = await service.info();

    expect(info).not.toBeNull();
  });

  it("create new account", async () => {
    let service = new AccountService(clinic);
    let response = await service.signIn();

    expect(response).not.toBeNull();
    expect(response).not.toBe("");
  });

  it("Demo: create wallet, set profile, search records, issue credential", async () => {
    let credentialService = new CredentialService(clinic);
    let walletService = new WalletService(allison);

    let issueResponse = await credentialService.issueCredential({
      documentJson: getVaccineCertUnsignedJSON(),
    });

    // insertItemWallet() {
    let insertItemResponse = await walletService.insertItem(
      InsertItemRequest.fromPartial({
        itemJson: issueResponse.signedDocumentJson,
      })
    );
    // }

    expect(insertItemResponse).not.toBeNull();
    expect(insertItemResponse.itemId).not.toBe("");
    // console.log("Item id=", insertItemResponse.itemId);

    // Delay half a second for race condition fixes?
    await new Promise((res) => setTimeout(res, 1000));

    // searchWalletBasic() {
    let items = await walletService.search();
    // }
    // searchWalletSQL() {
    let items2 = await walletService.search(
      SearchRequest.fromPartial({
        query:
          "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'",
      })
    );
    // }

    credentialService.options = allison;
    // createProof() {
    let proof = await credentialService.createProof(
      CreateProofRequest.fromPartial({
        itemId: insertItemResponse.itemId,
        revealDocumentJson: getVaccineCertFrameJSON(),
      })
    );
    // }

    credentialService.options = airline;
    // verifyProof() {
    let verifyResponse = await credentialService.verifyProof({
      proofDocumentJson: proof.proofDocumentJson,
    });
    // }

    expect(verifyResponse.isValid).toBeTruthy();
  });

  it("Demo: template management and credential issuance from template", async () => {
    let credentialService = new CredentialService(options);
    let templateService = new TemplateService(options);

    // create example template
    let templateRequest = CreateCredentialTemplateRequest.fromPartial({
      name: `My Example Credential-${uuid()}`,
      allowAdditionalFields: false,
      fields: {
        firstName: TemplateField.fromPartial({ description: "Given name" }),
        lastName: TemplateField.fromPartial({}),
        age: TemplateField.fromPartial({
          type: FieldType.NUMBER,
          optional: true,
        }),
      },
    });

    let template = await templateService.createCredentialTemplate(
      templateRequest
    );

    expect(template).not.toBeNull();
    expect(template.data).not.toBeNull();
    expect(template.data!.id).not.toBeNull();
    expect(template.data!.schemaUri).not.toBeNull();

    // issue credential from this template
    let values = JSON.stringify({
      firstName: "Jane",
      lastName: "Doe",
      age: 42,
    });

    let issueResponse = await credentialService.issueFromTemplate(
      IssueFromTemplateRequest.fromPartial({
        templateId: template.data!.id,
        valuesJson: values,
      })
    );
    let jsonDocument = JSON.parse(issueResponse.documentJson);

    expect(jsonDocument).not.toBeNull();
    expect(jsonDocument.hasOwnProperty("id")).toBeTruthy();
    expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTruthy();
  });
});
