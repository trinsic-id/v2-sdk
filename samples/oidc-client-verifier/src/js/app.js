import {OidcClient} from "oidc-client-ts";

//Trinsic Ecosystem we are operating within
const TRINSIC_ECOSYSTEM = "GeraldsGyms";

//Schema URL(s) of credentials we would like to retrieve from the user.
const TRINSIC_SCHEMAS = ["https://schema.trinsic.cloud/GeraldsGyms/gym-membership"];

/***************************************************
 *    Probably don't modify anything below here!   *
 ***************************************************/

//Trinsic deployment environment to run against (prod, staging, dev)
const TRINSIC_ENVIRONMENT = "prod";

let config = {
    authority: "https://connect.trinsic.cloud/",
    client_id: "urn:walletId:1",
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