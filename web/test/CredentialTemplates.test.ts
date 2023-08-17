import {
    CheckStatusRequest,
    CreateCredentialTemplateResponse,
    TrinsicService,
    CreateCredentialTemplateRequest,
    UpdateCredentialTemplateRequest,
    UpdateStatusRequest,
    FieldType,
} from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
import { getTestServerOptions, setTestTimeout } from "./env";
import {
    createCredentialTemplateTest,
    createRequiredTestObjects,
    issueCredentialFromTemplate,
    verifyCredential,
} from "./CredentialTemplateShared";

import { v4 as uuid } from "uuid";

const { nameField, numberOfBags, dateOfBirth, isVaccinated } =
    createRequiredTestObjects();

let trinsic: TrinsicService;
let createdTemplate: CreateCredentialTemplateResponse;

let ecosystemAuthToken: string;
let ecosystemId: string;
describe("Demo: Credential Templates", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(getTestServerOptions());
        const createEcosystemResponse = await trinsic
            .provider()
            .createEcosystem({});
        ecosystemAuthToken = trinsic.options.authToken!;
        ecosystemId = createEcosystemResponse.ecosystem?.id!;
    });

    it("should run create and delete credential templates", async () => {
        createdTemplate = await createCredentialTemplateTest(trinsic);

        const fieldsMap = createdTemplate.data?.fields!;
        expect(fieldsMap["name"]).toEqual(nameField);
        expect(fieldsMap["numberOfBags"]).toEqual(numberOfBags);
        expect(fieldsMap["dateOfBirth"]).toEqual(dateOfBirth);
        expect(fieldsMap["vaccinated"]).toEqual(isVaccinated);

        let deletedTemplate = await trinsic
            .template()
            .delete({ id: createdTemplate.data?.id ?? "" });
        console.log(deletedTemplate);
    });

    it("Issue Credential From Template", async () => {
        let credential = JSON.parse(
            (await issueCredentialFromTemplate(trinsic)).documentJson!,
        );

        expect(credential.issuer).not.toBeNull();
        expect(credential.id).not.toBeNull();
        expect(credential.credentialSubject?.name).toBe("Alice");
        expect(credential.credentialSubject?.numberOfBags).toBe(2);
        expect(
            new Date(credential?.credentialSubject?.dateOfBirth).toISOString(),
        ).toBe(new Date("1/1/2000").toISOString());
        expect(credential.credentialSubject?.vaccinated).toBe(true);
    });

    it("Verify Credential Issued from Template", async () => {
        // Prevent "CreateWallet with an auth token, EcosystemId must be the same as the ecosystem of the auth token"
        trinsic.options.authToken = ecosystemAuthToken;
        let response = await verifyCredential(
            trinsic,
            ecosystemId,
            JSON.stringify(templateCertFrame),
        );
        expect(response).toBeTruthy();
    });

    it("Create and update template sample", async () => {
        // createTemplate() {
        const createRequest: CreateCredentialTemplateRequest = {
            name: `An Example Credential-${uuid()}`,
            title: "Example Credential",
            description: "A credential for Trinsic's SDK samples",
            allowAdditionalFields: false,
            fields: {
                firstName: {
                    title: "First Name",
                    description: "Given name of holder",
                },
                lastName: {
                    title: "Last Name",
                    description: "Surname of holder",
                    optional: true,
                },
                age: {
                    title: "Age",
                    description: "Age in years of holder",
                    type: FieldType.NUMBER,
                },
            },
            fieldOrdering: {
                firstName: { order: 0, section: "Name" },
                lastName: { order: 1, section: "Name" },
                age: { order: 2, section: "Miscellaneous" },
            },
            appleWalletOptions: {
                primaryField: "firstName",
                secondaryFields: ["lastName"],
                auxiliaryFields: ["age"],
            },
        };

        const createResponse = await trinsic.template().create(createRequest);
        // }

        const template = createResponse.data;
        expect(template).not.toBeNull();

        const templateId = template!.id;

        // updateTemplate() {
        const updateRequest: UpdateCredentialTemplateRequest = {
            id: templateId,
            title: "New Title",
            description: "New Description",
            fields: {
                firstName: { title: "New title for firstName" },
                lastName: { description: "New description for lastName" },
            },
            fieldOrdering: {
                age: { order: 0, section: "Misc" },
                firstName: { order: 1, section: "Full Name" },
                lastName: { order: 2, section: "Full Name" },
            },
            appleWalletOptions: {
                primaryField: "age",
                secondaryFields: ["firstName", "lastName"],
            },
        };

        const updateResponse = await trinsic.template().update(updateRequest);
        // }

        expect(updateResponse.updatedTemplate?.title).toBe(updateRequest.title);
    });

    it("Update Revocation Status for Template", async () => {
        try {
            // checkCredentialStatus() {
            let checkStatusResponse = await trinsic
                .credential()
                .checkStatus(CheckStatusRequest.fromPartial({}));
            // }
        } catch {
            // This is okay as an example
        }

        try {
            // updateCredentialStatus() {
            let updateStatusResponse = await trinsic
                .credential()
                .updateStatus(UpdateStatusRequest.fromPartial({}));
            // }
        } catch {
            // This is okay as an example
        }
    });
});
