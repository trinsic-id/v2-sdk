import {
    AcceptCredentialRequest,
    CreateCredentialOfferRequest,
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CreateEcosystemRequest,
    CreateProofRequest,
    FieldType,
    InsertItemRequest,
    RejectCredentialRequest,
    SearchRequest,
    SignatureType,
    TemplateField,
    TrinsicService,
} from "../src";

import { getTestServerOptions, setTestTimeout } from "./env";
import { v4 as uuid } from "uuid";

const options = getTestServerOptions();
const root = getTestServerOptions();
const allison = getTestServerOptions();
const clinic = getTestServerOptions();
const airline = getTestServerOptions();
let trinsic = new TrinsicService(options);

let ecosystemId: string;
let template: CreateCredentialTemplateResponse;

describe("WalletService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        let createResponse = await trinsic.provider().createEcosystem(
            CreateEcosystemRequest.fromPartial({
                description: "Test ecosystem from Node for Wallet Service",
            }),
        );

        ecosystemId = createResponse.ecosystem!.id!;
        root.authToken = trinsic.provider().options.authToken;

        var response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });
        allison.authToken = response.authToken;

        response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });
        clinic.authToken = response.authToken;

        response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });
        airline.authToken = response.authToken;

        // Create template used by multiple tests
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

        template = await trinsic.template().create(templateRequest);
    });

    it("get account info", async () => {
        trinsic.options.authToken = allison.authToken;

        let info = await trinsic.wallet().getMyInfo();

        expect(info).not.toBeNull();
    });

    it("create new account", async () => {
        let response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });

        expect(response).not.toBeNull();
        expect(response.authToken).not.toBe("");
    });

    it("Demo: create wallet, set profile, search records, issue credential", async () => {
        trinsic.options = clinic;
        let values = JSON.stringify({
            firstName: "Jane",
            lastName: "Doe",
            age: 42,
        });

        let issueResponse = await trinsic.credential().issueFromTemplate({
            templateId: template!.data!.id,
            valuesJson: values,
        });

        expect(issueResponse).not.toBeNull();

        trinsic.options = allison;
        // insertItemWallet() {
        let insertItemResponse = await trinsic.wallet().insertItem(
            InsertItemRequest.fromPartial({
                itemJson: issueResponse.documentJson,
            }),
        );
        // }

        expect(insertItemResponse).not.toBeNull();
        expect(insertItemResponse.itemId).not.toBe("");
        // console.log("Item id=", insertItemResponse.itemId);

        const itemId = insertItemResponse.itemId;

        // Delay a second for race condition fixes?
        await new Promise((res) => setTimeout(res, 1000));

        // getItem() {
        let getItemResponse = await trinsic.wallet().getItem({
            itemId: itemId,
        });
        //}

        expect(getItemResponse.itemJson?.length ?? 0).toBeGreaterThan(0);

        // searchWalletBasic() {
        let items = await trinsic.wallet().searchWallet();
        // }
        // searchWalletSQL() {
        let items2 = await trinsic.wallet().searchWallet(
            SearchRequest.fromPartial({
                query: "SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'",
            }),
        );
        // }

        trinsic.options = allison;
        // createProof() {
        let proof = await trinsic.credential().createProof(
            CreateProofRequest.fromPartial({
                documentJson: issueResponse.documentJson,
                itemId: insertItemResponse.itemId,
            }),
        );
        let selectiveProof = await trinsic.credential().createProof(
            CreateProofRequest.fromPartial({
                documentJson: issueResponse.documentJson,
                itemId: insertItemResponse.itemId,
                revealTemplate: {
                    templateAttributes: ["firstName", "lastName"],
                },
            }),
        );
        // }

        trinsic.options = airline;
        // verifyProof() {
        let verifyResponse = await trinsic.credential().verifyProof({
            proofDocumentJson: proof.proofDocumentJson,
        });

        let selectiveVerifyResponse = await trinsic.credential().verifyProof({
            proofDocumentJson: selectiveProof.proofDocumentJson,
        });
        // }

        expect(
            verifyResponse.validationResults!["SignatureVerification"].isValid,
        ).toBeTruthy();

        expect(
            selectiveVerifyResponse.validationResults!["SignatureVerification"]
                .isValid,
        ).toBeTruthy();

        // Switch to Allison, who holds the credential
        trinsic.options = allison;
        // deleteItem() {
        await trinsic.wallet().deleteItem({
            itemId: itemId,
        });
        //}
    });

    it("Demo: create, accept and reject credential offer", async () => {
        trinsic.options = clinic;
        let values = JSON.stringify({
            firstName: "Jane",
            lastName: "Doe",
            age: 42,
        });

        const templateId = template!.data!.id;

        let issueResponse = await trinsic.credential().issueFromTemplate({
            templateId: templateId,
            valuesJson: values,
        });

        expect(issueResponse).not.toBeNull();

        //createCredentialOffer() {
        let createCredentialOfferResponse = await trinsic.credential().createCredentialOffer(
            CreateCredentialOfferRequest.fromPartial({
                templateId: templateId,
                valuesJson: issueResponse.documentJson,
                holderBinding: true,
                includeGovernance: true,
                generateShareUrl: true,
                signatureType: SignatureType.EXPERIMENTAL,
            })
        );
        //}

        //acceptCredential() {
        let acceptCredentialResponse = await trinsic.credential().acceptCredential(
            AcceptCredentialRequest.fromPartial({
                documentJson: createCredentialOfferResponse.documentJson,
            })
        );
        //}

        //rejectCredential() {
        let rejectCredentialResponse = await trinsic.credential().rejectCredential(
            RejectCredentialRequest.fromPartial({
                documentJson: createCredentialOfferResponse.documentJson,
            })
        );
        //}
    });

    it("Demo: template management and credential issuance from template", async () => {
        let response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });
        trinsic.options.authToken = response.authToken;

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

        let issueResponse = await trinsic.credential().issueFromTemplate({
            templateId: template!.data!.id,
            valuesJson: values,
        });
        let jsonDocument = JSON.parse(issueResponse.documentJson!);

        expect(jsonDocument).not.toBeNull();
        expect(jsonDocument.hasOwnProperty("id")).toBeTruthy();
        expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTruthy();
    });

    it("Delete wallet functions", async () => {
        let response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: ecosystemId });
        trinsic.options.authToken = response.authToken;
        let accountInfo = await trinsic.wallet().getMyInfo();

        let walletId = accountInfo.wallet!.walletId;

        // deleteWallet() {
        await trinsic.wallet().deleteWallet({
            walletId: walletId,
        });
        // }
    });
});
