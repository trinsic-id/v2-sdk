import { SignatureType, TrinsicService } from "@trinsic/trinsic";

const trinsic = new TrinsicService({
    authToken: "<AUTH_TOKEN>",
});

const values = {
    // following fields are defined in the schema,
    // but not all are required to be filled in
    firstName: "John",
    lastName: "Dough",
    dateOfBirth: "1990-07-03T10:12:00Z",
    street: "123 Main Street",
    city: "Springfield",
    state: "MD",
    zip: "12345",
    country: "US",
    authorityName: "DMV of Springfield",
    dateOfIssuance: "2019-07-03T10:12:00Z",
    dateOfExpiration: "2032-07-03T10:12:00Z",
    documentType: "DriversLicense",
    documentNumber: "123-456-7890",
    // extra information we'd like to include in the credential
    additionalData: "Individual was verified in person",
    registeredOnline: true
};

const issueResponse = await trinsic.credential().issueFromTemplate({
    // required
    templateId: "https://schema.trinsic.cloud/example/id-document",
    valuesJson: JSON.stringify(values),
    // optional
    signatureType: SignatureType.STANDARD, // or EXPERIMENTAL
    includeGovernance: true,
    expirationDate: "2032-07-03T10:12:00Z",
    saveCopy: false,
});

console.dir(issueResponse, { depth: null });

await trinsic.credential().send({
    documentJson: issueResponse.documentJson,
    email: "<EMAIL>",
});
