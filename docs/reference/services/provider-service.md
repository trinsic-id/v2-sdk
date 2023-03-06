# Provider Service

The Provider Service enables the creation and management of ecosystems.

!!! warning "Named vs Anonymous ecosystems"
    There are two types of ecosystems: *named* and *anonymous*.

    Named ecosystems are suitable for production, and will be prepared for you by Trinsic during onboarding.

    Anonymous ecosystems have auto-generated names (such as `eager-elephant-94jkn5h`), and may be created by anyone at any time.

    Using an anonymous ecosystem for purposes other than prototyping and testing is considered an unauthorized use of Trinsic's platform.

---

## Create Ecosystem

Creates a new ecosystem, along with a root controlling account.

If `name` is left empty, an anonymous ecosystem will be created.

{{proto_sample_start()}}
    === "Trinsic CLI"
        ```bash
        trinsic provider create-ecosystem --name <ECOSYSTEM_NAME> --email <OWNER_EMAIL>
        ```
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateEcosystem](../../../web/test/ProviderService.test.ts) inside_block:createEcosystem
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateEcosystem](../../../dotnet/Tests/Tests.cs) inside_block:createEcosystem
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateEcosystem](../../../python/samples/ecosystem_demo.py) inside_block:createEcosystem
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateEcosystem](../../../go/services/services_test.go) inside_block:createEcosystem
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:createEcosystem
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.provider.v1.Provider.CreateEcosystem") }}

---

## Update Ecosystem

!!! warning "Deprecation Notice"
    This endpoint is deprecated, and will be removed May 1, 2023. Please use the [dashboard to update](https://dashboard.trinsic.id/).

Updates the active ecosystem's `description` or `uri`.

{{proto_sample_start()}}
    === "Trinsic CLI"
        ```bash
        trinsic provider update-ecosystem \
                         --description "New description" \
                         --uri "https://new-example.com"
        ```

    === "TypeScript"
        <!--codeinclude--> 
        ```typescript
        [UpdateEcosystem](../../../web/test/ProviderService.test.ts) inside_block:updateEcosystem
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [UpdateEcosystem](../../../dotnet/Tests/Tests.cs) inside_block:updateEcosystem
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [UpdateEcosystem](../../../python/samples/provider_demo.py) inside_block:updateEcosystem
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [UpdateEcosystem](../../../go/services/provider_service_test.go) inside_block:updateEcosystem
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [UpdateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:updateEcosystem
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.provider.v1.Provider.UpdateEcosystem") }}

---

## Get Ecosystem Info

Fetches information about the active ecosystem.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic provider ecosystem-info
        ```

    === "TypeScript"
        <!--codeinclude--> 
        ```typescript
        [EcosystemInfo](../../../web/test/ProviderService.test.ts) inside_block:ecosystemInfo
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [EcosystemInfo](../../../dotnet/Tests/Tests.cs) inside_block:ecosystemInfo
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [EcosystemInfo](../../../python/samples/provider_demo.py) inside_block:ecosystemInfo
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [EcosystemInfo](../../../go/services/provider_service_test.go) inside_block:ecosystemInfo
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [EcosystemInfo](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:ecosystemInfo
        ```
        <!--/codeinclude-->

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

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic provider upgrade-did --wallet-id {wallet_id} --method ion --method-options testnet
        ```

    === "TypeScript"
        <!--codeinclude--> 
        ```typescript
        [UpgradeDid](../../../web/test/ProviderService.test.ts) inside_block:upgradeDid
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [UpgradeDid](../../../dotnet/Tests/Tests.cs) inside_block:upgradeDid
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [UpgradeDid](../../../python/samples/provider_demo.py) inside_block:upgradeDid
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [UpgradeDid](../../../go/services/provider_service_test.go) inside_block:upgradeDid
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [UpgradeDid](../../../java/src/test/java/trinsic/ProviderServiceTest.java) inside_block:upgradeDid
        ```
        <!--/codeinclude-->

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

<!--

Excluding invitation documentation pending re-thinking

To revert this, find the contents of this file before 6/9/2022 :~)

-->