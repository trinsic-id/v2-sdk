# Provider Service

The Provider Service enables the creation and management of ecosystems.

!!! warning "Named vs Anonymous ecosystems"
    There are two types of ecosystems: *named* and *anonymous*.

    Named ecosystems are suitable for production, and will be prepared for you by Trinsic during onboarding.

    Anonymous ecosystems have auto-generated names (such as `eager-elephant-94jkn5h`), and may be created by anyone at any time.

    Using an anonymous ecosystem for purposes other than prototyping and testing is considered an unauthorized use of Trinsic's platform.

---

## Service Creation

{{ proto_sample_create_service("services.provider.v1.Provider") }}

---

## Create Ecosystem

Creates a new ecosystem, along with a root controlling account.

If `name` is left empty, an anonymous ecosystem will be created.

{{ proto_sample_start("services.provider.v1.Provider.CreateEcosystem") }}
{{ proto_sample_code("services.provider.v1.Provider.CreateEcosystem") }}
{{ proto_method_tabs("services.provider.v1.Provider.CreateEcosystem") }}

---

## Update Ecosystem

!!! warning "Deprecation Notice"
    This endpoint is deprecated, and will be removed May 1, 2023. Please use the [dashboard to update](https://dashboard.trinsic.id/).

Updates the active ecosystem's `description` or `uri`.

{{ proto_sample_start("services.provider.v1.Provider.UpdateEcosystem") }}
{{ proto_sample_code("services.provider.v1.Provider.UpdateEcosystem") }}
{{ proto_method_tabs("services.provider.v1.Provider.UpdateEcosystem") }}

---

## Get Ecosystem Info

Fetches information about the active ecosystem.

{{ proto_sample_start("services.provider.v1.Provider.EcosystemInfo") }}
{{ proto_sample_code("services.provider.v1.Provider.EcosystemInfo") }}
{{ proto_method_tabs("services.provider.v1.Provider.EcosystemInfo") }}

---

## Upgrade Wallet DID

!!! warning "Restricted API"
    This feature is not yet publicly available, and the list of supported DID Methods is not final.

    Please contact Trinsic to enable this endpoint on your account.

!!! info "Ledger Interactions"
    Depending on the DID Method chosen, you may be responsible for ledger write fees; additionally, there are some logistical concerns to be aware of.

    [Click here](/learn/concepts/dids#upgrading-wallet-dids) to learn more.

Upgrades a wallet's DID from the default `did:key` to another DID Method. This endpoint may only be called by an ecosystem provider.

Trinsic will register a DID Document for you, and update the wallet's `public_did` property to the newly-registered DID. Credentials previously issued by this wallet will not have their `issuer` field updated to the new DID, but they will still verify correctly.

Presently, once a wallet's DID has been upgraded, its DID Method cannot be changed again. However, it is possible to perform further upgrades _within_ a method, to go from a testing to production network (for example, `did:ion:test` to `did:ion`).

{{ proto_sample_start("services.provider.v1.Provider.UpgradeDID") }}
{{ proto_sample_code("services.provider.v1.Provider.UpgradeDID") }}
{{ proto_method_tabs("services.provider.v1.Provider.UpgradeDID") }}

<!--
// This call is not yet implemented
## List Ecosystems

Lists all available ecosystem for the current authentication context.

When using one of the SDKs, you must supply an [List Ecosystem Request](../proto/index.md#listecosystemrequest) object. This object follows the model below:

{{ proto_message('services.provider.v1.ListEcosystemRequest') }}

The response model is of type [List Ecosystem Response](../proto/index.md#listecosystemresponse):

{{ proto_message('services.provider.v1.ListEcosystemResponse') }}
-->

## Invite

This will be removed May 1, 2023
Invite a user to the ecosystem

{{ proto_sample_start("services.provider.v1.Provider.Invite") }}
{{ proto_sample_code("services.provider.v1.Provider.Invite") }}
{{ proto_method_tabs("services.provider.v1.Provider.Invite") }}

---

## InvitationStatus

This will be removed May 1, 2023
Check the status of an invitation

{{ proto_sample_start("services.provider.v1.Provider.InvitationStatus") }}
{{ proto_sample_code("services.provider.v1.Provider.InvitationStatus") }}
{{ proto_method_tabs("services.provider.v1.Provider.InvitationStatus") }}

---

## GetOberonKey

Returns the public key being used to create/verify oberon tokens

{{ proto_sample_start("services.provider.v1.Provider.GetOberonKey") }}
{{ proto_sample_code("services.provider.v1.Provider.GetOberonKey") }}
{{ proto_method_tabs("services.provider.v1.Provider.GetOberonKey") }}

---

## RetrieveDomainVerificationRecord

Retrieve a random hash TXT that can be used to verify domain ownership

{{ proto_sample_start("services.provider.v1.Provider.RetrieveDomainVerificationRecord") }}
{{ proto_sample_code("services.provider.v1.Provider.RetrieveDomainVerificationRecord") }}
{{ proto_method_tabs("services.provider.v1.Provider.RetrieveDomainVerificationRecord") }}

---

## RefreshDomainVerificationStatus

Call to verify domain

{{ proto_sample_start("services.provider.v1.Provider.RefreshDomainVerificationStatus") }}
{{ proto_sample_code("services.provider.v1.Provider.RefreshDomainVerificationStatus") }}
{{ proto_method_tabs("services.provider.v1.Provider.RefreshDomainVerificationStatus") }}

---

## SearchWalletConfigurations

Search for issuers/providers/verifiers in the current ecosystem

{{ proto_sample_start("services.provider.v1.Provider.SearchWalletConfigurations") }}
{{ proto_sample_code("services.provider.v1.Provider.SearchWalletConfigurations") }}
{{ proto_method_tabs("services.provider.v1.Provider.SearchWalletConfigurations") }}
