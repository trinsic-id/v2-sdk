import {
    AccountService,
    CreateCredentialTemplateRequest,
    CreateEcosystemRequest,
    CreateProofRequest,
    CredentialService,
    FieldType,
    InsertItemRequest,
    ProviderService,
    ServiceOptions,
    TemplateField,
    TemplateService,
    WalletService,
} from "@trinsic/trinsic";

let providerService: ProviderService;
let accountService: AccountService;
let walletServiceTest: WalletService;
let credentialService: CredentialService;
let templateService: TemplateService;

const endpoint = "staging-internal.trinsic.cloud";
const port = 443;
const useTls = true
const options = ServiceOptions.fromPartial({serverPort: port, serverEndpoint: endpoint, serverUseTls: useTls});


describe("wallet service tests", () => {
    beforeAll(async () => {
        accountService = new AccountService(options);
        options.authToken = await accountService.signIn();

        walletServiceTest = new WalletService(options);
        credentialService = new CredentialService(options);
        templateService = new TemplateService(options);
        providerService = new ProviderService(options);
    });

    it("can retrieve account info", async () => {
        const info = await accountService.info();
        expect(info).not.toBeNull();
    });

    it("can create new ecosystem", async () => {
        const createEcosystemResponse = await providerService.createEcosystem(CreateEcosystemRequest.fromPartial({}));

        expect(createEcosystemResponse.ecosystem).not.toBeNull()
        expect(createEcosystemResponse.profile!!.authToken).not.toEqual("");
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        let unsignedDocument = {
            "@context": "https://w3id.org/security/v3-unstable",
            id: "https://issuer.oidp.uscis.gov/credentials/83627465",
        };

        let issueResponse = await credentialService.issueCredential({documentJson: JSON.stringify(unsignedDocument)});
        expect(issueResponse).not.toBeNull();

        let insertResponse = await walletServiceTest.insertItem(InsertItemRequest.fromPartial({itemJson: issueResponse.signedDocumentJson}));
        expect(insertResponse).not.toBeNull();
        expect(insertResponse.itemId).not.toEqual("");

        let items = await walletServiceTest.search();
        expect(items).not.toBeNull();
        expect(items.items.length).toBeGreaterThan(0);

        let createProofResponse = await credentialService.createProof(CreateProofRequest.fromPartial({
            itemId: insertResponse.itemId,
            revealDocumentJson: JSON.stringify({"@context": "http://w3id.org/security/v3-unstable"})
        }));
        expect(createProofResponse.proofDocumentJson).not.toBeNull();

        let verifyResponse = await credentialService.verifyProof({proofDocumentJson: createProofResponse.proofDocumentJson});
        expect(verifyResponse).not.toBeNull();
        expect(verifyResponse.isValid).toBeTruthy();
    });

    it("Demo: template management and credential issuance from template", async () => {
        // create example template
        let templateRequest = CreateCredentialTemplateRequest.fromPartial({name: "My Example Credential", allowAdditionalFields: false});
        templateRequest.fields["firstName"] = TemplateField.fromPartial({description: "Given name"});
        templateRequest.fields["lastName"] = TemplateField.fromPartial({});
        templateRequest.fields["age"] = TemplateField.fromPartial({type: FieldType.NUMBER, optional: true});

        let template = await templateService.createCredentialTemplate(templateRequest);

        expect(template).not.toBeNull();
        expect(template.data).not.toBeNull();
        expect(template.data!!.id).not.toBeNull();
        expect(template.data!!.schemaUri).not.toBeNull();

        // issue credential from this template
        let values = JSON.stringify({
            firstName: "Jane",
            lastName: "Doe",
            age: 42,
        });

        let issueResponse = await credentialService.issueFromTemplate({
            templateId: template.data!!.id,
            valuesJson: values
        });

        expect(issueResponse).not.toBeNull();

        let jsonDocument = JSON.parse(issueResponse.documentJson);
        expect(jsonDocument.hasOwnProperty("id")).toBeTruthy();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTruthy();
    });
});
