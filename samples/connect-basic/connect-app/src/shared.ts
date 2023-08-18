export type SessionResult = {
    client_token: string;
    verifiable_presentation: string;
}

export const backendUrl = "http://localhost:3000";
export const frontendUrl = "http://localhost:5173";


export async function connectInit(): Promise<SessionResult> {
    // This should be a POST request
    const response = await fetch( backendUrl + "/connect_init",{ method: "POST", headers: {
        'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*'
        }});
    return await response.json();
}

export async function connectGetSession(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_get_session",{ method: "POST", headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*'
        }});
    return await response.json();
}

export async function connectCancel(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_cancel",{ method: "POST", headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*'
        }});
    return await response.json();
}