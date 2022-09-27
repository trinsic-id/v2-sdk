import {
    AccountDetails,
    AccountService,
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CreateEcosystemRequest,
    CreateEcosystemResponse,
    FieldType,
    InviteRequest,
    IssueFromTemplateResponse,
    ParticipantType,
    ServiceOptions,
    TemplateField,
    TrinsicService,
    UpdateEcosystemRequest,
} from "@trinsic/trinsic";
import { ECOSYSTEM_DOMAIN, TRINSIC_ENVIRONMENT } from "./ts/constants";
import {getCloudEndpoint} from "./utilities";

/**
 * Replace these with your own values
 */
const ECOSYSTEM_TOKEN =
    "PUT YOUR TOKEN HERE";
const LOGO_URL_DARK = "https://cdn.trinsic.id/assets/logo/512x512.png";
const LOGO_URL_LIGHT = "https://cdn.trinsic.id/assets/logo/512x512-circle.png";
const COLOR_LIGHT = "#6af06f";
const COLOR_DARK = "#601b46";

const TRINSIC_ENDPOINT = getCloudEndpoint(TRINSIC_ENVIRONMENT);

const service = new TrinsicService(
    ServiceOptions.fromPartial({ serverEndpoint: TRINSIC_ENDPOINT })
);

async function verifyDomain(): Promise<boolean> {
    let verifyRecord = await service
        .provider()
        .retrieveDomainVerificationRecord({});
    console.log("verify record:", verifyRecord);
    let verifyResult = await service
        .provider()
        .refreshDomainVerificationStatus({});
    console.log("verify status:", verifyResult);
    return verifyResult.domainVerified;
}

async function updateEcosystem() {
    await service.provider().updateEcosystem(
        UpdateEcosystemRequest.fromPartial({
            domain: ECOSYSTEM_DOMAIN,
            display: {
                dark: {
                    color: COLOR_DARK,
                    logoUrl: LOGO_URL_DARK,
                },
                light: {
                    color: COLOR_LIGHT,
                    logoUrl: LOGO_URL_LIGHT,
                },
            },
        })
    );

    let info = await service.provider().ecosystemInfo({});
    console.log("ecosystem info:", info);
    return;
}

async function createEcosystem(): Promise<CreateEcosystemResponse> {
    let createEcosystemResponse = await service
        .provider()
        .createEcosystem(CreateEcosystemRequest.fromPartial({}));
    console.log("ecosystem id:", createEcosystemResponse.ecosystem!.id);
    let profileToken = AccountService.convertToToken(
        createEcosystemResponse.profile!
    );
    service.setAuthToken(profileToken);
    console.log("ecosystem token=", profileToken);
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
    service.setAuthToken(ECOSYSTEM_TOKEN);
    await updateEcosystem();
    let verifiedDomain = await verifyDomain();
    if (!verifiedDomain) {
        console.log(
            "Domain not verified, add the verify record as a TXT record to your domain then run again."
        );
        return;
    }
    let createTemp = await createCoolKidsClubTemplate();
    console.log(createTemp);
}

// Verify the domain (print to console the verification string)
// Once updated, refresh verification status
// Upload image URL and colors

main().then((value) => {
    console.log("Completed!");
});
