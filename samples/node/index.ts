import {CreateProofRequest, InsertItemRequest, TrinsicService, VerifyProofResponse} from '@trinsic/trinsic';
import {resolve} from "path";
import {readFileSync} from "fs";

function vaccineCertFramePath(): string {
    return resolve(
        __dirname,
        "..",
        "..",
        "devops",
        "testdata",
        "vaccination-certificate-frame.jsonld"
    );
}

function vaccineCertUnsignedPath(): string {
    return resolve(
        __dirname,
        "..",
        "..",
        "devops",
        "testdata",
        "vaccination-certificate-unsigned.jsonld"
    );
}

function templateCertFramePath(): string {
    return resolve(
        __dirname,
        "..",
        "..",
        "devops",
        "testdata",
        "credential-template-frame.jsonld"
    );
}

function getVaccineCertFrameJSON(): string {
    return readFileSync(vaccineCertFramePath(), "utf8");
}

function getVaccineCertUnsignedJSON(): string {
    return readFileSync(vaccineCertUnsignedPath(), "utf8");
}

function getTemplateCertFrameJSON(): string {
    return readFileSync(templateCertFramePath(), "utf8");
}

async function vaccineDemo(): Promise<VerifyProofResponse> {
    const trinsic = new TrinsicService();

    // Create 3 different profiles for each participant in the scenario
    const allison = await trinsic.wallet().createWallet({ecosystemId: "default"});
    const clinic = await trinsic.wallet().createWallet({ecosystemId: "default"});
    const airline = await trinsic.wallet().createWallet({ecosystemId: "default"});

    // @ts-ignore
    trinsic.options.authToken = clinic.authToken;
    const info = await trinsic.wallet().getMyInfo({});
    console.log(info)

    // Sign a credential as the clinic and send it to Allison
    const credentialJson = getVaccineCertUnsignedJSON()
    const credential = await trinsic.credential().issue({documentJson: JSON.stringify(credentialJson)});

    // Alice stores the credential in her cloud wallet.
    // @ts-ignore
    trinsic.options.authToken = allison.authToken;
    const itemId = await trinsic.wallet().insertItem(InsertItemRequest.fromPartial({itemJson: credential.signedDocumentJson}));

    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    // @ts-ignore
    trinsic.options.authToken = allison.authToken;
    const proofRequestJson = getVaccineCertFrameJSON();
    const proof = await trinsic.credential().createProof(CreateProofRequest.fromPartial({
        itemId: itemId.itemId,
        revealDocumentJson: JSON.stringify(proofRequestJson)
    }));

    // The trinsic verifies the credential
    // @ts-ignore
    trinsic.options.authToken = (airline);
    return await trinsic.credential().verifyProof({proofDocumentJson: proof.proofDocumentJson})
}

vaccineDemo().then(x => {
    console.log("Is-valid=", x.isValid)
}).catch(reason => {
    console.error(reason)
})