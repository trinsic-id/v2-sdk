import test from "ava";
import {
    AccountService,
    CreateCredentialTemplateRequest,
    CreateProofRequest,
    CredentialService,
    FieldType,
    InsertItemRequest,
    IssueFromTemplateRequest,
    IssueRequest,
    SearchRequest,
    SignInRequest,
    TemplateField,
    TemplateService,
    VerifyProofRequest,
    WalletService
} from "../src";
import {getTestServerOptions, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON} from "./TestData";


require("dotenv").config();

const options = getTestServerOptions();
const allison = getTestServerOptions();
const clinic = getTestServerOptions();
const airline = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    allison.setAuthToken(await service.signIn(new SignInRequest()));
    clinic.setAuthToken(await service.signIn(new SignInRequest()));
    airline.setAuthToken(await service.signIn(new SignInRequest()));
});

test("get account info", async (t) => {
    let service = new AccountService(clinic);
    let info = await service.info();

    t.not(info, null);
});

test("create new account", async (t) => {
    let service = new AccountService(clinic);
    let response = await service.signIn(new SignInRequest());

    t.not(response, null);
    t.not(response, "");
    t.pass();
});

test("Demo: create wallet, set profile, search records, issue credential", async (t) => {
    let credentialService = new CredentialService(clinic);
    let walletService = new WalletService(allison);

    let issueResponse = await credentialService.issueCredential(new IssueRequest()
        .setDocumentJson(JSON.stringify(getVaccineCertUnsignedJSON())));

    // insertItemWallet() {
    let insertItemResponse = await walletService.insertItem(new InsertItemRequest()
        .setItemJson(issueResponse.getSignedDocumentJson()));
    // }

    t.not(insertItemResponse, null);
    t.not(insertItemResponse.getItemId(), "");
    console.log("Item id=", insertItemResponse.getItemId())

    // Delay half a second for race condition fixes?
    await new Promise(res => setTimeout(res, 1000));

    // searchWalletBasic() {
    let items = await walletService.search();
    // }
    // searchWalletSQL() {
    let items2 = await walletService.search(new SearchRequest().setQuery("SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'"));
    // }

    credentialService.options = allison;
    // createProof() {
    let proof = await credentialService.createProof(new CreateProofRequest()
        .setItemId(insertItemResponse.getItemId())
        .setRevealDocumentJson(JSON.stringify(getVaccineCertFrameJSON())));
    // }

    credentialService.options = airline;
    // verifyProof() {
    let verifyResponse = await credentialService.verifyProof(new VerifyProofRequest()
        .setProofDocumentJson(proof.getProofDocumentJson()));
    // }

    t.true(verifyResponse.getIsValid());
    t.pass();
});

test("Demo: template management and credential issuance from template", async (t) => {
    let credentialService = new CredentialService(options);
    let templateService = new TemplateService(options);

    // create example template
    let templateRequest = new CreateCredentialTemplateRequest()
        .setName("My Example Credential")
        .setAllowAdditionalFields(false);
    templateRequest.getFieldsMap().set("firstName", new TemplateField().setDescription("Given name"));
    templateRequest.getFieldsMap().set("lastName", new TemplateField());
    templateRequest.getFieldsMap().set("age", new TemplateField().setType(FieldType.NUMBER).setOptional(true));

    let template = await templateService.createCredentialTemplate(templateRequest);

    t.not(template, null);
    t.not(template.getData(), null);
    t.not(template.getData()!.getId(), null);
    t.not(template.getData()!.getSchemaUri(), null);

    // issue credential from this template
    let values = JSON.stringify({
        firstName: "Jane",
        lastName: "Doe",
        age: 42
    });

    let issueResponse = await credentialService.issueFromTemplate(new IssueFromTemplateRequest()
        .setTemplateId(template.getData()!.getId()).setValuesJson(values));
    let jsonDocument = JSON.parse(issueResponse.getDocumentJson());

    t.not(jsonDocument, null);
    t.true(jsonDocument.hasOwnProperty("id"));
    t.true(jsonDocument.hasOwnProperty("credentialSubject"));

    t.pass();
});
