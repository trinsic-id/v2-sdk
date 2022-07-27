import { ServiceOptions, TrinsicService } from "../index";
// @ts-ignore
import templateCertFrame from "../../test/data/credential-template-frame.json";
import { getTestServerOptions, setTestTimeout } from "../../test/env";
import {
  createCredentialTemplateTest,
  createRequiredTestObjects,
  issueCredentialFromTemplate,
  verifyCredential,
} from "../../test/CredentialTemplateShared";

const { nameField, numberOfBags, dateOfBirth, isVaccinated } =
  createRequiredTestObjects();

let trinsic: TrinsicService;

describe("Demo: Credential Templates", () => {
  setTestTimeout();
  beforeAll(async () => {
    trinsic = new TrinsicService(getTestServerOptions());
    trinsic.options.authToken = await trinsic.account().loginAnonymous();
  });

  it("should run create credential templates", async () => {
    let response = await createCredentialTemplateTest(trinsic);

    // We use GUID's to prevent the "not an owner" error.
    expect(
      response.data?.name.startsWith("My First Credential Template")
    ).toBeTruthy();

    const fieldsMap = response.data?.fields!;
    expect(fieldsMap["name"]).toEqual(nameField);
    expect(fieldsMap["numberOfBags"]).toEqual(numberOfBags);
    expect(fieldsMap["dateOfBirth"]).toEqual(dateOfBirth);
    expect(fieldsMap["vaccinated"]).toEqual(isVaccinated);
  });

  it("Issue Credential From Template", async () => {
    let response = JSON.parse(
      (await issueCredentialFromTemplate(trinsic)).documentJson
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
});
