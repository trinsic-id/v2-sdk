import test from "ava";
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
  getTestServerOptions,
  getVaccineCertFrameJSON,
  getVaccineCertUnsignedJSON,
} from "./TestData";


require("dotenv").config();

const options = getTestServerOptions();
const allison = getTestServerOptions();
const clinic = getTestServerOptions();
const airline = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    allison.authToken = (await service.signIn());
    clinic.authToken = (await service.signIn());
    airline.authToken = (await service.signIn());
});

test("get account info", async (t) => {
    let service = new AccountService(clinic);
    let info = await service.info();

    t.not(info, null);
});

test("create new account", async (t) => {
    let service = new AccountService(clinic);
    let response = await service.signIn();

    t.not(response, null);
    t.not(response, "");
    t.pass();
});

test("Demo: create wallet, set profile, search records, issue credential", async (t) => {
    let credentialService = new CredentialService(clinic);
    let walletService = new WalletService(allison);

    let issueResponse = await credentialService.issueCredential({documentJson: getVaccineCertUnsignedJSON()})

    // insertItemWallet() {
    let insertItemResponse = await walletService.insertItem(InsertItemRequest.fromPartial({itemJson: issueResponse.signedDocumentJson}));
    // }

    t.not(insertItemResponse, null);
    t.not(insertItemResponse.itemId, "");
    console.log("Item id=", insertItemResponse.itemId)

    // Delay half a second for race condition fixes?
    await new Promise(res => setTimeout(res, 1000));

    // searchWalletBasic() {
    let items = await walletService.search();
    // }
    // searchWalletSQL() {
    let items2 = await walletService.search(SearchRequest.fromPartial({query: "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"}));
    // }

    credentialService.options = allison;
    // createProof() {
    let proof = await credentialService.createProof(CreateProofRequest.fromPartial({itemId: insertItemResponse.itemId,
    revealDocumentJson: getVaccineCertFrameJSON()}))
    // }

    credentialService.options = airline;
    // verifyProof() {
    let verifyResponse = await credentialService.verifyProof({proofDocumentJson: proof.proofDocumentJson})
    // }

    t.true(verifyResponse.isValid);
    t.pass();
});

test("Demo: template management and credential issuance from template", async (t) => {
    let credentialService = new CredentialService(options);
    let templateService = new TemplateService(options);

    // create example template
    let templateRequest = CreateCredentialTemplateRequest.fromPartial({name: "My Example Credential",
    allowAdditionalFields: false,
    fields: {
        "firstName": TemplateField.fromPartial({description: "Given name"}),
        "lastName": TemplateField.fromPartial({}),
        "age": TemplateField.fromPartial({type: FieldType.NUMBER, optional: true})
    }})

    let template = await templateService.createCredentialTemplate(templateRequest);

    t.not(template, null);
    t.not(template.data, null);
    t.not(template.data!.id, null);
    t.not(template.data!.schemaUri, null);

    // issue credential from this template
    let values = JSON.stringify({
        firstName: "Jane",
        lastName: "Doe",
        age: 42
    });

    let issueResponse = await credentialService.issueFromTemplate(IssueFromTemplateRequest.fromPartial({templateId: template.data!.id, valuesJson: values}))
    let jsonDocument = JSON.parse(issueResponse.documentJson);

    t.not(jsonDocument, null);
    t.true(jsonDocument.hasOwnProperty("id"));
    t.true(jsonDocument.hasOwnProperty("credentialSubject"));

    t.pass();
});
