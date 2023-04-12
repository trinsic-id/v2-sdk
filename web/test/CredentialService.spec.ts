import { IssueRequest, TrinsicOptions, TrinsicService } from "../browser";
// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";

let options: TrinsicOptions = getTestServerOptions();
let trinsic: TrinsicService;

describe("CredentialService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(options);
        var response = await trinsic.wallet().createWallet({ ecosystemId: myEcosystemIdOrName()});
        trinsic.options.authToken = response.authToken;
    });

    it("Issue Credential From Template", async () => {
        // Get account info, so we can compare issued DID etc.
        let info = await trinsic.wallet().getMyInfo({});

        // Set issuer DID of credential
        let vaccineCert = Object.assign({}, vaccineCertUnsigned, {
            issuer: info.wallet!.publicDid,
        });
        let credentialJSON = JSON.stringify(vaccineCert);

        // issueCredential() {
        const issueResponse = await trinsic
            .credential()
            .issue(IssueRequest.fromPartial({ documentJson: credentialJSON }));
        // }

        expect(issueResponse?.signedDocumentJson).not.toBeNull();
        const credential = JSON.parse(issueResponse.signedDocumentJson!);

        expect(credential).not.toBeNull();
        expect(credential.proof).not.toBeNull();
        expect(credential.credentialSubject).toEqual(
            vaccineCert.credentialSubject
        );
        expect(credential.issuer).toBe(info.wallet!.publicDid);
    });
});
