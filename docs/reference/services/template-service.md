
# Template Service

The Template Service allows you to manage and search [Credential Templates](/learn/concepts/templates).


!!! info "Templates are optional"
    Templates are designed to be a helpful abstraction over the complexities of producing valid [JSON-LD Verifiable Credentials](https://www.w3.org/TR/vc-data-model/).

    You aren't required to use templates; if you produce valid JSON-LD VCs yourself, they can be issued through Trinsic.

---

## Create Template

Creates a new credential template.

In the background, Trinsic will also generate and save a valid JSON-LD Context and schema for your template.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic template create --name 'My Credential' --fields-data '{\"field1\":{}}'
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateTemplate](../../../web/test/CredentialTemplateShared.ts) inside_block:defineTemplate
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateTemplate](../../../dotnet/Tests/Tests.cs) inside_block:createTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateTemplate](../../../python/samples/templates_demo.py) inside_block:createTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateTemplate](../../../go/services/template_service_test.go) inside_block:createTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:createTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.templates.v1.CredentialTemplates.Create") }}

---

## Get Template

Fetches a template definition by `id`.

{{ proto_sample_start() }}

    === "Trinsic CLI"
        ```bash
        trinsic template get --id <TEMPLATE_ID>
        ```
        
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateTemplate](../../../web/test/CredentialTemplateShared.ts) inside_block:getCredentialTemplate
        ```
        <!--/codeinclude-->
        
    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateTemplate](../../../dotnet/Tests/Tests.cs) inside_block:getCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateTemplate](../../../python/samples/templates_demo.py) inside_block:getCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Issue From Template](../../../go/services/template_service_test.go) inside_block:getCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:getCredentialTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.templates.v1.CredentialTemplates.Get") }}

---

## Delete Template

Deletes a credential template by `id`.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic tamplate delete --id <TEMPLATE_ID>
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateTemplate](../../../dotnet/Tests/Tests.cs) inside_block:deleteCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateTemplate](../../../python/samples/templates_demo.py) inside_block:deleteCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Issue From Template](../../../go/services/template_service_test.go) inside_block:deleteCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:deleteCredentialTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.templates.v1.CredentialTemplates.Delete") }}

---

## Search Templates

Searches all templates defined in the current ecosystem, and a `continuation_token` to paginate large result sets.

If no `query` is specified, this call by default returns the first 100 templates.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic wallet search \
            --query "SELECT * FROM c"
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateTemplate](../../../web/test/CredentialTemplateShared.ts) inside_block:searchCredentialTemplate
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateTemplate](../../../dotnet/Tests/Tests.cs) inside_block:searchCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [CreateTemplate](../../../python/samples/templates_demo.py) inside_block:searchCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [Issue From Template](../../../go/services/template_service_test.go) inside_block:searchCredentialTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:searchCredentialTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.templates.v1.CredentialTemplates.Search") }}

### Advanced Search

The Search endpoint supports SQL queries through the `query` parameter.

This allows for arbitrary query predicates, as well as more advanced functionality -- such as modifying the output format.

#### Schema

Any table name may be used in your query (we use `c` here) -- it doesn't matter what it is.


| Name        | Type   | Description                                                                  |
| ----------- | ------ | ---------------------------------------------------------------------------- |
| id          | string | Corresponds to the `id` returned when template was created                   |
| type        | string | Always `VerifiableCredential`                                                |
| ecosystemId | string | ID of ecosystem in which template resides                                    |
| createdBy   | string | ID of account which defined the template                                     |
| name        | string | Name provided during template creation                                       |
| schemaUri   | string | HTTPS URL pointing to JSON Schema generated by Trinsic for this template     |
| contextUri  | string | HTTPS URL pointing to JSON-LD Context generated by Trinsic for this template |
| version     | int    | Version of template; increments whenever template is modified.               |
| fields      | object | JSON Object representing the template's fields                               |


Note that `fields` is an object, not a string; thus, any of its sub-fields may be queried against.

!!! info "More Info"

    This endpoint works very similarly to querying Wallet items; please see [Wallet Service > Search](/reference/services/wallet-service/#advanced-search) for more information.


