# Trust Registry Service

The Governance API exposes functionality for managing your Ecosystem's [Trust Registry](/learn/concepts/trust-registries).

A Trust Registry is a list of authorized issuers for the various credential types within an ecosystem.

---

## Register Issuer

Registers an authorized issuer for a specific credential type (identified by its `schema_uri`).

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry register-member \
            --schema https://w3id.org/vaccination#VaccinationCertificate \
            --did did:key:xxxxx.....
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [RegisterIssuer](../../../web/test/TrustRegistry.test.ts) inside_block:registerMemberSample
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [RegisterIssuer](../../../dotnet/Tests/Tests.cs) inside_block:registerIssuerSample
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [RegisterIssuer](../../../python/samples/trustregistry_demo.py) inside_block:registerIssuerSample
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [RegisterIssuer](../../../go/services/services_test.go) inside_block:registerMemberSample
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:registerIssuerSample
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.RegisterMember") }}

---

## Unregister Issuer

Unregisters an issuer for a specific credential type (identified by its `schema_uri`).


{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry unregister-member \
            --schema https://w3id.org/vaccination#VaccinationCertificate \
            --did did:example:fabre
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [UnregisterMember](../../../web/test/TrustRegistry.test.ts) inside_block:unregisterMember
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [UnregisterMember](../../../dotnet/Tests/Tests.cs) inside_block:unregisterIssuer
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [UnregisterMember](../../../python/samples/trustregistry_demo.py) inside_block:unregisterIssuer
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [UnregisterMember](../../../go/services/services_test.go) inside_block:unregisterMember
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [UnregisterMember](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:unregisterIssuer
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.UnregisterMember") }}

---

## List Issuers

Lists all issuers that are authorized within the ecosystem, optionally filtering against a specific credential type.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry list-members
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetMembershipStatus](../../../web/test/TrustRegistry.test.ts) inside_block:listMembers
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetMembershipStatus](../../../dotnet/Tests/Tests.cs) inside_block:listMembers
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetMembershipStatus](../../../python/samples/trustregistry_demo.py) inside_block:listMembers
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetMembershipStatus](../../../go/services/services_test.go) inside_block:listMembers
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetMembershipStatus](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:listMembers
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.ListAuthorizedMembers") }}

---

## Get Issuer

Gets an issuer's entry in the ecosystem's trust registry.

This call returns data regarding every credential the issuer is registered to issue for. 

{{ proto_sample_start() }}
        === "Trinsic CLI"
        ```bash
        trinsic trust-registry get-member \
            --did did:example:fabre \  // OR
            --email test@example.com \ // OR
            --wallet urn:trinsic:wallets:example
        ```
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetMembershipStatus](../../../web/test/TrustRegistry.test.ts) inside_block:getMemberSample
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetMembershipStatus](../../../dotnet/Tests/Tests.cs) inside_block:getMember
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetMembershipStatus](../../../python/samples/trustregistry_demo.py) inside_block:getMember
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetMembershipStatus](../../../go/services/services_test.go) inside_block:getMemberSample
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetMembershipStatus](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:getMember
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.GetMember") }}

---

## Check Issuer Status
Checks the authorization status of an issuer for a specific credential type.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry get-membership-status \
            --credential-type https://w3id.org/vaccination#VaccinationCertificate \
            --did did:example:fabre
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetMembershipStatus](../../../web/test/TrustRegistry.test.ts) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetMembershipStatus](../../../dotnet/Tests/Tests.cs) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetMembershipStatus](../../../python/samples/trustregistry_demo.py) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetMembershipStatus](../../../go/services/services_test.go) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetMembershipStatus](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.GetMemberAuthorizationStatus") }}
