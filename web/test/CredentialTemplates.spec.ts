import {CheckStatusRequest, CreateCredentialTemplateResponse, TrinsicService, UpdateStatusRequest} from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
import { getTestServerOptions, setTestTimeout } from "./env";
import {
    createCredentialTemplateTest,
    createRequiredTestObjects,
    issueCredentialFromTemplate,
    verifyCredential,
} from "./CredentialTemplateShared";

const { nameField, numberOfBags, dateOfBirth, isVaccinated } =
    createRequiredTestObjects();

let trinsic: TrinsicService;
let createdTemplate: CreateCredentialTemplateResponse;

describe("Demo: Credential Templates", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(getTestServerOptions());
        trinsic.options.authToken = await trinsic.account().loginAnonymous();
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
            trinsic,
            JSON.stringify(templateCertFrame)
        );
        expect(response).toBeTruthy();
    });

    it("Update Revocation Status for Template", async () => {
        try {
            // checkCredentialStatus() {
            let checkStatusResponse = await trinsic.credential().checkStatus(CheckStatusRequest.fromPartial({}));
            // }
        } catch { // This is okay as an example
        }

        try {
            // updateCredentialStatus() {
            let updateStatusResponse = await trinsic.credential().updateStatus(UpdateStatusRequest.fromPartial({}));
            // }
        } catch { // This is okay as an example
        }
    })
});
