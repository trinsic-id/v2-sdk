# Connect Service

The Connect Service is used to create, manage, and retrieve Identity Verification Sessions for Trinsic Connect.

Trinsic Connect is a reusable Identity Verification platform that minimizes user friction by allowing them to securely reuse the results of an identity verification
performed previously on the platform, reducing the number of full verification flows they experience.


!!! warning "Closed Beta"
    Trinsic Connect is currently in a closed beta; please [contact us](mailto:contact@trinsic.id) to gain early access.

---

## Create Session

Create an identity verification session.

Populate `verifications` with a single `RequestedVerification` object, with a `type` of `GovernmentId`. In future, multiple verification types 
will be supported in a single session.

In the returned `session` object, handle the following values appropriately:

- `session.id`
    - Save this in your database somewhere. It is necessary to retrieve the results of the verification session.
- `session.client_token`
    - Pass this to your user's device (browser / phone). It is used to invoke the client-side verification flow.

To invoke the verification flow on the user's device, [use the client-side SDK](#invoke-verification-flow-on-the-client), passing the `client_token` you received.

See [Get Verification Results](#get-verification-results) to understand how to fetch and process the resultant identity data.

{{ proto_sample_start() }}

    === "TypeScript"
        ```ts
        import { TrinsicService } from "@trinsic/trinsic";

        const trinsic = new TrinsicService({ authToken: "<auth token>" });

        const createResponse = await trinsic.connect().createSession({
            verifications: [
                { type: VerificationType.GOVERNMENT_ID }
            ]
        });

        const session = createResponse.session;
        const sessionId = session.id; // Save this in your database
        const clientToken = session.clientToken; // Send this to your user's device
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Create Session](../../../dotnet/Tests/Tests.cs) inside_block:createSession
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.connect.v1.Connect.CreateSession") }}

---

## Get Session

Fetch an identity verification session by its ID.

If the Session has been completed successfully, the results will be available in the `result_vp` field of the returned Session. See [Get Verification Results](#get-verification-results) for information on parsing this field.

If the Session failed for any reason (cancellation, identity verification failure, expiration, etc.), the failure reason will be given by the `fail_code` field.

{{ proto_sample_start() }}

    === "TypeScript"
        ```ts
        import { TrinsicService } from "@trinsic/trinsic";

        const trinsic = new TrinsicService({ authToken: "<auth token>" });

        const getResponse = await trinsic.connect().getSession({
            idvSessionId: "<session id>"
        });

        const session = getResponse.session;
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Get Session](../../../dotnet/Tests/Tests.cs) inside_block:getSession
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.connect.v1.Connect.GetSession") }}

---

## Cancel Session

Cancel an identity verification session by its ID.

A session cannot be canceled if it is in the `SUCCESS` or `FAILED` states.

