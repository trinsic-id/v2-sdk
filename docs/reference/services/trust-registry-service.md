# Trust Registry Service

The Trust Registry Service exposes functionality for managing [Trust Registries](/learn/concepts/trust-registries) -- lists of authorized issuers for the various credential types within an ecosystem.

!!! warning "Under Construction"
    This section -- and the underlying API -- is under active development.

    We are working to define exactly how Trust Registries will be implemented within our platform; this page and API may change as we do so.

---

## Create Governance Framework

Creates a Governance Framework and attaches it to the current ecosystem.

{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.AddFramework") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.AddFramework") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.AddFramework") }}

---

## RemoveFramework

Remove a governance framework from the ecosystem

{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.RemoveFramework") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.RemoveFramework") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.RemoveFramework") }}

---

## Register Member

Registers an authorized issuer for a specific credential type (identified by its `schema_uri`).

{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.RegisterMember") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.RegisterMember") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.RegisterMember") }}

---

## Unregister Member

Unregisters an issuer for a specific credential type (identified by its `schema_uri`).


{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.UnregisterMember") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.UnregisterMember") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.UnregisterMember") }}

---

## Get Membership Status

Check the status of an issuer for a specific credential type.

{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.GetMembershipStatus") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.GetMembershipStatus") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.GetMembershipStatus") }}

---

## Search
Search the registry for registered issuers using a SQL query.

{{ proto_sample_start("services.trustregistry.v1.TrustRegistry.SearchRegistry") }}
{{ proto_sample_code("services.trustregistry.v1.TrustRegistry.SearchRegistry") }}
{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.SearchRegistry") }}

---

## Cache Offline Registry File

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry download
    ```
