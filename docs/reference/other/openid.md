# OpenID Credential Exchange Service

## Overview
Trinsic provides an [OpenID Connect <small>:material-open-in-new:</small>](https://openid.net/connect/){target=_blank} ("OIDC") service which enables verifiers to request credentials from a user's cloud wallet in a simple and secure way.

This service does not require the use of Trinsic's SDKs in the user's browser, and is therefore lightweight and easy to integrate.

!!! info "Credential Issuance"
    Currently, Trinsic's OpenID Connect service only enables the sharing of a credential between holder and verifier. We plan to support issuance through this service at a later date.

    In the meantime, use the [InsertItem](../services/wallet-service.md#insert-item) SDK call to store credentials in a holder's wallet.


## Integration

### OpenID Connect Protocol

Because this is an OpenID Connect service, any compliant library may be used -- as long as it enables you to specify additional custom query parameters on the initial outbound URL.

!!! note "OIDC Flow Implementation"

    The specifics of the OpenID Connect protocol -- and how to implement it -- are out of scope for this documentation.

    If you would like to see an example implementation of a verification flow against this service, see the [sample](#sample) below.

### Configuration

Configure your OIDC library with the following parameters:

| Parameter                       | Description                                                                                                                                                                |
| ------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **General Parameters**          |
| `authority`                     | `https://connect.trinsic.cloud`                                                                                                                                            |
| `response_type`                 | `code`                                                                                                                                                                     |
| `scope`                         | `openid`                                                                                                                                                                   |
| `client_id`                     | Any string which uniquely represents your client application                                                                                                               |
| `redirect_uri`                  | The URI your user should be redirected to once they have completed (or canceled) the flow                                                                                  |
| `nonce`                         | *(Optional)* Random nonce value that will be used to bind the generated presentation to the issued token. If not specified, one will be randomly generated. Use this to prevent presentation replays.      |
| **Trinsic-Specific Parameters** |
| `trinsic:ecosystem`             | ID of ecosystem user wallet resides in                                                                                                                                     |
| `trinsic:schema`                | *(Optional)* Comma-separated listed of Schema URLs. Only credentials which match one of these schemas will be returned.                                                    |
| `trinsic:issuer`                | *(Optional)* Comma-separated list of Issuer DIDs. Only credentials issued by one of these issuers will be returned.                                                        |
| `trinsic:egf`                   | *(Optional)* Comma-separated list of [Entity Governance Framework](/learn/concepts/trust-registries) IDs. Only credentials bound to one of these EGF IDs will be returned. |

### Presentation Replays and ID Tokens

In order to prevent verifiable presentation replays, always specify the `nonce` parameter in the initial call to the authorization endpoint. This will ensure that the generated presentation and the ID token match the current request.

### Response Data

Once the user has returned to your redirect URL, exchange the authorization code (added to your redirect URI as a query parameter named `code`) for an identity token using your OIDC library.

You will receive a JSON object of the following form:

```json title="Response JSON"
{
    "id_token": "{JWT containing same data as vp_token}",
    "access_token":"invalid",
    "token_type":"Bearer",
    "vp_token":{
        "@context":[
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/bbs/v1",
            ...
        ],
        "id":"{UUID of Holder Wallet}",
        "type":[
            ...,
            "VerifiableCredential"
        ],
        "credentialSchema":{
            ...
        },
        "credentialStatus":{
            ...
        },
        "credentialSubject":{
            ...
        },
        "issuanceDate":"{Issue date of credential}",
        "issuer":"{DID of Issuer}",
        "proof":{
            ...
        }
    }
}
```

!!! info "Credential Format"
    Note that the above data has been modified for brevity.

    The `@context` and `type` arrays will contain additional entries which are specific to the credential.


### Verify the Received Proof

`vp_token` is a Verifiable Proof; before making use of its data, you must verify it.

This proof can be verified with any library that supports VC verifications for BBS+ signatures. It can also be verified using Trinsic's SDK; this is as simple as [passing the proof to the VerifyProof call](../../services/credential-service/#verify-proof).

If you specified a `nonce` in the authorization request, always verify that the `nonce` claim in the JWT ID token matches the similarly named value in the `_vp_token` document. You may find the nonce in the `_vp_token.proof.nonce` path in the JSON structure. Note that the value in this proof may be specified in base64 format, so you may need to reformat your nonce before comparing. If you specified the nonce as base64 in the request, the two values should match with direct string comparison.


!!! warning "Always Verify"
    It may be tempting to simply take the data in `vp_token` and act upon it without first verifying the proof.

    **Always verify the proof** before making use of its data.

    Without verification, the received proof is of no more value than an unsubstantiated claim made by your user.

## Sample

We've prepared a sample demonstrating client-side OIDC Verification.

<div class="grid cards" markdown>

-   :octicons-browser-24: Interactive Sample

    ---

    Try out an [interactive demo](https://replit.com/@trinsic/oidc-sample) demonstrating client-side verifications

-   :fontawesome-brands-github: Sample Source

    ---

    The source for this sample is available [on GitHub](https://github.com/trinsic-id/sdk/tree/main/samples/oidc-client-verifier)

</div>


## OIDC Libraries

Libraries exist enabling OIDC functionality for all major languages.

The [OpenID Connect website](https://openid.net/developers/certified/) lists a number of certified libraries; we've included links to some of these below.

<div class="grid cards" markdown>

-   :material-language-javascript: [TypeScript/JavaScript](https://github.com/authts/oidc-client-ts)
-   :material-language-python: [Python](https://github.com/OpenIDC/pyoidc)
-   :material-language-csharp: [C#](https://github.com/IdentityModel/IdentityModel.OidcClient)
-   :material-language-go: [Go](https://github.com/zitadel/oidc)
-   :material-language-java: [Java](https://docs.spring.io/spring-security/site/docs/5.2.12.RELEASE/reference/html/oauth2.html)
-   :material-language-ruby: [Ruby](https://github.com/nov/openid_connect)

</div>
