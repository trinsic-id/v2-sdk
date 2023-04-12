import { v4 as uuid } from "uuid";
import {
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CreateProofRequest,
    FieldType,
    GetCredentialTemplateRequest,
    InsertItemRequest,
    IssueFromTemplateRequest,
    IssueFromTemplateResponse,
    SearchCredentialTemplatesRequest,
    TemplateField,
    TrinsicService,
    VerifyProofRequest,
} from "../src";
import {myEcosystemIdOrName} from "./env";

export function createRequiredTestObjects() {
    // defineTemplate() {
    const credentialTemplateName = `My First Credential Template-${uuid()}`;
    const nameField = TemplateField.fromPartial({
        title: "name",
        description: "The name of the person",
        type: FieldType.STRING,
        optional: false,
    });

    const numberOfBags = TemplateField.fromPartial({
        title: "numberOfBags",
        type: FieldType.NUMBER,
        description: "The number of bags the person is taking on the trip",
        optional: false,
    });

    const dateOfBirth = TemplateField.fromPartial({
        title: "dateOfBirth",
        type: FieldType.DATETIME,
        description: "The date of birth of the person",
        optional: false,
    });

    const isVaccinated = TemplateField.fromPartial({
        title: "vaccinated",
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
    trinsic: TrinsicService,
    templateCertFrame: string
): Promise<boolean> {
    const allison = await trinsic.wallet().createWallet({ecosystemId: myEcosystemIdOrName()});
    const airline = await trinsic.wallet().createWallet({ecosystemId: myEcosystemIdOrName()});

    trinsic.options.authToken = airline.authToken;

    const credential = await issueCredentialFromTemplate(trinsic);

    trinsic.options.authToken = allison.authToken;
    const insertItemResponse = await trinsic
        .wallet()
        .insertItem(
            InsertItemRequest.fromPartial({ itemJson: credential.documentJson })
        );

    trinsic.options.authToken = allison.authToken;
    const proofRequest = CreateProofRequest.fromPartial({
        itemId: insertItemResponse.itemId,
        revealDocumentJson: templateCertFrame,
    });
    const proof = await trinsic.credential().createProof(proofRequest);

    trinsic.options.authToken = airline.authToken;
    const verifyProofRequest = VerifyProofRequest.fromPartial({
        proofDocumentJson: proof.proofDocumentJson,
    });
    const verifyProofResponse = await trinsic
        .credential()
        .verifyProof(verifyProofRequest);

    return verifyProofResponse.isValid!;
}

export async function createCredentialTemplateTest(
    trinsic: TrinsicService
): Promise<CreateCredentialTemplateResponse> {
    const {
        credentialTemplateName,
        nameField,
        numberOfBags,
        dateOfBirth,
        isVaccinated,
    } = createRequiredTestObjects();
    let request = CreateCredentialTemplateRequest.fromPartial({
        name: credentialTemplateName,
        fields: {
            name: nameField,
            numberOfBags: numberOfBags,
            dateOfBirth: dateOfBirth,
            vaccinated: isVaccinated,
        },
    });

    let response = await trinsic.template().create(request);

    return response;
}

export async function issueCredentialFromTemplate(
    trinsic: TrinsicService
): Promise<IssueFromTemplateResponse> {
    let templateResponse = await createCredentialTemplateTest(trinsic);

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

    let response = await trinsic.credential().issueFromTemplate(request);
    // }

    return response;
}

export async function searchTemplate(trinsic: TrinsicService) {
    // searchCredentialTemplate() {
    let searchTemplateResponse = await trinsic.template().search(
        SearchCredentialTemplatesRequest.fromPartial({
            query: "Select * from c",
        })
    );
    // }
    return searchTemplateResponse;
}

export async function getTemplate(trinsic: TrinsicService) {
    // getCredentialTemplate() {
    let getTemplateResponse = await trinsic.template().get(GetCredentialTemplateRequest.fromPartial({
        id: "id"
    }));
    // }
    return getTemplateResponse;
}
