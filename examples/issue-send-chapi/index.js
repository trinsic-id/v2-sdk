import express from 'express';
import path from 'path';
import { SignatureType, TrinsicService } from "@trinsic/trinsic";

const app = express();

const trinsic = new TrinsicService({
    authToken: "<AUTH_TOKEN>",
});

app.get('/api/issue', async (req, res) => {
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
        includeGovernance: false,
        expirationDate: "2032-07-03T10:12:00Z",
        saveCopy: false,
    });

  res.json(JSON.parse(issueResponse.documentJson));
});

// Serve static files from the 'public' folder
app.use(express.static(process.cwd()));

// Catch-all to return index.html for any other request
app.get('*', (req, res) => {
  res.sendFile(path.join(process.cwd(), 'index.html'));
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log(`Access the demo page at http://localhost:${PORT}`);
});
