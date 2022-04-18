import { client } from "./app.js";

//Call `handleCallback` once page has fully loaded
window.addEventListener('load', handleCallback);

/**
 * Sets the page's header text
 * 
 * @param {*} text New text of header
 */
function setHeader(text) {
    document.getElementById("header-text").innerText = text;
}

/**
 * Called on page load. Process OIDC callback query values, fetch credentials, and display.
 */
function handleCallback() {
    let url = window.location;

    client.processSigninResponse(url).then(function (response) {
        console.log("Credential Response", response);
        setHeader("Welcome, Gym Member!");

        document.getElementById("oidc-raw").innerText = JSON.stringify(response, null, 2);
        document.getElementById("oidc-credential").innerText = JSON.stringify(response.vp_token.credentialSubject, null, 2);

        //Unhide the container for the VC data elements after they've been populated above
        document.getElementById("vc-info-container").classList.remove("hide");
    }).catch(function (err) {
        console.log(err);
        setHeader("Error processing OIDC response");
    });
}
