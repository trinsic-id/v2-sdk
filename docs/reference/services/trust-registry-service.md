# Trust Registry Service

The Trust Registry Service exposes functionality for managing [Trust Registries](/learn/concepts/trust-registries) -- lists of authorized issuers for the various credential types within an ecosystem.

!!! warning "Under Construction"
    This section -- and the underlying API -- is under active development.

    We are working to define exactly how Trust Registries will be implemented within our platform; this page and API may change as we do so.

---

## Register Issuer

Registers an authorized issuer for a specific credential type (identified by its `schema_uri`).

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry register-member \
            --egf http://hl7.org/fhir \
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
        trinsic trust-registry unregister-issuer \
            --egf http://hl7.org/fhir \
            --credential-type https://w3id.org/vaccination#VaccinationCertificate \
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

## Check Issuer Status
Check the status of an issuer for a specific credential type.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic trust-registry check-issuer \
            --egf http://hl7.org/fhir \
            --credential-type https://w3id.org/vaccination#VaccinationCertificate \
            --did did:example:fabre
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetMembershipStatus](../../../web/test/TrustRegistry.test.ts) inside_block:getMembershipStatus
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [RegisterIssuer](../../../go/services/services_test.go) inside_block:getMembershipStatus
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:checkIssuerStatus
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.trustregistry.v1.TrustRegistry.GetMemberAuthorizationStatus") }}

---

## Cache Offline Registry File

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry download 
    ```
