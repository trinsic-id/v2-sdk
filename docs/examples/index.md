---
hide:
    - feedback
    - toc
    - navigation
---

# Examples

## Issuance and provisioning of Verifiable Credentials

These example showcase common scenarios for the issuance of verifiable credentials under different platforms.

<div class="grid cards" markdown>

-   __Issue directly and send__

    ---

    <span class="pill node">node.js</span>

    Quickly issue a credential directly to your backend and send the issued credential
    to the user's wallet by specifying their email address. This example is performed on the backend.

    <br />

    [:octicons-arrow-right-24: Guide in Node.js](/examples/issue-direct-send)

-   __Issue and exchange using CHAPI__

    ---

    <span class="pill node">node.js</span> <span class="pill js">browser</span>

    Issue a credential directly at your backend and exchange the issued credential
    with the user by utilizing the [Credential Handler API <small>:material-open-in-new:</small>](https://chapi.io) (CHAPI) via browser.

    <br />

    [:octicons-arrow-right-24: Guide in Node.js API and browser](/examples/issue-send-chapi)

-   __Issue interactively and deliver out-of-band__

    ---

    Issue a credential offer in the backend and present it to the user. The user can accept or reject this offer
    using their authenticaton context.

    *Coming soon...*

-   __Cross Ecosystem Issuance__

    ---

    <span class="pill ts">TypeScript</span>

    Go through the process of cross ecosystem issuance of verifiable credentials. We'll be creating a wallet and a credential offer in ecosystem A and creating a wallet and accepting the offer in ecosystem B.

    <br />

    [:octicons-arrow-right-24: Guide in TypeScript](/examples/cross-eco-issuance)

</div>

## Requesting and sharing Verifiable Credentials

<div class="grid cards" markdown>

-   __Request Verifiable Credential in browser using OIDC__

    ---

    <span class="pill node">node.js</span> <span class="pill js">browser</span>

    This example shows how you can request a verifiable credential from the user
    directly from your native app in iOS or MacOS using OIDC

    <br />

    [:octicons-arrow-right-24: Guide in Node.js API and browser](/examples/verify-cred-oidc)

-   __Request Verifiable Credential on iOS and MacOS__

    ---

    <span class="pill swift">swift</span>

    This example shows how you can request a verifiable credential from the user
    directly from your native app in iOS or MacOS

    <br />

    Coming soon...

-   __Request Verifiable Credential on Android__

    ---

    Coming soon...

</div>

## Identity Document Verifications

<div class="grid cards" markdown>

-   __Request Identity Document Verfication in browser__

    ---

    <span class="pill node">node.js</span> <span class="pill js">browser</span>

    This example shows how you can request identity document verification using Trinsic Connect in a browser.

    <br />

    [:octicons-arrow-right-24: Guide in Node.js API and browser](/examples/idv-browser)

-   __Request Identity Document Verification on iOS and MacOS__

    ---

    <span class="pill dotnet">dotnet</span> <span class="pill swift">swift</span>

    This example shows how you can request identity document verification using Trinsic Connect on iOS and MacOS native platforms.

    <br />

    Coming soon...

</div>
