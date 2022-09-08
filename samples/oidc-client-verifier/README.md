# OIDC Client Verifier Sample

This is a simple example which demonstrates the usage of Trinsic's OIDC endpoint to verify a user's credentials in the client.

## Usage

This sample uses `parcel` as a barebones webserver.

On first run, issue `npm ci`.

To host the webserver and access the sample, execute `npm start`.

## Configuration

You will need to modify the following constants in `src/js/app.ts`:

- `TRINSIC_ECOSYSTEM`
  - Set this to the name of the ecosystem from which you wish to fetch credentials
- `TRINSIC_SCHEMAS`
  - Populate this array with schema URLs; only Credentials which use one of these schemas may be fetched.
  - If using Trinsic Templates, this corresponds to the `schema_uri` value of a template
