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

## Service Creation

{{ proto_sample_create_service("services.account.v1.Account") }}

---

## Login / LoginConfirm

Attempts the first step of the login process for the specified account, creating it if it does not already exist.
Trinsic will respond with a `challenge`, and send an authentication code to the account's email address.
The authentication code must be passed along with `challenge` to `LoginConfirm` to finalize the login.
Our SDK will take care of hashing the confirmation code for you.

{{ proto_sample_start("services.account.v1.Account.Login") }}
{{ proto_sample_code("services.account.v1.Account.Login") }}
{{ proto_method_tabs("services.account.v1.Account.Login") }}

!!! tip "Anonymous Login"
    Anonymous accounts are accounts which are not tied to any email or phone number, and do not require any authentication. They are typically used for testing and prototypes.

    To create an anonymous account with an SDK, use the `TrinsicService.LoginAnonymous()` method.

    To create an anonymous account with the CLI, simply leave the `email` parameter unspecified.

---

## Get Account Info

Returns the account information (name, email address, phone number, etc.) used to create the currently-active account profile.

{{ proto_sample_start("services.account.v1.Account.Info") }}
{{ proto_sample_code("services.account.v1.Account.Info") }}
{{ proto_method_tabs("services.account.v1.Account.Info") }}

!!! note
    This call returns the information associated with the authentication token used to create the request; therefore, it is not possible to pass a different authentication token to this call. Otherwise, Trinsic's [zero-knowledge proof](/learn/platform/security) authentication scheme would be violated.

    When using the CLI, this will return information for the account most recently logged in to.

    When using the SDK, this will return information for the authentication token stored in the `AccountService` instance's `ServiceOptions.AuthToken` field, which will be the account most recently logged in to, unless you have manually set this value yourself.
