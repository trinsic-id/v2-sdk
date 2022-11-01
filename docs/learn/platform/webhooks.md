# Webhooks

## Overview

Webhooks enable providers to receive updates whenever an event occurs within the ecosystem they manage.

---

## Configuring Webhooks

Webhooks may be added to an ecosystem using the [AddWebhook](/reference/services/provider-service/#add-webhook) method; either with the [CLI](/cli/) or any of our SDKs. In the future, webhooks will also be configurable through a web dashboard.

The value chosen for `secret` should be a UTF-8 string which is never published anywhere; it is used to [verify incoming payloads](#verification).

The `destination_url` of a webhook **must** be an HTTPS URL accessible over the internet.


!!! info "Event Type Filtering"
    By default, webhooks receive all [event types](#event-types), but can be configured to only trigger on a specific subset of events.

---

## Receiving Webhooks

Webhooks are sent as JSON strings to your specified URL (which must be HTTPS) using the `POST` method. 

### Structure

The structure of a webhook payload is shown below. Event-specific information is stored in `data`; its format is [event-specific](/reference/events){target=_blank}.

| Field     | Type        | Description                                     |
| --------- | ----------- | ----------------------------------------------- |
| id        | `string`    | The ID of the event which triggered the webhook |
| timestamp | `timestamp` | The timestamp of the event                      |
| type      | `string`    | The type of event contained in `data`           |
| data      | `object`    | The data of the event itself                    |


### Verification

Because webhooks are URLs accessible over the internet, it is necessary to ensure that a webhook comes from Trinsic and not an attacker.    

Trinsic hashes payloads using [HMAC-SHA256](https://en.wikipedia.org/wiki/HMAC){target=_blank}, using the `secret` you provided during webhook creation as the secret key, and the raw `POST` body as the message contents.

This hash is sent with the request as a header named `trinsic-signature-sha256`.

Your verification code may look like the following pseudocode:

=== "Pseudocode"
    ```
    message = http_request.post_body
    trinsic_hash = http_request.headers["trinsic-signature-sha256"]

    computed_hash = hmac_sha256(message, stored_secret)

    if(trinsic_hash != computed_hash) {
        // Hash failed verification. This is not a genuine webhook from Trinsic.
    }
    ```

!!! tip "Use a library"
    It is highly recommended that you use a library to compute and verify HMACs.

    Many languages have native support for HMAC-SHA256; for those that don't, high-quality open source libraries exist.

---

## Enabling Wallet Events

Events which occur on a [wallet](/learn/concepts/wallets) will not be sent to your webhooks unless the wallet holder has opted in.

To receive webhooks for wallet events, the [AuthorizeWebhook](/reference/services/account-service/#authorize-webhook) method must be called for each wallet which is opting-in to propagate wallet events to the ecosystem provider.

This call must be performed using the wallet's authentication token.

---

## Event Types

For a list of all event types and their structures, see the [Events Reference](/reference/events) page.