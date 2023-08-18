export type SessionResult = {
    client_token: string;
    verifiable_presentation: string;
}

export const backendUrl = "http://localhost:3000";
export const frontendUrl = "http://localhost:5173";


export async function connectInit(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_init");
    return await response.json();
}

export async function connectGetSession(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_get_session");
    return await response.json();
}

export async function connectCancel(): Promise<SessionResult> {
    const response = await fetch(backendUrl + "/connect_cancel");
    return await response.json();
}