import { OidcClient, OidcClientSettings } from "oidc-client-ts";
import {TRINSIC_ECOSYSTEM, TRINSIC_ENVIRONMENT, TRINSIC_SCHEMA} from "./constants";

/***************************************************
 *    Probably don't modify anything below here!   *
 ***************************************************/


const authority_urls = {
    prod: "https://connect.trinsic.cloud/",
    staging: "https://connect-staging.trinsic.cloud/",
    dev: "https://localhost:7266",
};

let config: OidcClientSettings = {
    authority: authority_urls[TRINSIC_ENVIRONMENT],
    client_id: "urn:walletId:1",
    redirect_uri: window.location.origin + "/callback.html",
    post_logout_redirect_uri: window.location.origin + "/index.html",

    response_type: "code",
    scope: "openid",

    // Trinsic-specific data
    extraQueryParams: {
        "trinsic:ecosystem": TRINSIC_ECOSYSTEM,
        "trinsic:schema": TRINSIC_SCHEMA,
    },
};

let client = new OidcClient(config);
export { client };
