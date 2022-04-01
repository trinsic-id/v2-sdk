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
    InfoRequest,
    IssueRequest,
    InsertItemRequest,
    CreateProofRequest,
    VerifyProofRequest,
    ProviderService,
    CreateEcosystemRequest,
} from "../lib";
import { options } from "./env";

/**
 * @type {ProviderService} Provider Service
 */
 let providerService;
/**
 * @type {AccountService} Account Service
 */
let accountService;
/**
 * @type {WalletService} Wallet Service
 */
let walletService;
/**
 * @type {CredentialService} Credential Service
 */
let credentialService;
/**
 * @type {TemplateService} Template Service
 */
let templateService;

describe("wallet service tests", () => {
    beforeAll(async () => {
        accountService = new AccountService(options);
        const authToken = await accountService.signIn(new SignInRequest());
        options.setAuthToken(authToken);

        walletService = new WalletService(options);
        credentialService = new CredentialService(options);
        templateService = new TemplateService(options);
    });

    it("can retrieve account info", async () => {
        const info = await accountService.info(new InfoRequest());
        expect(info).not.toBeNull();
    });

    if("can create new ecosystem", async () => {
        const [ecosystem, authToken] = await providerService.createEcosystem(new CreateEcosystemRequest());

        expect(ecosystem).not.toBeNull();
        expect(authToken).not.toBeEmpty();
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        let unsignedDocument = {
            "@context": "https://w3id.org/security/v3-unstable",
            id: "https://issuer.oidp.uscis.gov/credentials/83627465",
        };

        let issueResponse = await credentialService.issueCredential(
            new IssueRequest().setDocumentJson(JSON.stringify(unsignedDocument))
        );
        expect(issueResponse).not.toBeNull();

        let insertResponse = await walletService.insertItem(new InsertItemRequest()
            .setItemJson(issueResponse.getSignedDocumentJson()));
        expect(insertResponse).not.toBeNull();
        expect(insertResponse.getItemId()).not.toBe("");

        let items = await walletService.search();
        expect(items).not.toBeNull();
        expect(items.getItemsList().length).toBeGreaterThan(0);

        let proof = await credentialService.createProof(new CreateProofRequest()
            .setItemId(insertResponse.getItemId())
            .setRevealDocumentJson(JSON.stringify({ "@context": "http://w3id.org/security/v3-unstable" })));
        expect(proof).not.toBeNull();

        let verifyResponse = await credentialService.verifyProof(new VerifyProofRequest()
            .setProofDocumentJson(proof.getProofDocumentJson()));
        expect(verifyResponse).not.toBeNull();
        expect(verifyResponse.getIsValid()).toBe(true);
    }, 20000);

    it("Demo: template management and credential issuance from template", async () => {
        // create example template
        let templateRequest = new CreateCredentialTemplateRequest()
            .setName("My Example Credential")
            .setAllowAdditionalFields(false);
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
            firstName: "Jane",
            lastName: "Doe",
            age: 42,
        });

        let issueResponse = await credentialService.issueFromTemplate(new IssueFromTemplateRequest()
            .setTemplateId(template.getData().getId())
            .setValuesJson(values));

        expect(issueResponse).not.toBeNull();

        let jsonDocument = JSON.parse(issueResponse.getDocumentJson());
        expect(jsonDocument.hasOwnProperty("id")).toBeTrue();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTrue();
    }, 20000);
});
