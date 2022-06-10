# Account Service

The Account Service allows you to create and sign in to accounts.

!!! question "Wallets vs Accounts"
    Wallets and accounts are related and often interchangeable -- each account has an associated wallet, and operations on a wallet are performed using an account's access token.

    Every account has exactly one wallet. 

!!! info "Authentication Tokens"
    When you create or sign in to an account, the response is an authentication token string.

    This string is an encoded form of your account profile, as well as an access key to perform calls using the account.

    These are effectively API keys; they should be kept safe and never published.

---

## Sign In

Sign in to an existing account, or create a new one.

If no account details are passed to this method, an anonymous account will be created.

{{ proto_sample_start() }}
    === "Trinsic CLI" 
        ```bash
        trinsic account login --email <PROFILE_EMAIL> --name <PROFILE_NAME>
        ```

    === "TypeScript"
        ```typescript
        const allison = (await accountService.signIn()).getProfile();
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Ruby"
        ```ruby
        allison = account_service.sign_in(nil).profile
        ```

{{ proto_method_tabs("services.account.v1.Account.SignIn") }}

This operation, if successful, returns an authentication token string.

!!! warning "Protected Authentication Tokens"
    If you are attempting to login to a non-anonymous account (by specifying an email address or phone number), the authentication token returned will be _protected_, and cannot be used until it has been unprotected.

    Trinsic will have sent a security code to the account's email address or phone number; this security code must be used with the [Unprotect](#unprotect-account-profile) call to receive a usable authentication token.

    In the future, we will provide an SDK call to determine if an authentication token is protected.


---

## Get Account Info

Returns the account information (name, email address, phone number, etc.) used to create the currently-active account profile.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic account info
        ```

    === "TypeScript"
        ```typescript
        const info = await accountService.info();
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:accountServiceGetInfo
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:accountServiceGetInfo
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:getInfo
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:getInfo
        ```
        <!--/codeinclude-->

    === "Ruby"
        ```ruby
        info = account_service.get_info()
        ```
{{ proto_method_tabs("services.account.v1.Account.Info") }}

!!! note
    This call returns the information associated with the authentication token used to create the request; therefore, it is not possible to pass a different authentication token to this call. Otherwise, Trinsic's [zero-knowledge proof](/learn/security) authentication scheme would be violated.

    When using the CLI, this will return information for the account most recently logged in to.

    When using the SDK, this will return information for the authentication token stored in the `AccountService` instance's `ServiceOptions.AuthToken` field, which will be the account most recently logged in to, unless you have manually set this value yourself.

---

## Protect Account Profile
Protects the specified account profile with a security code. It is not possible to execute this call using the CLI.

=== "TypeScript"
    ```typescript
    const protectedProfile = await accountService.protect(accountProfile, "1234");
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Ruby"
    ```ruby
    protected_profile = account_service.protect(account_profile, '1234')
    ```

!!! info
    In this context, "protection" refers to a cryptographic operation on the authorization token for an account.

    _Protecting_ an account profile with code `c` returns a new access token which is unusable until it is _unprotected_ with the same code `c`. It is not possible to reverse the protection process without the original protection code.

    You will receive a protected account profile from Trinsic if you attempt to sign in to an account via email, SMS, or any other method which requires authentication. Trinsic will send a security code to the email or phone number associated with the account, which can be used to unprotect the account profile.

    Specifically, Trinsic is using Oberon to handle access tokens; protection and unprotection is handled using the blinding/unblinding features of Oberon.

---

## Unprotect Account Profile
Unprotects the specified account profile using the given code. It is not possible to execute this call using the CLI.

The profile must have been previously protected using the same code that is being used to unprotect it. Profiles can be protected using any arbitrary code via the [Protect](#protect-account-profile) method.

Most commonly, this method is used on a protected profile received from the [Sign In](#sign-in) method. The code to unprotect it will have been sent to the account owner via email or SMS.

=== "TypeScript"
    ```typescript
    const accountProfile = await accountService.unprotect(protectedProfile, "1234");
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Ruby"
    ```ruby
    account_profile = account_service.unprotect(protected_profile, '1234')
    ```

---

## Authorize Webhook

Authorizes the ecosystem provider to receive webhooks pertaining to this wallet.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        > Sample coming soon

    === "TypeScript"
        > Sample coming soon

    === "C#"
        > Sample coming soon

    === "Python"
        > Sample coming soon

    === "Go"
        > Sample coming soon

    === "Java"
        > Sample coming soon

{{ proto_method_tabs("services.account.v1.Account.AuthorizeWebhook") }}