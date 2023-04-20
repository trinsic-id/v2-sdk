---
hide:
  - toc
---

# Migration from Account API to Wallet API

This document outlines the code updates you will need to do to migrate from the deprecated Account API to the Wallet API methods. We decided to deprecate the Account API
as we felt it didn't warrant it's own API category and mostly created confusion. All methods available in the Account API are also available in the Wallet API, though some naming and parameters have changed.

## `Account.LoginAnonymous` moved to `Wallet.CreateWallet`

This method is responsble for creating a wallet and returning an auth token that can be used to access this wallet. The updated method also returns all wallet information, such as `wallet_id`, `public_did`, etc.

API Reference: [Wallet API / Create Wallet](/reference/services/wallet-service/#create-wallet)

## `Account.Login` and `Account.LoginConfirm` core design changes

The purpose of the old `Login/LoginConfirm` methods was to obtain an auth token for an existing wallet using an email as external identity method. If a wallet was not found for this email, one would be automatically created. This design introduced some confusion on when clients should use this method. We decided that it's better to be explicit about the wallet creation process and separate associating it with an external identity, as opposed to having an API that silently creates a wallet.

Under the new API, there is an explicit process for each step

- Wallet creation using `CreateWallet`
- Adding external identity using `AddExternalIdentity` (2-step process with `Init` and `Confirm` of OTP token)
- Authentication to existing wallet using `Authenticate` (2-step process with `Init` and `Confirm` of OTP token)

API References:

- [Wallet API / Add External Identity](/reference/services/wallet-service/#add-external-identity)
- [Wallet API / Authenticate](/reference/services/wallet-service/#authenticate)

### Create Wallet

This endpoint will create new wallet and return an auth token for accessing the wallet. This endpoint can be called from the client side and the token will be in control of the user.
If your integration operates with custodial wallets on behalf of users, you can call this endpoint from your server side. You should ensure that tokens are stored securely.

``` mermaid
sequenceDiagram
  autonumber
  Client->>API: Request: CreateWallet { Ecosystem="example" }
  API->>Client: Response: { AuthToken, WalletID, PublicDID }
  Client->>Client: Save [AuthToken] securely
  Note over Client: [AuthToken] should be stored in a<br/>secure enclave, such as keychain, <br/>secure browser storage, cloud vaults, etc.
```

### Add External Identity

This endpoint will associate external identity, such as email or phone number, to an existing wallet and allow the user to obtain an auth token to the wallet they control.
If your integration operates with custodial wallets on behalf of users, you will likely not need to use this endpoint.

``` mermaid
sequenceDiagram
  autonumber
  Client->>Client: Load [AuthToken]
  Client->>API: Request: AddExternalIdentityInit { Identity="user@example.com" }
  API->>Client: Response: { Challenge }
  Note over Client: Client checks email or phone number<br/>for OTP confirmation code
  Client->>API: Request: AddExternalIdentityConfirm { Challenge, Response(OTP) }
  API->>Client: Response: OK
```

### Authenticate

Authenticate and return an auth token for an existing wallet using one of the associated external identities.
This endpoint requires that the wallet user has previously added at least one external identity using the above endpoints.

``` mermaid
sequenceDiagram
  autonumber
  Client->>API: Request: AuthenticateInit { Identity="user@example.com" }
  API->>Client: Response: { Challenge }
  Note over Client: Client checks email or phone number<br/>for OTP confirmation code
  Client->>API: Request: AuthenticateConfirm { Challenge, Response(OTP) }
  API->>Client: Response: { AuthToken, WalletID, PublicDID }
  Client->>Client: Save [AuthToken] securely
  Note over Client: [AuthToken] should be stored in a<br/>secure enclave, such as keychain, <br/>secure browser storage, cloud vaults, etc.
```

## `Account.Info` moved to `Wallet.GetMyInfo` and `Wallet.GetWalletInfo`

The new API contains two methods for getting the wallet information

- `Wallet.GetMyInfo` — takes no parameters; this endpoint can be called by the wallet owner to get the information about their wallet (such as walletId, public DID, etc)
- `Wallet.GetWalletInfo` — takes `walletId` parameter; this endpoint can be called by the provider to get wallet information for the specified walletId. This endpoint requires auth token with provider level privileges. You can obtain this token from the [Trinsic Dashboard <small>:material-open-in-new:</small>](https://dashboard.trinsic.id){target=_blank}

---

## Need help?

Please [reach out](/support) if you have any questions regarding the migration to the new endpoint; we're happy to help make your transition easy.
