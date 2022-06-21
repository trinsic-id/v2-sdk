import { v4 as uuid } from "uuid";
import {
    AccountService,
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CreateProofRequest,
    CredentialService,
    FieldType,
    InsertItemRequest,
    IssueFromTemplateRequest,
    IssueFromTemplateResponse,
    ServiceOptions,
    TemplateField,
    TemplateService, TrinsicService,
    VerifyProofRequest,
    WalletService,
} from "../src";

export function createRequiredTestObjects() {
  // defineTemplate() {
  const credentialTemplateName = `My First Credential Template-${uuid()}`;
  const nameField = TemplateField.fromPartial({
    description: "The name of the person",
    type: FieldType.STRING,
    optional: false,
  });

  const numberOfBags = TemplateField.fromPartial({
    type: FieldType.NUMBER,
    description: "The number of bags the person is taking on the trip",
    optional: false,
  });

  const dateOfBirth = TemplateField.fromPartial({
    type: FieldType.DATETIME,
    description: "The date of birth of the person",
    optional: false,
  });

  const isVaccinated = TemplateField.fromPartial({
    type: FieldType.BOOL,
    description: "Whether or not the person has been vaccinated",
    optional: false,
  });
  // }
  return {
    credentialTemplateName,
    nameField,
    numberOfBags,
    dateOfBirth,
    isVaccinated,
  };
}

export async function verifyCredential(
  options: ServiceOptions,
  templateCertFrame: string
): Promise<boolean> {
    const service = new TrinsicService(options);

  const allison = await service.account().signIn();
  const airline = await service.account().signIn();

  const credential = await issueCredentialFromTemplate(options);

  service.wallet().options.authToken = allison;
  const insertItemResponse = await service.wallet().insertItem(
    InsertItemRequest.fromPartial({ itemJson: credential.documentJson })
  );

  service.credential().options.authToken = allison;
  const proofRequest = CreateProofRequest.fromPartial({
    itemId: insertItemResponse.itemId,
    revealDocumentJson: templateCertFrame,
  });
  const proof = await service.credential().createProof(proofRequest);

  service.credential().options.authToken = airline;
  const verifyProofRequest = VerifyProofRequest.fromPartial({
    proofDocumentJson: proof.proofDocumentJson,
  });
  const verifyProofResponse = await service.credential().verifyProof(
    verifyProofRequest
  );

  return verifyProofResponse.isValid;
}

export async function createCredentialTemplateTest(
  options: ServiceOptions
): Promise<CreateCredentialTemplateResponse> {
  const {
    credentialTemplateName,
    nameField,
    numberOfBags,
    dateOfBirth,
    isVaccinated,
  } = createRequiredTestObjects();
  // createTemplate() {
  const trinsicService = new TrinsicService(options);

  let request = CreateCredentialTemplateRequest.fromPartial({
    name: credentialTemplateName,
    fields: {
      name: nameField,
      numberOfBags: numberOfBags,
      dateOfBirth: dateOfBirth,
      vaccinated: isVaccinated,
    },
  });

  let response = await trinsicService.template().createCredentialTemplate(request);
  // }

  return response;
}

export async function issueCredentialFromTemplate(
  options: ServiceOptions
): Promise<IssueFromTemplateResponse> {
  let templateResponse = await createCredentialTemplateTest(options);

  let service = new TrinsicService(options);
  // issueFromTemplate() {
  let request = IssueFromTemplateRequest.fromPartial({
    templateId: templateResponse?.data?.id ?? "",
    valuesJson: JSON.stringify({
      name: "Alice",
      numberOfBags: 2,
      dateOfBirth: new Date("1/1/2000").toISOString(),
      vaccinated: true,
    }),
  });

  let response = await service.credential().issueFromTemplate(request);
  // }

  return response;
}
