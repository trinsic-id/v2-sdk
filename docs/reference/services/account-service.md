# Account Service

The Account Service allows you to create and sign in to accounts.

!!! danger "Deprecated"

    This API has been deprecated; use the [Wallet API](../wallet-service) instead.

---

## Login

!!! danger "Deprecated"

    This endpoint has been deprecated; use the [Wallet API](../wallet-service) instead:

    - For wallet creation, use [CreateWallet](../wallet-service#create-wallet)
    - To login to an existing wallet, use [Authenticate](../wallet-service#authenticate)
      - This requires that an external identity (such as an email or phone number) has been added to the wallet via [AddExternalIdentity](../wallet-service#add-external-identity), or (if the wallet was created using the deprecated `Login` API) during wallet creation.

Attempts the first step of the login process for the specified account, creating it if it does not already exist.

Trinsic will response with a `challenge`, and send an authentication code to the account's email address.

The authentication code must be passed along with `challenge` to [LoginConfirm](#login-confirm) to finalize the login.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic account login --email "bob@example.com" --ecosystem "<ecosystem id or name>"
        ```


{{ proto_method_tabs("services.account.v1.Account.Login") }}

---

## Login Confirm

!!! danger "Deprecated"

    This endpoint has been deprecated; use the [Wallet API](../wallet-service) instead

Finalizes the login process.

You must pass `challenge` as it was received in response to [Login](#login), along with the confirmation code that was sent in an email.

Our SDK will take care of hashing the confirmation code for you.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic account login --email "bob@example.com"
        ```


{{ proto_method_tabs("services.account.v1.Account.LoginConfirm") }}

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


{{ proto_method_tabs("services.account.v1.Account.Info") }}

!!! note
    This call returns the information associated with the authentication token used to create the request; therefore, it is not possible to pass a different authentication token to this call. Otherwise, Trinsic's [zero-knowledge proof](/learn/platform/security) authentication scheme would be violated.

    When using the CLI, this will return information for the account most recently logged in to.

    When using the SDK, this will return information for the authentication token stored in the `AccountService` instance's `ServiceOptions.AuthToken` field, which will be the account most recently logged in to, unless you have manually set this value yourself.
