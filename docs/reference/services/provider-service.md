# Provider Service

The Provider Service helps ecosystem providers with data management and onboarding. 

!!! warning "Named / Production Ecosystems"
    During the beta period, anyone may create an ecosystem with any name. As we move toward general availability of the platform, we will restrict the creation of named / production ecosystems.

    Once this shift occurs, named ecosystems (suitable for production) will be created for you by Trinsic as part of your onboarding process.

    Ecosystems with auto-generated names may be created by anyone for testing purposes, but these **may not** be used in production -- doing so is an unauthorized use of Trinsic's platform.


---

## Create Ecosystem

Creates a new ecosystem, along with a root controlling account.

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