import {
  AccountService,
  CredentialService,
  IssueRequest,
  IssueResponse,
  ServiceOptions,
} from "../src";
// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
import { getTestServerOptions, setTestTimeout } from "./env";

let options: ServiceOptions = getTestServerOptions();

describe("CredentialService Unit Tests", () => {
  setTestTimeout();
  beforeAll(async () => {
    let service = new AccountService(options);
    options.authToken = await service.signIn();
  });

  it("Issue Credential From Template", async () => {
    let credentialService = new CredentialService(options);
    let accountService = new AccountService(options);

    //Get account info so we can compare issued DID etc.
    let info = await accountService.info();

    //Set issuer DID of credential
    let vaccineCert = Object.assign({}, vaccineCertUnsigned, {
      issuer: info.publicDid,
    });
    let credentialJSON = JSON.stringify(vaccineCert);

    // issueCredential() {
    const issueResponse = await credentialService.issueCredential(
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
