import {
    AccountService,
    CredentialService,
    IssueRequest,
    IssueResponse,
    ServiceOptions, TrinsicService,
} from "../src";
// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
import { getTestServerOptions, setTestTimeout } from "./env";

let options: ServiceOptions = getTestServerOptions();
let service: TrinsicService;

describe("CredentialService Unit Tests", () => {
  setTestTimeout();
  beforeAll(async () => {
    service = new TrinsicService(options);
    options.authToken = await service.account().signIn();
  });

  it("Issue Credential From Template", async () => {
    //Get account info so we can compare issued DID etc.
    let info = await service.account().info();

    //Set issuer DID of credential
    let vaccineCert = Object.assign({}, vaccineCertUnsigned, {
      issuer: info.publicDid,
    });
    let credentialJSON = JSON.stringify(vaccineCert);

    // issueCredential() {
    const issueResponse = await service.credential().issueCredential(
      IssueRequest.fromPartial({ documentJson: credentialJSON })
    );
    // }

    expect(issueResponse?.signedDocumentJson).not.toBeNull();
    const credential = JSON.parse(issueResponse?.signedDocumentJson);

    expect(credential).not.toBeNull();
    expect(credential.proof).not.toBeNull();
    expect(credential.credentialSubject).toEqual(vaccineCert.credentialSubject);
    expect(credential.issuer).toBe(info.publicDid);
  });
});
