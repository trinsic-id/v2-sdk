
# Template Service

The Template Service allows you to manage and search [Credential Templates](/learn/concepts/templates).


---

## Create Template

Creates a new credential template.

The `name` of a template must be unique within your ecosystem, and cannot be changed -- it is used to derive the URI of the template itself.

The `title` and `description` parameters (for the template itself, as well as for any of its fields) should be human-readable strings. They should describe the credentials issued by the template, not the template itself (for example, a good title for a medical license template would simply be "Medical License", not "Medical License Template").

`field_ordering` may be used to specify the order in which fields are rendered when displaying a credential, and to categorize fields into logical sections. This is used for display only, and has no bearing on working with credentials as an issuer or verifier.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic template create --name 'My Credential' --fields-data '{\"field1\":{}}'
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateTemplate](../../../web/test/CredentialTemplates.spec.ts) inside_block:createTemplate
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

## Update Template

Updates a template's display metadata, such as its human-readable title/description.

This call cannot be used to update templates in a way that might invalidate previously-issued credentials: fields cannot be added, removed, or renamed, but their `title` and `description` properties may be updated.

In order to leave a property unchanged (for example, if you wish to change `description` but not `title`), simply leave it unspecified (_don't_ set it to an empty string/object). This applies to fields as well: any field not specified in `fields` will remain unchanged.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        Not yet supported
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [UpdateTemplate](../../../web/test/CredentialTemplates.spec.ts) inside_block:updateTemplate
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [UpdateTemplate](../../../dotnet/Tests/Tests.cs) inside_block:updateTemplate
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [UpdateTemplate](../../../python/samples/templates_demo.py) inside_block:updateTemplate
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [UpdateTemplate](../../../go/services/template_service_test.go) inside_block:updateTemplate
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [UpdateTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:updateTemplate
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.verifiablecredentials.templates.v1.CredentialTemplates.Update") }}

---

## Get Template

Fetches a template definition by `id`.

{{ proto_sample_start() }}

    === "Trinsic CLI"
        ```
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
        trinsic template delete --id <TEMPLATE_ID>
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


