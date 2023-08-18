import express from "express";
import { FetchTransport } from "nice-grpc-web";
import bodyParser from "body-parser";
import { SessionResult } from "./shared";
import cors from "cors";

import {
    TrinsicService,
    TransportProvider,
    IDVSessionState,
    VerificationType,
} from "@trinsic/trinsic";

const app = express();
const port = 3000;

TransportProvider.overrideTransport = FetchTransport();
const trinsic = new TrinsicService({
    authToken: process.env.TRINSIC_AUTH_TOKEN,
    serverEndpoint: "dev-internal.trinsic.cloud",
});
const connectSvc = trinsic.connect();
let sessionId = "SESSION-ID-KEY";
const mockDatabase = new Map<string, any>();

// Generate HTML content with hyperlinks
// TODO - Get this from the `app.routes`
const htmlContent = `
        <html lang="us">
        <head>
            <title>Endpoints</title>
        </head>
        <body>
            <h1>Available Endpoints</h1>
            <ul>
                <li><a href="/connect_init">Connect Initialization</a></li>
                <li><a href="/connect_get_session">Get Session</a></li>
                <li><a href="/connect_cancel">Cancel Connection</a></li>
            </ul>
        </body>
        </html>
    `;

// Allow requests without the 'Origin' header
app.use(
    cors({
        origin: "*",
    }),
);

app.use(bodyParser.json());

app.get("/", (req, res) => {
    console.log("GET /");
    res.send(htmlContent);
});

app.post("/connect_init", async (req, res) => {
    console.log("POST /connect_init");
    // Read the input with our mapping key
    // const { sessionId } = req.body;
    // Create a connect session
    // Open connect session using government id
    const result = await connectSvc.createSession({
        verifications: [{ type: VerificationType.GOVERNMENT_ID }],
    });
    mockDatabase.set(sessionId, result.session.id);
    req.read();
    // Return the client_token to the user
    const sessionResult: SessionResult = {
        client_token: result.session.clientToken,
        verifiable_presentation: "",
        status: IDVSessionState[result.session.state],
    };
    res.status(200).json(sessionResult);
});

app.post("/connect_get_session", async (req, res) => {
    console.log("POST /connect_get_session");
    req.read();
    // const {sessionId} = req.body;
    // Use the `id` to get the session
    try {
        let idvSessionId = mockDatabase.get(sessionId);

        const result = await connectSvc.getSession({
            idvSessionId: idvSessionId,
        });

        const sessionResult: SessionResult = {
            client_token: "",
            verifiable_presentation: "",
            status: IDVSessionState[result.session.state],
        };

        if (result.session.state === IDVSessionState.IDV_SUCCESS) {
            // Return the session
            sessionResult.verifiable_presentation = result.session.resultVp;
        }
        console.log(sessionResult);
        res.status(200).json(sessionResult);
    } catch (error) {
        console.log(error);
        res.status(500).json({ error: "Session not found" });
    }
});

app.post("/connect_cancel", async (req, res) => {
    console.log("POST /connect_cancel");
    // TODO - Call the `CancelSession` endpoint to terminate
    const result = await connectSvc.cancelSession({
        idvSessionId: mockDatabase.get(sessionId),
    });
    res.status(200);
});

app.listen(port, () => {
    return console.log(`Express is listening at http://localhost:${port}`);
});
