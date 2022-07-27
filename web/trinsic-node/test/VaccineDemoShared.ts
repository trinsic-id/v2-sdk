import { v4 as uuid } from "uuid";
import {
  CreateCredentialTemplateRequest,
  CreateEcosystemRequest,
  CreateProofRequest,
  FieldType,
  InsertItemRequest,
  IssueFromTemplateRequest,
  TemplateData,
  TemplateField,
  TrinsicService,
  VerifyProofRequest,
} from "../index";

import { getTestServerOptions } from "../../test/env";

const options = getTestServerOptions();

export async function vaccineDemo() {
  // createService() {
  const trinsic = new TrinsicService(options);
  // }

  // createEcosystem() {
  const ecosystem = await trinsic
    .provider()
    .createEcosystem(CreateEcosystemRequest.fromPartial({}));
  const ecosystemId = ecosystem.ecosystem!.id;
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  const allison = await trinsic.account().loginAnonymous(ecosystemId);
  const clinic = await trinsic.account().loginAnonymous(ecosystemId);
  const airline = await trinsic.account().loginAnonymous(ecosystemId);
  // }

  trinsic.options.authToken = clinic;
  const info = await trinsic.account().getInfo();

  // Create template
  trinsic.options.authToken = clinic;
  const template = await doTemplate(trinsic);

  // issueCredential() {
  // Prepare the credential values JSON document
  const credentialValues = JSON.stringify({
    firstName: "Allison",
    lastName: "Allisonne",
    batchNumber: "123454321",
    countryOfVaccination: "US",
  });

  // Sign a credential as the clinic and send it to Allison
  trinsic.options.authToken = clinic;
  const issueResponse = await trinsic.credential().issueFromTemplate(
    IssueFromTemplateRequest.fromPartial({
      templateId: template.id,
      valuesJson: credentialValues,
    })
  );
  // }

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  trinsic.options.authToken = allison;
  const insertResponse = await trinsic.wallet().insertItem(
    InsertItemRequest.fromPartial({
      itemJson: issueResponse.documentJson,
    })
  );
  // }

  // shareCredential() {
  // Allison shares the credential with the venue.
  trinsic.options.authToken = allison;
  const proofResponse = await trinsic.credential().createProof(
    CreateProofRequest.fromPartial({
      itemId: insertResponse.itemId,
    })
  );
  // }

  // verifyCredential() {
  // The airline verifies the credential
  trinsic.options.authToken = airline;
  const verifyResponse = await trinsic.credential().verifyProof(
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
    name: `VaccinationCertificate-${uuid()}`,
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
    .create(request);
  const template = response.data;
  // }

  return template!;
}
