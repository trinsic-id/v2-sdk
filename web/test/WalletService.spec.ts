import {
    CreateCredentialTemplateRequest,
    CreateEcosystemRequest,
    CreateProofRequest,
    FieldType,
    InsertItemRequest,
    IssueFromTemplateRequest,
    TemplateField,
    TrinsicService,
} from "../src";
import {getTestServerOptions, setTestTimeout} from "./env";
import {v4 as uuid} from "uuid";

let options = getTestServerOptions();

let service: TrinsicService;

describe("wallet service tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        service = new TrinsicService(options);
        options.authToken = await service.account().signIn();
    });

    it("can retrieve account info", async () => {
        const info = await service.account().info();
        expect(info).not.toBeNull();
    });

    it("can create new ecosystem", async () => {
        const response = await service.provider().createEcosystem(
            CreateEcosystemRequest.fromPartial({})
        );

        expect(response.ecosystem).not.toBeNull();
        expect(response.profile).not.toBeNull();
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        let unsignedDocument = {
            "@context": "https://w3id.org/security/v3-unstable",
            id: "https://issuer.oidp.uscis.gov/credentials/83627465",
        };

        let issueResponse = await service.credential().issueCredential({
            documentJson: JSON.stringify(unsignedDocument),
        });
        expect(issueResponse).not.toBeNull();

        let insertResponse = await service.wallet().insertItem(
            InsertItemRequest.fromPartial({
                itemJson: issueResponse.signedDocumentJson,
            })
        );
        expect(insertResponse).not.toBeNull();
        expect(insertResponse.itemId).not.toBe("");

        let searchResponse = await service.wallet().search();
        expect(searchResponse).not.toBeNull();
        expect(searchResponse.items.length).toBeGreaterThan(0);

        let proof = await service.credential().createProof(
            CreateProofRequest.fromPartial({
                itemId: insertResponse.itemId,
                revealDocumentJson: JSON.stringify({
                    "@context": "https://w3id.org/security/v3-unstable",
                }),
            })
        );
        expect(proof).not.toBeNull();

        let verifyResponse = await service.credential().verifyProof({
            proofDocumentJson: proof.proofDocumentJson,
        });
        expect(verifyResponse).not.toBeNull();
        expect(verifyResponse.isValid).toBeTruthy();
    });

    it("Demo: template management and credential issuance from template", async () => {
        // create example template
        let templateRequest = CreateCredentialTemplateRequest.fromPartial({
            name: `My Example Credential-${uuid()}`,
            allowAdditionalFields: false,
            fields: {
                firstName: TemplateField.fromPartial({description: "Given name"}),
                lastName: TemplateField.fromPartial({}),
                age: TemplateField.fromPartial({
                    type: FieldType.NUMBER,
                    optional: true,
                }),
            },
        });

        let template = await service.template().createCredentialTemplate(
            templateRequest
        );

        expect(template).not.toBeNull();
        expect(template!.data).not.toBeNull();
        expect(template!.data!.id).not.toBeNull();
        expect(template!.data!.schemaUri).not.toBeNull();

        // issue credential from this template
        let values = JSON.stringify({
            firstName: "Jane",
            lastName: "Doe",
            age: 42,
        });

        let issueResponse = await service.credential().issueFromTemplate(
            IssueFromTemplateRequest.fromPartial({
                templateId: template!.data!.id,
                valuesJson: values,
            })
        );
        let jsonDocument = JSON.parse(issueResponse.documentJson);

        expect(issueResponse).not.toBeNull();
        expect(jsonDocument.hasOwnProperty("id")).toBeTruthy();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTruthy();
    });
});
