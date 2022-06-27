# Wallets
## What are wallets? 
A wallet is a secure place to store credentials. You can create a wallet using the Trinsic CLI or SDK and begin using it to store and share credentials. 
Wallet storage is scoped to a single person or subject. Each wallet has the capability to store and share credentials and proofs. A provider wallet can also define templates, create an ecosystem governance framework, and invite wallets to their ecosystem. 

Data wallets are meant to help individuals manage their digital credentials and cryptographic keys. 

### How to use wallets in your app
Instead of users creating accounts when they sign up for your app, users can instead connect their wallet. Because many users will be first-time wallet holders, if a user is signing up for your app and they don't have a wallet, we make it easy to create new wallets for your users with the `invite` command. Once you've invited a user to a wallet, they can enter the 2fa code to log in. 

You can give each of your end-users a wallet tied to their email address or phone number. 

### Wallet Architecture 
While wallets are hosted on our server, your client application must connect with the wallet (using device stored keys). Wallet communication is peer to peer. 

Wallets can be thought of a little like an email inbox. Each wallet can only be accessed by a set of keys stored on devices. 

## Commands
- Store Item
- Search
- Send
