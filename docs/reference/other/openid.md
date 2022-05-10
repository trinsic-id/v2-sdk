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

- `authority`
    - Must be `https://connect.trinsic.cloud/`
- `response_type`
    - Must be `code`
- `scope`
    - Must be `openid`
- `client_id`
    - Any string which uniquely represents your client application
    - In future, we may require registration of client IDs with Trinsic
- `redirect_uri`
    - The URI your user should be redirected to once they have completed (or canceled) the flow
- **Additional Query Parameters**
    - `trinsic:ecosystem`
        - Name of Ecosystem to fetch credentials from
        - Only credentials which were issued within this Ecosystem may be returned
    - `trinsic:schema`
        - Comma-separated list of Schema URLs
        - Only credentials which match one of these schemas may be returned

### Response Data

Once the user has returned to your redirect URL, exchange the authorization code (added to your redirect URI as a query parameter named `code`) for an identity token using your OIDC library.

You will receive a JSON object of the following form:

```json
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

This is as simple as [passing the proof to the Verify Proof call](../../services/credential-service/#verify-proof).


!!! warning "Always Verify"
    It may be tempting to simply take the data in `vp_token` and act upon it without first verifying the proof.

    **Always verify the proof** before making use of its data. 

    Without verification, the received proof is of no more value than an unsubstantiated claim made by your user.

## Sample

If you'd like to see how to implement a basic OIDC flow against this service, or just want to see it in action, check out our [client-side verification flow example <small>:material-open-in-new:</small>](https://replit.com/@trinsic/oidc-sample){target=_blank}.

You'll need to fork the repl and follow the instructions in `README.md`.