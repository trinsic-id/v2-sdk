# DIDs

## Overview

!!! tip "Trinsic handles this for you"
    This overview section provides a brief explanation of DIDs and DID Documents, as well as links to dive deeper if you wish.

    Trinsic handles everything relating to DIDs for you; you don't need to fully understand them in order to build an identity product with Trinsic. 

    If you just want to know how to work with DIDs on Trinsic, [click here](#working-with-dids-on-trinsic) to skip ahead.

[DIDs](https://w3c.github.io/did-core/){target=_blank} ("Decentralized Identifiers"), a [W3C Recommendation](https://www.w3.org/2022/07/pressrelease-did-rec.html.en){target=_blank}, are URIs which enable decentralized digital identity.

DIDs serve as identifiers of subjects (most commonly individuals); a DID can be _resolved_ to retrieve a _DID Document_, which contains information about how to interact with the subject (chiefly, cryptographic keys associated with the subject which can be used for verifiable communication). 

DIDs always start with the `did:` prefix, but can take many forms. For example, `did:key:z6MkhaXgBZDvotDkL5257faiztiGiC2QtKLGpbnnEGta2doK`{style="font-size:0.7em"} and `did:ion:test:EiAmZrbqZvA81YBazg3h3ucL6yIYh_OTxaj_W_ggeEEOYA`{style="font-size:0.7em"} are both valid DIDs, but have different prefixes. In this example, `key` and `ion` are the _DID Methods_ of these DIDs, respectively. Some other DID Methods are `did:web` and `did:indy`.

The method of a DID determines how to resolve it to retrieve its associated DID Document; there is no common strategy. For example, resolving a `did:ion` DID requires interacting with the Bitcoin blockchain, whereas `did:key` encodes the DID Document information (the public keys) directly into the URI -- the resolution process can be performed fully locally.

To sum up, the goal of DIDs is to provide a decentralized, method-agnostic way to bundle an identifier together with information about how to communicate and interact securely with the subject attached to said identifier. 

### How DIDs are used with Verifiable Credentials

DIDs are a core component of the Verifiable Credential spec; they enable decentralized issuance and verification of credentials.

When someone (or something) issues a credential, they set the `issuer` field of the credential to their own DID. They then generate (or "sign") a cryptographic proof against the contents of the credential, using their own private key, and store this in the `proof` field of the credential. Critically, the public key associated with the signing private key is stored in the issuer's DID Document.

To verify a credential, the verifier first looks at the DID contained in the `issuer` field, and resolves it to fetch its associated DID Document. Then, they verify that the `proof` field is cryptographically valid, and was generated using one of the keys in the DID Document.

This scheme enables verifiers to guarantee the following cryptographically:

1. The `issuer` claimed by the credential is indeed the entity which signed the credential.
2. The credential has not been modified or tampered with; all of its data is attested to by the issuer.

Using this scheme, one must only maintain a list of issuer DIDs which are trusted to issue credentials of a certain type (this might be accomplished by a [Trust Registry](/learn/concepts/trust-registries)); the cryptographic guarantees of DIDs and VCs take care of the rest. 

## Working with DIDs on Trinsic

Trinsic abstracts away the complexities of working with DIDs and cryptography, allowing you to focus on building a great identity product.

When a [wallet](/learn/platform/wallets) is created, Trinsic generates a cryptographic keypair and securely stores it; this keypair is what will be used to sign credentials issued by the wallet. Additionally, Trinsic generates a `did:key` DID, which encodes the public information necessary to verify credentials issued by the wallet; this is the `public_did` field of the wallet object.

### Upgrading Wallet DIDs

!!! warning "Restricted API"
    Upgrading wallet DIDs is currently restricted; if you would like to enable DID upgrades for your ecosystem, please contact Trinsic.

Providers of an ecosystem may _upgrade_ a wallet's DID from `did:key` to any of the supported methods via [a simple API call](/reference/services/provider-service/#upgrade-wallet-did). Trinsic handles the complexities of this process for you.

Many DID methods are based on distributed ledgers (commonly known as "blockchains"), so the following should be kept in mind when registering a DID which uses a ledger:

- Depending on the DID method chosen, registering a DID may incur a ledger write fee, which is different for each ledger. **You are responsible for these fees.**
    - We will provide clear documentation regarding these fees before this feature becomes generally available.
- Newly-registered DIDs may not be immediately resolvable, as distributed ledgers typically cannot provide instantaneous writes.
    - Issuance and verification of credentials against these DIDs will still function during this time, but only within the Trinsic platform.

### Supported DID Methods

!!! info "More to Come"
    We plan to grow the list of supported DID Methods as we move towards general availability of this feature.

| Method    | Type               | Notes                                                                                                                                                                                    |
| --------- | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `did:key` | Static             | The default DID Method for all wallets. Encodes key information directly in the DID; as a result, key rotation requires a new DID.                                                       |
| `did:ion` | Distributed Ledger | [ION](https://identity.foundation/ion/){target=_blank} is a sidetree/Layer-2 protocol on top of the Bitcoin blockchain. Registering a DID will incur charges if on the `mainnet` network. |