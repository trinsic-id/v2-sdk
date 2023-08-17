import { TrinsicOptions, TrinsicService } from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
import {
    getTestServerOptions,
    myEcosystemIdOrName,
    setTestTimeout,
} from "./env";

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

    it("is an empty test suite", () => {
        expect(true).toBe(true);
    });
});
