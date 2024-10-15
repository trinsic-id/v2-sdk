import {Router, Request, Response} from 'express';
import {CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT} from './SECRET';
import {SessionApi, Configuration, VerificationType, IDVSessionState} from "@trinsic/connect";

const router = Router();

interface SessionData {
    sessionId: string;
    clientToken: string;
    verifyUrl: string;
}

function getAccessToken() {
    // TODO - This should load the access token from a secrets manager
    return CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT;
}

const basePath = "https://dev-connect-api.trinsic.id";
const baseConnect = "https://dev-connect.trinsic.id";
const connectApi = new SessionApi(new Configuration({accessToken: getAccessToken(), basePath: basePath}));

router.post('/create-session', async (req: Request, res: Response) => {
    try {
        // Start a new connect session, return the handover URL to the client
        const result = await connectApi.createSession({
            createSessionRequest: {
                verifications: [
                    {
                        type: VerificationType.GovernmentId
                    }
                ]
            }
        });
        console.log(result);
        res.json({
            sessionId: result.session.id,
            clientToken: result.session.clientToken,
            verifyUrl: `${baseConnect}/connect/verify?clientToken=${encodeURIComponent(result.session.clientToken!)}`
        });
    } catch (error) {
        console.error(error);
        res.status(500).send(error);
    }
});

router.post('/poll-connect', async (req: Request, res: Response) => {
    // Get the status of the connect session
    const sessionData = req.body as SessionData;
    const result = await connectApi.getSession({sessionId: sessionData.sessionId});
    console.log(result);
    res.json(result.session);
});

router.get('/mobile-complete', async (req: Request, res: Response) => {
    // Check the "sessionId" query parameter
    const sessionId = req.query.sessionId as string;
    if (!sessionId) {
        return res.status(400).send("Missing sessionId");
    }
    // Check status - timeout in 30 seconds
    let timeout = 30;
    let success = false;
    let message = "N/A";
    while (timeout > 0) {
        const result = await connectApi.getSession({sessionId: sessionId});
        if (result.session?.state === IDVSessionState.IdvSuccess) {
            // If complete, redirect to the mobile complete page
            success = true;
            message = "success";
            break;
        }
        await new Promise(resolve => setTimeout(resolve, 1000));
        timeout--;
    }
    // If complete, redirect to the mobile complete page
    res.redirect(`mewmba://mobilecomplete?success=${success}&msg=${message}&sessionId=${encodeURIComponent(sessionId)}`);
})

export default router;
