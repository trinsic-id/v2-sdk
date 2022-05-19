import {
  AccountService,
  CreateProofRequest,
  CredentialService,
  InsertItemRequest,
  IssueRequest,
  VerifyProofRequest,
  WalletService,
  ProviderService,
  CreateEcosystemRequest,
  TemplateService,
  TemplateField,
  FieldType,
  CreateCredentialTemplateRequest,
  TemplateData,
  IssueFromTemplateRequest
} from "../src";

import { getTestServerOptions } from "./env";

const options = getTestServerOptions();

export async function vaccineDemo() {
  const providerService = new ProviderService(options);

  // createEcosystem() {
  const ecosystem = await providerService.createEcosystem(CreateEcosystemRequest.fromPartial({}));
  const ecosystemId = ecosystem.ecosystem.id;
  // }

  options.defaultEcosystem = providerService.options.defaultEcosystem = ecosystemId;

  const accountService = new AccountService(options);
  const templateService = new TemplateService(options);

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  const allison = await accountService.signIn();
  const clinic = await accountService.signIn();
  const airline = await accountService.signIn();
  // }

  accountService.options.authToken = clinic;
  const info = await accountService.info();

  // Create template
  templateService.options.authToken = clinic;
  const template = await doTemplate(templateService);

  // createService() {
  const walletService = new WalletService(options);
  const credentialService = new CredentialService(options);
  // }

  // issueCredential() {
  // Prepare the credential values JSON document
  const credentialValues = JSON.stringify({
    "firstName": "Allison",
    "lastName": "Allisonne",
    "batchNumber": "123454321",
    "countryOfVaccination": "US"
  });

  // Sign a credential as the clinic and send it to Allison
  credentialService.options.authToken = clinic;
  const issueResponse = await credentialService.issueFromTemplate(
    IssueFromTemplateRequest.fromPartial({ templateId: template.id, valuesJson: credentialValues })
  );
  // }

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  walletService.options.authToken = allison;
  const insertResponse = await walletService.insertItem(
    InsertItemRequest.fromPartial({
      itemJson: issueResponse.documentJson,
    })
  );
  // }

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  credentialService.options.authToken = allison;
  const proofResponse = await credentialService.createProof(
    CreateProofRequest.fromPartial({
      itemId: insertResponse.itemId
    })
  );
  // }

  // verifyCredential() {
  // The airline verifies the credential
  credentialService.options.authToken = airline;
  const verifyResponse = await credentialService.verifyProof(
    VerifyProofRequest.fromPartial({
      proofDocumentJson: proofResponse.proofDocumentJson,
    })
  );
  // }

  return verifyResponse;
}

async function doTemplate(templateService: TemplateService): Promise<TemplateData> {
  // createTemplate() {
  //Define all fields
  const firstNameField = TemplateField.fromPartial({
    description: "First name of vaccine recipient",
    type: FieldType.STRING
  });

  const lastNameField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Last name of vaccine recipient"
  });

  const batchNumberField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Batch number of vaccine"
  });

  const countryOfVaccinationField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Country in which the subject was vaccinated"
  });

  //Create request
  let request = CreateCredentialTemplateRequest.fromPartial({
    name: "VaccinationCertificate",
    fields: {
      firstName: firstNameField,
      lastName: lastNameField,
      batchNumber: batchNumberField,
      countryOfVaccination: countryOfVaccinationField,
    },
  });

  //Create template
  const response = await templateService.createCredentialTemplate(request);
  const template = response.data;
  // }

  return template;
}