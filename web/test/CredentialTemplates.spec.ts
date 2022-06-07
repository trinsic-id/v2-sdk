import { AccountService, ServiceOptions } from "../src";
// @ts-ignore
import templateCertFrame from "./data/credential-template-frame.json";
import { getTestServerOptions, setTestTimeout } from "./env";
import {
  createCredentialTemplateTest,
  createRequiredTestObjects,
  issueCredentialFromTemplate,
  verifyCredential,
} from "./CredentialTemplateShared";

const {
  credentialTemplateName,
  nameField,
  numberOfBags,
  dateOfBirth,
  isVaccinated,
} = createRequiredTestObjects();

let options: ServiceOptions = getTestServerOptions();

describe("Demo: Credential Templates", () => {
  setTestTimeout();
  beforeAll(async () => {
    let service = new AccountService(options);
    options.authToken = await service.signIn();
  });

  it("should run create credential templates", async () => {
    let response = await createCredentialTemplateTest(options);

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
      (await issueCredentialFromTemplate(options)).documentJson
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
      options,
      JSON.stringify(templateCertFrame)
    );
    expect(response).toBeTruthy();
  });
});
