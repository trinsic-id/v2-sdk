import { Router, Request, Response } from 'express';
import { CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT } from './SECRET';
import trinsicConnect, {VerificationType} from "@trinsic/connect";

const router = Router();

router.get('/start-connect', async (req: Request, res: Response) => {
    // Start a new connect session, return the handover URL to the client
    const connectApi = new trinsicConnect.SessionApi();
    const result = await connectApi.createSession({createSessionRequest: {
        verifications:[
            {
                type: VerificationType.GovernmentId
            }
        ]
        },
        trinsicAuthorization: CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT // TODO - Remove this!
    });
    result.session.clientToken
    res.json({})
});

router.get('/poll-connect', (req: Request, res: Response) => {
    res.json({ message: 'Poll connect', token: CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT });
});

export default router;
