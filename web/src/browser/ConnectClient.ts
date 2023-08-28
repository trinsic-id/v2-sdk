import oidc, { PopupWindowFeatures } from "oidc-client-ts";

export class ConnecClient {

    public static async requestVerifableCredential(request: IVerifiableCredentialRequest): Promise<any> {
        var config = {
            authority: "https://connect.trinsic.cloud/",
            client_id: "http://localhost:8080/",
            redirect_uri: "http://localhost:8080/",

            popupWindowFeatures: {
                ...request.popupWindowFeatures,
                ... {
                    menubar: "yes",
                    location: "yes",
                    toolbar: "yes",
                    width: 1200,
                    height: 800,
                    left: 100,
                    top: 100,
                    resizable: "yes",
                }
            },
            response_type: "code",
            scope: "openid",

            extraQueryParams: {
                "trinsic:ecosystem": request.ecosystem,
                "trinsic:schema": encodeURIComponent(request.schema),
                "trinsic:mode": "popup",
            },
        };

        var manager = new oidc.UserManager(config);

        var result = await manager.signinPopup();

        return result;
    }
}

export interface IVerifiableCredentialRequest {
    ecosystem: string;
    schema: string;
    popupWindowFeatures?: PopupWindowFeatures;
}

export { PopupWindowFeatures };
