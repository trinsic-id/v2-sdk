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

let trinsic: TrinsicService;

describe("wallet service tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(options);
        options.authToken = await trinsic.account().signIn();
    });

    it("can retrieve account info", async () => {
        const info = await trinsic.account().getInfo();
        expect(info).not.toBeNull();
    });

    it("can create new ecosystem", async () => {
        const response = await trinsic.provider().createEcosystem(
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

        let issueResponse = await trinsic.credential().issue({
            documentJson: JSON.stringify(unsignedDocument),
        });
        expect(issueResponse).not.toBeNull();

        let insertResponse = await trinsic.wallet().insertItem(
            InsertItemRequest.fromPartial({
                itemJson: issueResponse.signedDocumentJson,
            })
        );
        expect(insertResponse).not.toBeNull();
        expect(insertResponse.itemId).not.toBe("");

        let searchResponse = await trinsic.wallet().search();
        expect(searchResponse).not.toBeNull();
        expect(searchResponse.items.length).toBeGreaterThan(0);

        let proof = await trinsic.credential().createProof(
            CreateProofRequest.fromPartial({
                itemId: insertResponse.itemId,
                revealDocumentJson: JSON.stringify({
                    "@context": "https://w3id.org/security/v3-unstable",
                }),
            })
        );
        expect(proof).not.toBeNull();

        let verifyResponse = await trinsic.credential().verifyProof({
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

        let template = await trinsic.template().createCredentialTemplate(
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

        let issueResponse = await trinsic.credential().issueFromTemplate(
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
