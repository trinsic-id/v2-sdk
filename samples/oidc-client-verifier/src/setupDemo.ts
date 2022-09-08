import {
    AccountDetails,
    AccountProfile, AccountService,
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CreateEcosystemRequest,
    CreateEcosystemResponse, EcosystemDisplay, EcosystemDisplayDetails,
    FieldType,
    InviteRequest,
    IssueFromTemplateResponse,
    LoginRequest,
    ParticipantType,
    ServiceOptions,
    TemplateField,
    TrinsicService, UpdateEcosystemRequest,
} from "@trinsic/trinsic";
import {
    ECOSYSTEM_DOMAIN,
    TRINSIC_ECOSYSTEM,
    TRINSIC_ENVIRONMENT,
} from "./ts/constants";
import * as readline from "readline";

const endpoints = {
    prod: "prod.trinsic.cloud",
    staging: "staging-internal.trinsic.cloud",
    dev: "dev-internal.trinsic.cloud",
};
const TRINSIC_ENDPOINT = endpoints[TRINSIC_ENVIRONMENT];

const service = new TrinsicService(
    ServiceOptions.fromPartial({ serverEndpoint: TRINSIC_ENDPOINT })
);

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

async function verifyDomain(): Promise<boolean> {
    let verifyRecord = await service.provider().retrieveDomainVerificationRecord({});
    console.log("verify record:", verifyRecord);
    let verifyResult = await service.provider().refreshDomainVerificationStatus({});
    console.log("verify status:", verifyResult);
    return verifyResult.domainVerified;
}

async function updateEcosystem() {
    await service.provider().updateEcosystem(UpdateEcosystemRequest.fromPartial({
        domain: "mewmba.dev",
        display: {
            dark: {
                color: "#601b46",
                logoUrl: "https://cdn.trinsic.id/assets/logo/512x512.png"
            },
            light: {
                color: "#6af06f",
                logoUrl: "https://cdn.trinsic.id/assets/logo/512x512-circle.png"
            }
        }
    }));

    let info = await service.provider().ecosystemInfo({});
    console.log("ecosystem info:", info);
    return;
}

async function createEcosystem(): Promise<CreateEcosystemResponse> {
    let createEcosystemResponse = await service.provider().createEcosystem(
        CreateEcosystemRequest.fromPartial({})
    );
    console.log("ecosystem id:", createEcosystemResponse.ecosystem!.id)
    let profileToken = AccountService.convertToToken(createEcosystemResponse.profile!);
    service.setAuthToken(profileToken);
    console.log("ecosystem token=", profileToken)
    await updateEcosystem();
    return createEcosystemResponse;
}

async function createCoolKidsClubTemplate(): Promise<CreateCredentialTemplateResponse> {
    return await service.template().create(
        CreateCredentialTemplateRequest.fromPartial({
            name: "Cool-Kids-Club",
            allowAdditionalFields: true,
            fields: {
                whoscool: TemplateField.fromPartial({
                    type: FieldType.STRING,
                    optional: true,
                    description: "Who is cool? You are!",
                }),
            },
        })
    );
}

async function issueCredentialToWallet(
    templateId: string
): Promise<IssueFromTemplateResponse> {
    let inviteResponse = await service.provider().invite(
        InviteRequest.fromPartial({
            participant: ParticipantType.participant_type_individual,
            details: AccountDetails.fromPartial({
                email: "polygonguru@gmail.com",
            }),
        })
    );
    let issueResponse = await service.credential().issueFromTemplate({
        templateId: templateId,
        valuesJson: JSON.stringify({
            whoscool: "You're cool!",
        }),
        frameworkId: "",
    });
    return issueResponse;
}

async function main(): Promise<void> {
    let ecosystemId = "";
    let ecosystemToken = "";
    if (ecosystemId === "") {
        let createEcoResp = await createEcosystem();
    } else {
        service.setAuthToken(ecosystemToken);
        await updateEcosystem();
    }
    let verifiedDomain = await verifyDomain();
    if (!verifiedDomain) {
        return;
    }
    let createTemp = await createCoolKidsClubTemplate();
    console.log(createTemp);
    let issueResp = await issueCredentialToWallet(createTemp.data!.id);
}

// TODO - Verify the domain (print to console the verification string)
// TODO - Once updated, refresh verification status
// TODO - Upload image URL and colors

main().then((value) => {
    console.log("Completed!");
});
