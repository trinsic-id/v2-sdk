export type SessionResult = {
    client_token: string;
    verifiable_presentation: string;
    status: string;
};

export const backendUrl = "http://localhost:3000";
export const frontendUrl = "http://localhost:5173";

export async function connectInit(): Promise<SessionResult> {
    // This should be a POST request
    const response = await fetch(backendUrl + "/connect_init", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
        },
    });
    return await response.json();
}

export async function connectGetSession(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_get_session", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
        },
    });
    return await response.json();
}

export async function connectCancel(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_cancel", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
        },
    });
    return await response.json();
}

export enum FlowType {
    POPUP,
    EMBEDDED,
}

export type TrinsicConnectFlowOptions = {
    flowType?: FlowType;
};

// TODO - Move this into the SDK once we get it working!
export async function showTrinsicConnect(
    sessionId: string,
    options: TrinsicConnectFlowOptions,
): Promise<string> {
    const ecosystemId = "idv";
    // TODO - Handle dev/staging/prod
    const connectUrl = "dev-connect.trinsic.cloud";
    const flowType = options.flowType ?? FlowType.EMBEDDED;
    const connectParams = {
        "trinsic:ecosystem": ecosystemId,
        "trinsic:verification_session_id": sessionId,
        "trinsic:schema": "https://dev-schema.trinsic.cloud/idv/connect-1"
    };

    const url = `https://${ecosystemId}.${connectUrl}/connect/authorize?${new URLSearchParams(connectParams).toString()}`;

    if (flowType === FlowType.POPUP) {
        console.log("Opening popup window to: " + url);
        window.open(url);
    } else if (flowType === FlowType.EMBEDDED) {
        // Create an iframe on the document pointing to `url`,
        // position it, etc; create a grayish background layer to obscure the RP
        // site.
        throw new Error("Not implemented");
    }

    // Wait for the IDV flow to post a message back from the popup or iframe and
    // resolve/reject the promise in response
    return new Promise((resolve, reject) => {
        window.addEventListener("message", (evt) => {
            // do security checks eg message comes from right place etc
            if (evt.data.verificationSessionId !== sessionId) return;

            if (evt.data.success) resolve(sessionId);
            else reject(evt.data.message);
        });
    });
}
