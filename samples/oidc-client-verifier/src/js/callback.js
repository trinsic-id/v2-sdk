import { client } from "./app.js";

window.addEventListener('load', function () {
    handleCallback();
});

function setHeader(text) {
    document.getElementById("header-text").innerText = text;
}

function handleCallback() {
    client.processSigninResponse(window.location).then(function (response) {
        console.log("signin response", response);
        setHeader("Welcome, Gym Member!");

        document.getElementById("oidc-raw").innerText = JSON.stringify(response, null, 2);
        document.getElementById("oidc-credential").innerText = JSON.stringify(response.vp_token.credentialSubject, null, 2);
        document.getElementById("vc-info-container").classList.remove("hide");
    }).catch(function (err) {
        console.log(err);
        setHeader("Error processing OIDC response");
    });
}
