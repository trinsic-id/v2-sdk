import {TrinsicService, CreateCredentialTemplateRequest, UpdateCredentialTemplateRequest, FieldType} from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";
import {
    createCredentialTemplateTest,
    createRequiredTestObjects,
    issueCredentialFromTemplate,
    verifyCredential,
} from "./CredentialTemplateShared";

const { nameField, numberOfBags, dateOfBirth, isVaccinated } =
    createRequiredTestObjects();

let trinsic: TrinsicService;

describe("Demo: Credential Templates", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(getTestServerOptions());
        let provider = trinsic.provider();
        await provider.createEcosystem({});
        console.log("Auth Token: ", trinsic.options.authToken, " Provider token: ", provider.options.authToken!);
        trinsic.setAuthToken(provider.options.authToken!);
        //
    });

    it("should run create credential templates", async () => {
        let response = await createCredentialTemplateTest(trinsic);

        const fieldsMap = response.data?.fields!;
        expect(fieldsMap["name"]).toEqual(nameField);
        expect(fieldsMap["numberOfBags"]).toEqual(numberOfBags);
        expect(fieldsMap["dateOfBirth"]).toEqual(dateOfBirth);
        expect(fieldsMap["vaccinated"]).toEqual(isVaccinated);
    });

    it("Issue Credential From Template", async () => {
        let response = JSON.parse(
            (await issueCredentialFromTemplate(trinsic)).documentJson!
        );

        expect(response?.issuer).not.toBeNull();
        expect(response?.id).not.toBeNull();
        expect(response?.credentialSubject?.name).toBe("Alice");
        expect(response?.credentialSubject?.numberOfBags).toBe(2);
        expect(
            new Date(response?.credentialSubject?.dateOfBirth).toISOString()
        ).toBe(new Date("1/1/2000").toISOString());
        expect(response?.credentialSubject?.vaccinated).toBe(true);
    });

    it("Verify Credential Issued from Template", async () => {
        let response = await verifyCredential(
            new TrinsicService(getTestServerOptions()),
            JSON.stringify(templateCertFrame)
        );
        expect(response).toBeTruthy();
    });

    it("Create and update template sample", async () => {
        // createTemplate() {
        console.log("Auth Token: ", trinsic.options.authToken);
        const createRequest: CreateCredentialTemplateRequest = {
            name: "An Example Credential",
            title: "Example Credential",
            description: "A credential for Trinsic's SDK samples",
            allowAdditionalFields: false,
            fields: {
                firstName: { title: "First Name", description: "Given name of holder" },
                lastName: { title: "Last Name", description: "Surname of holder", optional: true },
                age: { title: "Age", description: "Age in years of holder", type: FieldType.NUMBER }
            },
            fieldOrdering: {
                firstName: { order: 0, section: "Name" },
                lastName: { order: 1, section: "Name" },
                age: { order: 2, section: "Miscellaneous" }
            },
            appleWalletOptions: {
                primaryField: "firstName",
                secondaryFields: ["lastName"],
                auxiliaryFields: ["age"]
            }
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
                lastName: { description: "New description for lastName" }
            },
            fieldOrdering: {
                age: { order: 0, section: "Misc" },
                firstName: { order: 1, section: "Full Name" },
                lastName: { order: 2, section: "Full Name" }
            },
            appleWalletOptions: {
                primaryField: "age",
                secondaryFields: ["firstName", "lastName"]
            }
        };

        const updateResponse = await trinsic.template().update(updateRequest);
        // }

        expect(updateResponse.updatedTemplate?.title).toBe(updateRequest.title);
    });
});
