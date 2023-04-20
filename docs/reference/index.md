# Overview

This section serves as the reference for the Trinsic API, which can be accessed using any of our [SDKs](/cli/).

## Authentication

Authentication with the Trinsic platform uses auth tokens, which are strings that operate similarly to API keys. You can get an auth token from the Dashboard.

### Using Auth Tokens in the SDK

Tokens are passed to the SDK during service instantiation as part of the `TrinsicOptions`.

## Services

Our SDK is broken down into the following logical APIs, each of which is accessible through a single `TrinsicService` instance:

- [Credential API](./services/credential-service.md)
- [Provider API](./services/provider-service.md)
- [Template API](./services/template-service.md)
- [Trust Registry API](./services/trust-registry-service.md)
- [Wallet API](./services/wallet-service.md)

### Using an SDK Service

If you are using one of the Trinsic SDKs, you will need to create an instance of a `TrinsicService` in order to use it.

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    const trinsic = new TrinsicService();
    ```
    <!--/codeinclude-->

=== "C#"
    ```csharp
    using Trinsic;

    var trinsic = new TrinsicService();
    // or instantiate with auth token
    // var trinsic = new TrinsicService(new TrinsicOptions { AuthToken = "<auth token>" });
    ```

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../python/samples/vaccine_demo.py) inside_block:trinsicServiceConstructor
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../go/services/file_management_service_test.go) inside_block:trinsicServiceConstructor
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:trinsicServiceConstructor
    ```
    <!--/codeinclude-->

The constructor accepts a [ServiceOptions](./proto/#sdk.options.v1.ServiceOptions) object as an argument, allowing you to specify a default ecosystem and other configuration properties:

{{ proto_message('sdk.options.v1.ServiceOptions') }}

The exact structure of this object will depend on the language you are working with. You can always rely on your editor's intellisense when in doubt.
