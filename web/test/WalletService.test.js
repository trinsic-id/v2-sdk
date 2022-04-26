import {
  AccountService,
  CreateCredentialTemplateRequest,
  CreateEcosystemRequest,
  CreateProofRequest,
  CredentialService,
  FieldType,
  InsertItemRequest,
  IssueFromTemplateRequest,
  ProviderService,
  TemplateField,
  TemplateService,
  WalletService,
} from "../lib";
import { options } from "./env";

/**
 * @type {ProviderService} Provider Service
 */
let providerService;
/**
 * @type {AccountService} Account Service
 */
let accountService;
/**
 * @type {WalletService} Wallet Service
 */
let walletService;
/**
 * @type {CredentialService} Credential Service
 */
let credentialService;
/**
 * @type {TemplateService} Template Service
 */
let templateService;
describe("wallet service tests", () => {
  beforeAll(async () => {
    accountService = new AccountService(options);
    options.authToken = await accountService.signIn();

    walletService = new WalletService(options);
    credentialService = new CredentialService(options);
    templateService = new TemplateService(options);
  });

  it("can retrieve account info", async () => {
    const info = await accountService.info();
    expect(info).not.toBeNull();
  });

  it("can create new ecosystem", async () => {
    const [ecosystem, authToken] = await providerService.createEcosystem(
      CreateEcosystemRequest.fromPartial({})
    );

    expect(ecosystem).not.toBeNull();
    expect(authToken).not.toBeEmpty();
  });

  it("Demo: create wallet, set profile, search records, issue credential", async () => {
    let unsignedDocument = {
      "@context": "https://w3id.org/security/v3-unstable",
      id: "https://issuer.oidp.uscis.gov/credentials/83627465",
    };

    let issueResponse = await credentialService.issueCredential({
      documentJson: JSON.stringify(unsignedDocument),
    });
    expect(issueResponse).not.toBeNull();

    let insertResponse = await walletService.insertItem(
      InsertItemRequest.fromPartial({
        itemJson: issueResponse.signedDocumentJson,
      })
    );
    expect(insertResponse).not.toBeNull();
    expect(insertResponse.itemId).not.toBe("");

    let items = await walletService.search();
    expect(items).not.toBeNull();
    expect(items.items.length).toBeGreaterThan(0);

    let proof = await credentialService.createProof(
      CreateProofRequest.fromPartial({
        itemId: insertResponse.itemId,
        revealDocumentJson: JSON.stringify({
          "@context": "https://w3id.org/security/v3-unstable",
        }),
      })
    );
    expect(proof).not.toBeNull();

    let verifyResponse = await credentialService.verifyProof({
      proofDocumentJson: proof.proofDocumentJson,
    });
    expect(verifyResponse).not.toBeNull();
    expect(verifyResponse.isValid).toBe(true);
  }, 20000);

  it("Demo: template management and credential issuance from template", async () => {
    // create example template
    let templateRequest = CreateCredentialTemplateRequest.fromPartial({
      name: "My Example Credential",
      allowAdditionalFields: false,
      fields: {
        firstName: TemplateField.fromPartial({ description: "Given name" }),
        lastName: TemplateField.fromPartial({}),
        age: TemplateField.fromPartial({
          type: FieldType.NUMBER,
          optional: true,
        }),
      },
    });

    let template = await templateService.createCredentialTemplate(
      templateRequest
    );

    expect(template).not.toBeNull();
    expect(template.data).not.toBeNull();
    expect(template.data.id).not.toBeNull();
    expect(template.data.schemaUri).not.toBeNull();

    // issue credential from this template
    let values = JSON.stringify({
      firstName: "Jane",
      lastName: "Doe",
      age: 42,
    });

    let issueResponse = await credentialService.issueFromTemplate(
      IssueFromTemplateRequest.fromPartial({
        templateId: template.data.id,
        valuesJson: values,
      })
    );
    let jsonDocument = JSON.parse(issueResponse.documentJson);

    expect(issueResponse).not.toBeNull();
    expect(jsonDocument.hasOwnProperty("id")).toBeTrue();
    expect(jsonDocument.hasOwnProperty("credentialSubject")).toBeTrue();
  }, 20000);
});
