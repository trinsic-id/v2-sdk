import {
    AccountService,
    CredentialService,
    TemplateService,
    WalletService,
    CreateCredentialTemplateRequest,
    TemplateField,
    FieldType,
    IssueFromTemplateRequest,
    SignInRequest,
    InfoRequest
} from "../lib";
import {options} from "./env";

let accountService;
let profile;
let walletService;
let credentialService;
let templateService;

describe("wallet service tests", () => {
    beforeAll(async () => {
        accountService = new AccountService(options);
        const authToken = await accountService.signIn(new SignInRequest());
        options.setAuthToken(authToken);

        walletService = new WalletService(options);
        credentialService = new CredentialService(options);
        templateService = new TemplateService(options);

        console.log("before all ran");
    });

    it("can retrieve account info", async () => {
        const info = await accountService.info(new InfoRequest());
        expect(info).not.toBeNull();
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        expect(profile).not.toBeNull();

        let unsignedDocument = {
            "@context": "https://w3id.org/security/v3-unstable",
            id: "https://issuer.oidp.uscis.gov/credentials/83627465",
        };

        let issueResponse = await credentialService.issueCredential(unsignedDocument);
        expect(issueResponse).not.toBeNull();

        let itemId = await walletService.insertItem(issueResponse);
        expect(itemId).not.toBeNull();
        expect(itemId).not.toBe("");

        let items = await walletService.search();
        expect(items).not.toBeNull();
        expect(items.getItemsList().length).toBeGreaterThan(0);

        let proof = await credentialService.createProof(itemId, {"@context": "http://w3id.org/security/v3-unstable"});
        expect(proof).not.toBeNull();

        let valid = await credentialService.verifyProof(proof);
        expect(valid).toBe(true);
    }, 20000);

    it("Demo: template management and credential issuance from template", async () => {
        expect(profile).not.toBeNull();

        // create example template
        let templateRequest = new CreateCredentialTemplateRequest().setName("My Example Credential").setAllowAdditionalFields(false);
        templateRequest.getFieldsMap().set("firstName", new TemplateField().setDescription("Given name"));
        templateRequest.getFieldsMap().set("lastName", new TemplateField());
        templateRequest.getFieldsMap().set("age", new TemplateField().setType(FieldType.NUMBER).setOptional(true));

        let template = await templateService.createCredentialTemplate(templateRequest);

        expect(template).not.toBeNull();
        expect(template.getData()).not.toBeNull();
        expect(template.getData().getId()).not.toBeNull();
        expect(template.getData().getSchemaUri()).not.toBeNull();

        // issue credential from this template
        let values = JSON.stringify({
            firstName: "Jane", lastName: "Doe", age: 42
        });

        let credentialJson = await credentialService.issueFromTemplate(new IssueFromTemplateRequest().setTemplateId(template.getData().getId()).setValuesJson(values));

        expect(credentialJson).not.toBeNull();

        let jsonDocument = JSON.parse(credentialJson);
        expect(jsonDocument.hasOwnProperty("id")).toBeTrue();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTrue();
        
    }, 20000);
});
