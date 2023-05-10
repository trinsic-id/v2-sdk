import {
    TrinsicOptions,
    TrinsicService,
    CheckStatusRequest,
    UpdateStatusRequest,
} from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
import {
    getTestServerOptions,
    myEcosystemIdOrName,
    setTestTimeout,
} from "./env";
import { verifyCredential } from "./CredentialTemplateShared";

let options: TrinsicOptions = getTestServerOptions();
let trinsic: TrinsicService;

describe("CredentialService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(options);
        const response = await trinsic
            .wallet()
            .createWallet({ ecosystemId: myEcosystemIdOrName() });
        trinsic.options.authToken = response.authToken;
    });

    it("Issue Credential From Template", async () => {
        // Get account info, so we can compare issued DID etc.
        let info = await trinsic.wallet().getMyInfo();

        // Set issuer DID of credential
        let vaccineCert = Object.assign({}, vaccineCertUnsigned, {
            issuer: info.wallet!.publicDid,
        });
        let credentialJSON = JSON.stringify(vaccineCert);

        // issueCredentialSample() {
        const issueResponse = await trinsic
            .credential()
            .issue({ documentJson: credentialJSON });
        // }

        expect(issueResponse?.signedDocumentJson).not.toBeNull();
        const credential = JSON.parse(issueResponse?.signedDocumentJson!);

        expect(credential).not.toBeNull();
        expect(credential.proof).not.toBeNull();
        expect(credential.credentialSubject).toEqual(
            vaccineCert.credentialSubject
        );
        expect(credential.issuer).toBe(info.wallet!.publicDid);
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
