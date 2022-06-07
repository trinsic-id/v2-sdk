import {client} from "./app.js";

/**
 * Called when the login button is clicked.
 * 
 * Generates an OIDC sign-in URL for the Trinsic OIDC endpoint, 
 * and redirects the user's browser.
 */
function login() {
    client.createSigninRequest({}).then(function (req) {
        console.log("signin request", req, "<a href='" + req.url + "'>go signin</a>");
        window.location = req.url;
    }).catch(function (err) {
        console.error(err);
    });
}

document.getElementById("login").addEventListener("click", login);