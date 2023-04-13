# Migration from Account API to Wallet API

This document outlines the code updates you will need to do to migrate from the deprecated Account API to the Wallet API methods. We decided to deprecate the Account API
as we felt it didn't warrant it's own API category and mostly created confusion. All methods available in the Account API are also available in the Wallet API, though some naming and parameters have changed.

## `Account.LoginAnonymous` moved to `Wallet.CreateWallet`

This method is responsble for creating a wallet and returning an auth token that can be used to access this wallet. The updated method also returns all wallet information, such as `wallet_id`, `public_did`, etc.

Usage: [Wallet API / Create Wallet](/reference/services/wallet-service/#create-wallet)

## `Account.Login` and `Account.LoginConfirm` core design changed

The purpose of the old Login/LoginConfirm methods was to obtain an auth token for a user using an email as external identity method. If a wallet was not found for this email, one would be automatically created. This design introduced some confusion on when clients should use this method. We decided that it's better to be explicit
about the wallet creation process and associating it with an external identity, as opposed to having an API that silently creates a wallet. T
