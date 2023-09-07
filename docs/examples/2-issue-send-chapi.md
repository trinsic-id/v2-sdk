---
hide:
    - navigation
---

# Issue and exchange using CHAPI

This example uses a backend API to issue a verifiable credential and deliver the credential to the user's wallet using the [Credential Handler API](https://chapi.io) (abbr. CHAPI - see [W3C specification](https://w3c-ccg.github.io/credential-handler-api/)). The CHAPI protocol allows digital wallets to receive Verifiable Credentials from an independent third-party issuer - or present Verifiable Credentials to an independent third-party verifier - in a way that establishes trust and preserves privacy. See our [issuance guide](/guide/issuance/#send-credential-using-chapi) for more details about using CHAPI and its benefits.

In this guide, we will go through the process of setting up an example API endpoint, and a simple web page that consumes this enpoint and invokes CHAPI in the browser.

### Install dependencies

We will use Express to create a simple API and also install Trinsic's SDK.

```
npm install express @trinsic/trinsic

```

### Import and configure services

```
import express from 'express';
import path from 'path';
import { SignatureType, TrinsicService } from "@trinsic/trinsic";

const app = express();

const trinsic = new TrinsicService({
    authToken: "<AUTH_TOKEN>",
});
```

??? note "How to obtain an Auth Token"

    You can obtain auth token from the [Dashboard <small>:material-open-in-new:</small>](https://dashboard.trinsic.id){targer=_blank} by clicking on the View Auth Token in the Home page.

    <img src="/_static/images/1-api-token.png" width="70%"></img>

### Create Issue Credential API

Let's configure Express to create an endpoint for issuance served at `/api/issue`. Next, we'll use Trinsic's SDK to issue a credential from a template
and return the issued document as a respoinse to the API call. We will use the same template from the [previous example](/examples/1-issue-direct-send/#install-and-initialize-the-sdk) and we'll only send few attributes.

```js

app.get('/api/issue', async (req, res) => {
    const values = {
        firstName: "John",
        lastName: "Dough",
        dateOfBirth: "1990-07-03T10:12:00Z",
    };

    const issueResponse = await trinsic.credential().issueFromTemplate({
        templateId: "https://schema.trinsic.cloud/example/id-document",
        valuesJson: JSON.stringify({
            firstName: "John",
            lastName: "Dough",
            dateOfBirth: "1990-07-03T10:12:00Z",
        }),
        signatureType: SignatureType.STANDARD,
        includeGovernance: false,
    });

  res.json(JSON.parse(issueResponse.documentJson));
});
```
### Serve static files

Let's also create a catch-all endpoint that will serve static content. We'll use this to serve a simple HTML page to showcase the use of CHAPI in a browser.

```js
// Serve static files from the 'public' folder
app.use(express.static(path.join(process.cwd())));

// Catch-all to return index.html for any other request
app.get('*', (req, res) => {
  res.sendFile(path.join(process.cwd(), 'index.html'));
});
```
