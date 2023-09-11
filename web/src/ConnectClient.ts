import { UserManager } from "oidc-client-ts";

export class ConnectClient {
    public async requestVerifiableCredential(
        request: IVerifiableCredentialRequest,
    ): Promise<any> {
        if (!request || !request.ecosystem || !request.schema) {
            throw new Error("ecosystem and schema are required");
        }
        var config = {
            authority: "https://connect.trinsic.cloud/",
            client_id: "http://localhost:8080/",
            redirect_uri: "http://localhost:8080/",

            popupWindowFeatures: {
                ...request.popupWindowFeatures,
                ...{
                    menubar: "yes",
                    location: "yes",
                    toolbar: "yes",
                    width: 1200,
                    height: 800,
                    left: 100,
                    top: 100,
                    resizable: "yes",
                },
            },
            response_type: "code",
            scope: "openid",

            extraQueryParams: {
                "trinsic:ecosystem": request.ecosystem,
                "trinsic:schema": request.schema,
                "trinsic:mode": "popup",
            },
        };

        var manager = new UserManager(config);

        return await manager.signinPopup();
    }

    public async identityVerification(): Promise<any> {
        console.log("not implemented");
        return Promise.resolve({});
    }
}

export interface IVerifiableCredentialRequest {
    ecosystem: string;
    schema: string;
    popupWindowFeatures?: PopupWindowFeatures;
}

export declare interface PopupWindowFeatures {
    left?: number;
    top?: number;
    width?: number;
    height?: number;
    menubar?: boolean | string;
    toolbar?: boolean | string;
    location?: boolean | string;
    status?: boolean | string;
    resizable?: boolean | string;
    scrollbars?: boolean | string;
    [k: string]: boolean | string | number | undefined;
}
