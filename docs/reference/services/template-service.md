
# Template Service

Credential Templates are JSON templates that help issuers save context when issuing credentials. 

When issuing a credential through Trinsic, it's as simple as adding the attributes to the credential template and then issuing it. 

These credential templates can be shared between issuers in an ecosystem. 

## Create Template

Creates a new credential template. Once created, the template is saved in JSON-LD format that can be used to issue and verify credentials.

=== "Trinsic CLI"
    ```bash
    trinsic template create --name 'My Credential' --fields-data '{\"field1\":{}}'
    ```

When using one of the SDKs, you must supply a [Create Credential Template Request](../proto/index.md#createcredentialtemplaterequest) object. This object follows the model below:

{{ proto_obj('CreateCredentialTemplateRequest') }}

Then you can supply it to SDK:

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [CreateTemplate](../../../web/test/CredentialTemplates.test.ts) inside_block:defineTemplate
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
    [CreateTemplate](../../../go/services/credentialtemplate_service_test.go) inside_block:createTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:createTemplate
    ```
    <!--/codeinclude-->

The response model is of type [Create Credential Template Response](../proto/index.md#createcredentialtemplateresponse):

{{ proto_obj('CreateCredentialTemplateResponse') }} 

## Get

Get the specified credential template through the supplied template/definition ID.

=== "Trinsic CLI"
    ```bash
    trinsic template get --id <TEMPLATE_ID>
    ```

When using one of the SDKs, you must supply a [Get Credential Template Request](../proto/index.md#getcredentialtemplaterequest) object. This object follows the model below:

{{ proto_obj('GetCredentialTemplateRequest') }}

Then you can supply it to SDK:

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
    [Issue From Template](../../../go/services/credentialtemplate_service_test.go) inside_block:getCredentialTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:getCredentialTemplate
    ```
    <!--/codeinclude-->

The response model is of type [Get Credential Template Response](../proto/index.md#getcredentialtemplateresponse):

{{ proto_obj('GetCredentialTemplateResponse') }}

## Search / Query

Querying template data in our SDK is enabled through the use of familiar SQL syntax. All data is stored in JSON-LD format, so it can be easily searched.
This approach allows us to give developers full control over how data is retrieved. In addition to customizable sorting, paging and filtering, developers have the ability to construct projections, combine result sets, and even run user-defined functions over their queries.

> This endpoint will support querying using [Verifiable Presentation Request Spec <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/vp-request-spec/){target=_blank}. This feature is still in development.

Template searching works very similarly to Wallet searching. Please refer to [Wallet Service > Search / Query](./wallet-service.md#search--query) for more information.

### Basic Search

The default query used in the commands below returns a first-100 wallet result set. The query is `SELECT * FROM c LIMIT 100`.

=== "Trinsic CLI"
    ```bash
    trinsic template search
    ```

### SQL Search

To pass custom query to the search function, use the query parameter or the available overload.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search \
        --query "SELECT * FROM c"
    ```

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
    [Issue From Template](../../../go/services/credentialtemplate_service_test.go) inside_block:searchCredentialTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:searchCredentialTemplate
    ```
    <!--/codeinclude-->

## Delete

Deletes a credential template.

=== "Trinsic CLI"
    ```bash
    trinsic tamplate delete --id <TEMPLATE_ID>
    ```

When using one of the SDKs, you must supply a [Delete Credential Template Request](../proto/index.md#deletecredentialtemplaterequest) object. This object follows the model below:

{{ proto_obj('DeleteCredentialTemplateRequest') }}

Then you can supply it to SDK:

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
    [Issue From Template](../../../go/services/credentialtemplate_service_test.go) inside_block:deleteCredentialTemplate
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [IssueFromTemplate](../../../java/src/test/java/trinsic/TemplatesDemo.java) inside_block:deleteCredentialTemplate
    ```
    <!--/codeinclude-->