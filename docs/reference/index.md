# Overview

This section serves as the reference for the Trinsic API, which can be accessed using any of our [SDKs](/cli/).

## Authentication
### Auth Tokens
Authentication with the Trinsic platform uses auth tokens, which are strings that operate similarly to API keys.

Unlike API keys, however, Trinsic utilizes [zero-knowledge proofs](/learn/platform/security) to sign SDK calls using an auth token, without ever transmitting the auth token itself down the wire. This provides increased security compared to API keys, while being more convenient than other auth schemes, such as public/private tokens.

### Custom Protection of Auth Tokens

We provide helper methods to [protect](/reference/services/account-service#protect) auth tokens -- enabling you to perform custom security operations. An auth token, once protected with a code, is unusable until unprotected with that same code. Protection and unprotection are performed entirely on-device.

### Using Auth Tokens in the SDK

Whenever you perform an SDK call which returns an auth token (signing in to an account, or creating an ecosystem), our SDKs will automatically store the auth token in memory and use it for subsequent calls.

You can also manually set the auth token used by the SDK (such as when loading an auth token from storage):

=== "Trinsic CLI" 
    ```bash
    trinsic config --auth-token {AUTH_TOKEN}
    ```

=== "TypeScript"
    <!--codeinclude--> 
    ```typescript
    [SetAuthTokenSample](../../web/test/AccountService.test.ts) inside_block:setAuthTokenSample
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [SetAuthTokenSample](../../dotnet/Tests/Tests.cs) inside_block:setAuthTokenSample
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [SetAuthTokenSample](../../python/samples/account_demo.py) inside_block:setAuthTokenSample
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [SetAuthTokenSample](../../go/services/account_service_test.go) inside_block:setAuthTokenSample
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [SetAuthTokenSample](../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:setAuthTokenSample
    ```
    <!--/codeinclude-->


## Services
Our SDK is broken down into the following logical services, each of which is accessible through a single `TrinsicService` instance:

- [Account Service](./services/account-service.md)
- [Credential Service](./services/credential-service.md)
- [Provider Service](./services/provider-service.md)
- [Template Service](./services/template-service.md)
- [Trust Registry Service](./services/trust-registry-service.md)
- [Wallet Service](./services/wallet-service.md)

 
### Using an SDK Service

If you are using one of the Trinsic SDKs, you will need to create an instance of a `TrinsicService` in order to use it.

=== "TypeScript"
    ```typescript
    const trinsic = new TrinsicService();
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../dotnet/Tests/Tests.cs) inside_block:trinsicServiceConstructor
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../python/samples/vaccine_demo.py) inside_block:trinsicServiceConstructor
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

The constructor accepts a [ServiceOptions](../proto/index.md#serviceoptions) object as an argument, allowing you to specify a default ecosystem and other configuration properties:

{{ proto_message('sdk.options.v1.ServiceOptions') }}

The exact structure of this object will depend on the language you are working with. You can always rely on your editor's intellisense when in doubt. 
