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
  IssueFromTemplateRequest,
  TrinsicService,
} from "../src";

import { getTestServerOptions } from "./env";

const options = getTestServerOptions();

export async function vaccineDemo() {
  // createService() {
  const trinsicService = new TrinsicService(options);
  // }

  // createEcosystem() {
  const ecosystem = await trinsicService
    .provider()
    .createEcosystem(CreateEcosystemRequest.fromPartial({}));
  const ecosystemId = ecosystem.ecosystem!.id;
  // }

  options.defaultEcosystem =
    trinsicService.provider().options.defaultEcosystem = ecosystemId;

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  const allison = await trinsicService.account().signIn();
  const clinic = await trinsicService.account().signIn();
  const airline = await trinsicService.account().signIn();
  // }

  trinsicService.options.authToken = clinic;
  const info = await trinsicService.account().info();

  // Create template
  trinsicService.options.authToken = clinic;
  const template = await doTemplate(trinsicService);

  // issueCredential() {
  // Prepare the credential values JSON document
  const credentialValues = JSON.stringify({
    firstName: "Allison",
    lastName: "Allisonne",
    batchNumber: "123454321",
    countryOfVaccination: "US",
  });

  // Sign a credential as the clinic and send it to Allison
  trinsicService.options.authToken = clinic;
  const issueResponse = await trinsicService.credential().issueFromTemplate(
    IssueFromTemplateRequest.fromPartial({
      templateId: template.id,
      valuesJson: credentialValues,
    })
  );
  // }

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  trinsicService.options.authToken = allison;
  const insertResponse = await trinsicService.wallet().insertItem(
    InsertItemRequest.fromPartial({
      itemJson: issueResponse.documentJson,
    })
  );
  // }

  // shareCredential() {
  // Allison shares the credential with the venue.
  trinsicService.options.authToken = allison;
  const proofResponse = await trinsicService.credential().createProof(
    CreateProofRequest.fromPartial({
      itemId: insertResponse.itemId,
    })
  );
  // }

  // verifyCredential() {
  // The airline verifies the credential
  trinsicService.options.authToken = airline;
  const verifyResponse = await trinsicService.credential().verifyProof(
    VerifyProofRequest.fromPartial({
      proofDocumentJson: proofResponse.proofDocumentJson,
    })
  );
  // }

  return verifyResponse;
}

async function doTemplate(
  trinsicService: TrinsicService
): Promise<TemplateData> {
  // createTemplate() {
  //Define all fields
  const firstNameField = TemplateField.fromPartial({
    description: "First name of vaccine recipient",
    type: FieldType.STRING,
  });

  const lastNameField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Last name of vaccine recipient",
  });

  const batchNumberField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Batch number of vaccine",
  });

  const countryOfVaccinationField = TemplateField.fromPartial({
    type: FieldType.STRING,
    description: "Country in which the subject was vaccinated",
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
  const response = await trinsicService
    .template()
    .createCredentialTemplate(request);
  const template = response.data;
  // }

  return template!;
}
