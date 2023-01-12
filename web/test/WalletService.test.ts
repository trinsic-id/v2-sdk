import {
    CreateCredentialTemplateRequest,
    CreateProofRequest,
    FieldType,
    InsertItemRequest,
    IssueFromTemplateRequest,
    SearchRequest,
    TemplateField,
    TrinsicService,
} from "../node";
import {
    getVaccineCertFrameJSON,
    getVaccineCertUnsignedJSON
} from "./TestData";

import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";
import { v4 as uuid } from "uuid";

const options = getTestServerOptions();
const allison = getTestServerOptions();
const clinic = getTestServerOptions();
const airline = getTestServerOptions();
let trinsic = new TrinsicService(options);

describe("WalletService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        allison.authToken = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
        clinic.authToken = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
        airline.authToken = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
    });

    it("get account info", async () => {
        let info = await trinsic.account().getInfo();

        expect(info).not.toBeNull();
    });

    it("create new account", async () => {
        let response = await trinsic.account().loginAnonymous(myEcosystemIdOrName());

        expect(response).not.toBeNull();
        expect(response).not.toBe("");
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        trinsic.options = clinic;
        let issueResponse = await trinsic.credential().issue({
            documentJson: getVaccineCertUnsignedJSON(),
        });

        trinsic.options = allison;
        // insertItemWallet() {
        let insertItemResponse = await trinsic.wallet().insertItem(
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
        let items = await trinsic.wallet().searchWallet();
        // }
        // searchWalletSQL() {
        let items2 = await trinsic.wallet().searchWallet(
            SearchRequest.fromPartial({
                query: "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'",
            })
        );
        // }

        trinsic.options = allison;
        // createProof() {
        let proof = await trinsic.credential().createProof(
            CreateProofRequest.fromPartial({
                itemId: insertItemResponse.itemId,
                revealDocumentJson: getVaccineCertFrameJSON(),
            })
        );
        let selectiveProof = await trinsic.credential().createProof(
            CreateProofRequest.fromPartial({
                itemId: insertItemResponse.itemId,
                revealTemplate: {
                    templateAttributes: ["firstName", "lastName"]
                }
            })
        );
        // }

        trinsic.options = airline;
        // verifyProof() {
        let verifyResponse = await trinsic.credential().verifyProof({
            proofDocumentJson: proof.proofDocumentJson,
        });
        // }

        expect(
            verifyResponse.validationResults!["SignatureVerification"].isValid
        ).toBeTruthy();
    });

    it("Demo: template management and credential issuance from template", async () => {
        let response = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
        // create example template
        let templateRequest = CreateCredentialTemplateRequest.fromPartial({
            name: `My Example Credential-${uuid()}`,
            allowAdditionalFields: false,
            fields: {
                firstName: TemplateField.fromPartial({
                    description: "Given name",
                }),
                lastName: TemplateField.fromPartial({}),
                age: TemplateField.fromPartial({
                    type: FieldType.NUMBER,
                    optional: true,
                }),
            },
        });

        let template = await trinsic.template().create(templateRequest);

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

        let issueResponse = await trinsic.credential().issueFromTemplate(
            IssueFromTemplateRequest.fromPartial({
                templateId: template.data!.id,
                valuesJson: values,
            })
        );
        let jsonDocument = JSON.parse(issueResponse.documentJson!);

        expect(jsonDocument).not.toBeNull();
        expect(jsonDocument.hasOwnProperty("id")).toBeTruthy();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTruthy();
    });
});
