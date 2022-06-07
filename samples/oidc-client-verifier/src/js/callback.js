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
        setHeader("Success");

        document.getElementById("oidc-raw").innerText = JSON.stringify(response, null, 2);
        document.getElementById("oidc-vp").innerText = JSON.stringify(response.vp_token, null, 2);
        document.getElementById("oidc-credential").innerText = JSON.stringify(response.vp_token.credentialSubject, null, 2);

        //Register click event handler for copy buttons
        let copyButtons = document.getElementsByClassName("copy");
        for(let i = 0; i < copyButtons.length; i++) {
            copyButtons[i].addEventListener('click', copy.bind(copyButtons[i]));
        }

        //Unhide the container for the VC data elements after they've been populated above
        document.getElementById("vc-info-container").classList.remove("hide");
    }).catch(function (err) {
        console.log(err);
        setHeader("Error processing OIDC response");
    });
}

function copy(event) {
    let targetID = this.getAttribute("data-target");
    let target = document.getElementById(targetID);

    if(target) {
        navigator.clipboard.writeText(target.innerText);
    }
}