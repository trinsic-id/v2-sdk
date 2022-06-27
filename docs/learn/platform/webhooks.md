# Webhooks
!!! warning "Under Construction"
    Webhooks are under active development, and the design is not yet finalized.

    This page will be updated with further details as they become available.

## Overview

Webhooks enable providers to receive updates whenever an event occurs within the ecosystem they manage.

## Configuring Webhooks

Webhooks may be added to an ecosystem using the [AddWebhook](/reference/services/provider-service.md#add-webhook) method; either with the [CLI](/cli/index.md) or any of our SDKs. In the future, webhooks will also be configurable through a web dashboard.

By default, webhooks receive all [event types](#events), but can be configured to only trigger on a specific subset of events.

## 



## Receiving Wallet Events

Events which occur on a [wallet](/learn/platform/wallets.md) will not automatically trigger a webhook.

To receive webhooks for wallet events, the [AuthorizeWebhook](/reference/services/account-service.md#authorize-webhook) method must be called for each wallet which is opting-in to propagate wallet events to the ecosystem provider.

This call must be performed using the wallet's authentication token.

## Events

For a list of all event types and their structures, see the [Events](/reference/events.md) page.