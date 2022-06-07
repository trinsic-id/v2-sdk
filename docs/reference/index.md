# Overview

If you are ready to begin integrating the SDK, make sure you have an SDK installed and configured. You can install each SDK by following the instructions in each page under **Build** in the sidebar.

When using the SDK, you can pass parameters to the default service constructors and use the provided methods to set different active profiles.

## Authorization

See our [security](../learn/security.md) section for more information on how we have implemented wallet authentication and authorization.
<!-- ### Profile Data Format -->

## SDK Services
Our SDK is broken down into the following services:

- [Account Service](./services/account-service.md)
- [Credential Service](./services/credential-service.md)
- [Provider Service](./services/provider-service.md)
- [Template Service](./services/template-service.md)
- [Trust Registry Service](./services/trust-registry-service.md)
- [Wallet Service](./services/wallet-service.md)

 
### Using an SDK Service

If you are using one of the Trinsic SDKs, you will need to create an instance of a service in order to use it.

=== "TypeScript"
    ```typescript
    const accountService = new AccountService();
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../dotnet/Tests/Tests.cs) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../python/tests/test_trinsic_services.py) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../go/services/account_service_test.go) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->

=== "Ruby"
    ```ruby
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_prod_server)
    ```

All service constructors also accept a [ServiceOptions](../proto/index.md#serviceoptions) object as an argument, allowing you to specify a default ecosystem and other configuration properties.

{{ proto_message('sdk.options.v1.ServiceOptions') }}

The exact structure of this object will depend on the language you are working with. You can always rely on your editor's intellisense when in doubt. 