{{ proto_sample_start() }}

    === "TypeScript"
        ```ts
        import { TrinsicService } from "@trinsic/trinsic";

        const trinsic = new TrinsicService({ authToken: "<auth token>" });

        await trinsic.connect().cancelSession({
            idvSessionId: "<session id>"
        });
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [Get Session](../../../dotnet/Tests/Tests.cs) inside_block:cancelSession
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.connect.v1.Connect.CancelSession") }}

---

## Invoke Verification Flow on the Client

Once a Session has been [created](#create-session), the verification flow must be run on your end-user's device, using the `client_token` returned during Session creation.

=== "Web (TypeScript)"
    ```ts
    import { ConnectClient } from "@trinsic/trinsic";

    const clientToken = ""; // Client Token must come from your backend
    const connectClient = new ConnectClient();

    // The identityVerification() function opens the Trinsic Connect flow in an
    // iframe on your page, and returns a Promise that resolves or rejects 
    // when the flow is completed successfully or unsuccessfully.
    connectClient.identityVerification(clientToken).finally(() => {
        // Session has been completed; ping your backend to fetch the results
        // and move forward with your flow.
    });
    ```
=== "iOS (Swift)"
    ```
    Sample coming soon
    ```
=== "Android (Java)"
    ```
    Sample coming soon
    ```

---

## Get Verification Results

If a verification is successful, its `state` will be `IDV_SUCCESS`, and the resultant data will be available as a JSON string in the `result_vp` field. 
Use the [Get Session](#get-session) call to get the current Session object, including its `state` and `result_vp`.

The verification data is in the form of a [Verifiable Presentation <small>:material-open-in-new:</small>](https://www.w3.org/TR/vc-data-model/#presentations){target=_blank}, 
which will contain one [Verifiable Credential <small>:material-open-in-new:</small>](/learn/concepts/credentials){target=_blank} for each Verification requested during [Session Creation](#create-session).

Below is an example JSON document representing the structure of the output of a Session created with a single Verification of type `GOVERNMENT_ID`:

=== "result_vp"
```
{
   "@context":[
      "https://www.w3.org/2018/credentials/v1",
      "https://w3id.org/security/bbs/v1"
   ],
   "type":[
      "VerifiablePresentation"
   ],
   "verifiableCredential":[
      {
         "@context":[
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/bbs/v1",
            {
               "@vocab":"https://trinsic.cloud/idv/"
            }
         ],
         "id":"urn:vc",
         "type":[
            "IdentityDocument_v0",
            "VerifiableCredential"
         ],
         "credentialSchema":{
            "id":"https://dev-schema.trinsic.cloud/idv/identity-document_v0",
            "type":"JsonSchemaValidator2018"
         },
         "credentialStatus":{
            "id":"https://idv.dev-connect.trinsic.cloud/credential-status/ApkunxzZpbbDjXrtUawYht#1",
            "type":"RevocationList2020Status",
            "revocationListCredential":"https://idv.dev-connect.trinsic.cloud/credential-status/ApkunxzZpbbDjXrtUawYht",
            "revocationListIndex":"1"
         },
         "credentialSubject":{
            "id":"urn:vc:subject:0",
            "city":"",
            "class":"",
            "dateOfBirth":"2000-07-23T00:00:00",
            "expiryDate":"2026-07-23T00:00:00",
            "familyName":"SMITH",
            "givenName":"JANE",
            "issueDate":"2022-07-23T00:00:00",
            "issuer":"",
            "number":"AB123987",
            "portrait":"",
            "postalCode":"",
            "signature":"",
            "state":"",
            "streetAddress":"15 N FAKESTREET, PITTSBURGH, PA, 152110000, USA"
         },
         "issuanceDate":"2023-09-08T19:38:13Z",
         "issuer":"did:web:idv.dev-connect.trinsic.cloud:zJgyUJ3nevuHA2TtX8RShiZ",
         "proof":{
            "type":"BbsBlsSignatureProof2020",
            "created":"2023-09-08T19:38:13Z",
            "nonce":"cXJuOnRyaW5zaWM6aWR2c2Vzc2lvbjowNTFlMDQwYS0yOWI5LTQ2ZDAtYTZjZS01NDE0MDI4OWNhZTA=",
            "proofPurpose":"assertionMethod",
            "proofValue":"BB0f////s4czR+c6vcFExbir6lAwA2oJvZPks3eiKKiWQYy+Rw5zE5CNLjA6fR/Kk/p+ShzAmUW66gWphWeVrlMD/rJCUME70a1bn2xEh7BZ1HMRuLls7WfHKrlkXEslY6JHBMr/lrb8/ZFfaJK/09wkxgNlmWpOpqGIy1qND93rCAGj+HpogcSKut7+Dal8MT0qBGWbAAAAdJncH8a/nXJGJYXryUl025FUVnOkAUSI9gbWQAyBSsgMFUdFUOwXGSx4VinOCFFi4gAAAAInizbf4hm9yCefbr2ZzDyHzzHbW+cMUpSxG2YpPXtkYwxk+KGSZz2IdkGbpVbhujuHVoRF+KdJRx41KAt453oBrPo/v3en9wAKnAjRcdkyIj1RPG1CymPjZTtOUuVSIGRKaI7/gGvXKAvXmb7STE03AAAAAkRszsVGil636L0aB8BXIKia092IpWVLmcaiV0B9V85pazVsUxJQh3a1PCxpa8pd59rwybH2kpVwKvbbaVcpKBA=",
            "verificationMethod":"did:web:idv.dev-connect.trinsic.cloud:zJgyUJ3nevuHA2TtX8RShiZ#JtRE_IyLNS3-9ndoJYj0KttBDCwWV2Q4KZhZUiKAN3g"
         }
      }
   ],
   "id":"urn:uuid:c60798d87b404abeb59fad4173ea689c"
}
```