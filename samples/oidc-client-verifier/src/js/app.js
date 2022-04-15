import {OidcClient} from "oidc-client-ts";

//Ecosystem to fetch credentials from
const TRINSIC_ECOSYSTEM = "FILL_ME_IN";

//Schema URL(s) of credentials we would like to retrieve from the user
const TRINSIC_SCHEMAS = ["FILL_ME_IN"];

let config = {
    authority: "https://localhost:7266/", //TODO: replace with live OIDC endpoint
    client_id: "urn:walletId:1", //TODO: discuss client IDs
    redirect_uri: window.location.origin + "/callback.html",
    post_logout_redirect_uri: window.location.origin + "/index.html",

    response_type: "code",
    scope: "openid",

    // Trinsic-specific data
    extraQueryParams: {
        "trinsic:ecosystem": TRINSIC_ECOSYSTEM,
        "trinsic:schema": TRINSIC_SCHEMAS
    }
};

let client = new OidcClient(config);

export {client};