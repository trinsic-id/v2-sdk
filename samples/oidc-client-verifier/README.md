# OIDC Client Verifier Sample

This is a (very WIP) sample that demonstrates the usage of Trinsic's OIDC endpoint to verify a user's credentials in the client.

Simplicity is an important factor; this uses bare HTML and vanilla JavaScript.

## Usage

This sample uses `parcel` as a barebones webserver.

On first run, issue `npm install`.

To host the webserver and access the sample, execute `npm start`.

## OIDC Endpoint

At the moment, this sample operates off of an OIDC endpoint that is running locally -- found in the private Trinsic `server` repository.

Once the OIDC service has been deployed, this requirement will be removed.