import {client} from "./app.js";

window.addEventListener('load', function () {
    handleCallback();
});

function handleCallback() {
    client.processSigninResponse(window.location).then(function (response) {
        console.log("signin response", response);

        document.getElementById("header-text").innerText = "Welcome, Citizen!";

    }).catch(function (err) {
        console.log(err);
        document.getElementById("header-text").innerText = "Error processing OIDC response";
    });
}
