Identifiers are necessary to assign to each member of an ecosystem. Identity wallets manage identifiers on behalf of the holder(s) that control(s) the wallet. At Trinsic we use “Decentralized identifiers” or “DIDs,” which are globally unique, cryptographically verifiable URIs that are not bound to a centralized registry. DIDs provide a way to separate a public identifier from public keys, which is an important requirement for resilient identity systems.

Trinsic aims to abstract the complexities of interacting with DIDs. So while this section provides a brief explanation of DIDs, you do not need to fully grok them in order to build an identity product using Trinsic.

## Working with DIDs on Trinsic

Trinsic abstracts away the complexities of working with DIDs and cryptography, allowing you to focus on building a great identity product.

When a [wallet](https://docs-v2.trinsic.id/learn/concepts/wallets) is created, Trinsic generates a cryptographic keypair and securely stores it; this keypair is what will be used to sign credentials issued by the wallet. Additionally, Trinsic generates a `did:key` DID, which encodes the public information necessary to verify credentials issued by the wallet; this is the `public_did` field of the wallet object.

### Upgrading wallet DIDs

Providers of an ecosystem may *upgrade* a wallet's DID from `did:key` to any of the supported methods via [a simple API call](https://docs-v2.trinsic.id/reference/services/provider-service/#upgrade-wallet-did). Trinsic handles the complexities of this process for you.

Many DID methods are based on distributed ledgers (commonly known as "blockchains"), so the following should be kept in mind when registering a DID which uses a ledger:

**Data Protection & Compliance**

When writing an identifier to a public, permanent resource like a blockchain, it’s important to be extremely sure that you want that data to remain there forever. Permanence is hard to reconcile with “right to be forgotten”, and the jury is out on whether a person’s identifiers are considered personal data (literally). For these reasons, we advise considering the legal and personal implications of upgrading DIDs controlled by wallets whose holders are natural persons (in other words, DIDs whose subjects are persons).

**Fees**

Depending on the DID method chosen, registering a DID may incur a transaction fee, which is different for each ledger. **You are responsible for these fees.**

Documentation of these fees will be visible through our Dashboard and on our pricing page. You should keep this in mind before you programmatically upgrade DIDs through the API.

**Resolution**

Newly-registered DIDs may not be immediately resolvable, as distributed ledgers typically cannot provide instantaneous writes.

Issuance and verification of credentials against these DIDs will still function during this time, but only within the Trinsic platform.

### Supported DID methods

**More to come**

We plan to grow the list of supported DID methods as we move towards general availability of this feature.

| Method | Type | Notes |
| --- | --- | --- |
| did:key | Static | The default DID method for all wallets. Encodes key information directly in the DID; as a result, key rotation requires a new DID. |
| did:ion | Distributed Ledger | ION is a sidetree/Layer-2 protocol on top of the Bitcoin blockchain. Registering a DID will incur charges if on the mainnet network. |

## How DIDs work

DIDs serve as identifiers of subjects (most commonly individuals); a DID can be *resolved* to retrieve a *DID Document*, which contains information about how to interact with the subject (chiefly, cryptographic keys associated with the subject which can be used for verifiable communication).

DIDs always start with the `did:` prefix, but can take many forms. For example, `did:key:z6MkhaXgBZDvotDkL5257faiztiGiC2QtKLGpbnnEGta2doK` and `did:ion:test:EiAmZrbqZvA81YBazg3h3ucL6yIYh_OTxaj_W_ggeEEOYA` are both valid DIDs, but have different prefixes. In this example, `key` and `ion` are the *DID methods* of these DIDs, respectively. Other DID Methods include `did:web` and `did:indy`.

The method of a DID determines how to resolve it to retrieve its associated DID Document; there is no common strategy. For example, resolving a `did:ion` DID requires interacting with the Bitcoin blockchain, whereas `did:key` encodes the DID Document information (the public keys) directly into the URI enabling local resolution.

To sum up, the goal of DIDs is to provide a decentralized, method-agnostic way to bundle an identifier together with information about how to communicate and interact securely with the subject attached to said identifier.

### How DIDs are used with Verifiable Credentials

DIDs are an important component of the Verifiable Credential spec; they enable decentralized issuance and verification of credentials.

When someone (or something) issues a credential, they set the `issuer` field of the credential to their own DID. They then generate (or "sign") a cryptographic proof against the contents of the credential, using their own private key, and store this in the `proof` field of the credential. Critically, the public key associated with the signing private key is stored in the issuer's DID Document.

To verify a credential, the verifier first looks at the DID contained in the `issuer` field, and resolves it to fetch its associated DID Document. Then, they verify that the `proof` field is cryptographically valid and was generated using one of the keys in the DID Document.

This scheme enables verifiers to guarantee the following cryptographically:

1. The `issuer` claimed by the credential is indeed the entity which signed the credential.
2. The credential has not been modified or tampered with; all of its data is attested to by the issuer.

Using this scheme, one must only maintain a list of issuer DIDs which are trusted to issue credentials of a certain type (this might be accomplished by a [Trust Registry](https://docs-v2.trinsic.id/learn/concepts/trust-registries)); the cryptographic guarantees of DIDs and VCs take care of the rest.
