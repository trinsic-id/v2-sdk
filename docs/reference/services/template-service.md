
# Credential Template Service

The Credential Template Service allows you to manage and search [Credential Templates](/learn/concepts/templates).


---

## Create Credential Template

Creates a new credential template.

The {{ field_ref("CreateCredentialTemplateRequest", "name") }} of a credential template must be unique within your ecosystem, and cannot be changed -- it is used to derive the URI of the template itself.

The {{ field_ref("CreateCredentialTemplateRequest", "title") }} and {{ field_ref("CreateCredentialTemplateRequest", "description") }} parameters (for the credential template itself, as well as for any of its {{ field_ref("CreateCredentialTemplateRequest", "fields[key].title", "fields") }}) should be human-readable strings. They should describe the credentials issued by the template, not the template itself (for example, a good title for a medical license template would simply be "Medical License", not "Medical License Template").

{{ field_ref("CreateCredentialTemplateRequest", "field_ordering") }} may be used to specify the order in which fields are rendered when displaying a credential, and to categorize fields into logical sections. This is used for display only, and has no bearing on working with credentials as an issuer or verifier.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic template create --name 'My Credential' --fields-data '{\"field1\":{}}'
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [CreateTemplate](../../../web/test/CredentialTemplates.test.ts) inside_block:createTemplate
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

## Update Credential Template

Updates a credential template's display metadata, such as its human-readable title/description.

This call cannot be used to update credential templates in a way that might invalidate previously-issued credentials: fields cannot be added, removed, or renamed, but their {{ field_ref("UpdateCredentialTemplateRequest", "title" ) }} and {{ field_ref("UpdateCredentialTemplateRequest", "description" )}} properties may be updated.

In order to leave a property unchanged (for example, if you wish to change {{ field_ref("UpdateCredentialTemplateRequest", "description" )}} but not {{ field_ref("UpdateCredentialTemplateRequest", "title" ) }}), simply leave it unspecified (_don't_ set it to an empty string/object). This applies to fields as well: any field not specified in {{ field_ref("UpdateCredentialTemplateRequest", "fields" ) }} will remain unchanged.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        Not yet supported
        ```

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [UpdateTemplate](../../../web/test/CredentialTemplates.test.ts) inside_block:updateTemplate
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

## Get Credential Template

Fetches a credential template definition by {{ field_ref("GetCredentialTemplateRequest", "id" ) }}.

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

## Delete Credential Template

Deletes a credential template by {{ field_ref("DeleteCredentialTemplateRequest", "id" ) }}.

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

## Search Credential Templates

Searches all credential templates defined in the current ecosystem.

If no {{ field_ref("SearchCredentialTemplatesRequest", "query") }} is specified, this call by default returns the first 100 templates.

If more results are available than can be returned in a single call, the {{ field_ref("SearchCredentialTemplatesResponse", "continuation_token") }} field in the response will be non-empty; {{ field_ref("SearchCredentialTemplatesRequest", "continuation_token", "pass it back", false) }} in a subsequent request to retrieve the next page.

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
| id          | string | Corresponds to the `id` returned when credential template was created        |
| type        | string | Always `VerifiableCredential`                                                |
| ecosystemId | string | ID of ecosystem in which credential template resides                         |
| createdBy   | string | ID of account which defined the credential template                          |
| name        | string | Name provided during credential template creation                            |
| schemaUri   | string | HTTPS URL pointing to JSON Schema generated by Trinsic for this template     |
| contextUri  | string | HTTPS URL pointing to JSON-LD Context generated by Trinsic for this template |
| version     | int    | Version of template; increments whenever template is modified.               |
| fields      | object | JSON Object representing the credential template's fields                    |


Note that `fields` is an object, not a string; thus, any of its sub-fields may be queried against.

!!! info "More Info"

    This endpoint works very similarly to querying Wallet items; please see [Wallet Service > Search](/reference/services/wallet-service/#advanced-search) for more information.


