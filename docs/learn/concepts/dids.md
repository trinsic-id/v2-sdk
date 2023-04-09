Identifiers are necessary to assign to each member of an ecosystem. Identity wallets manage identifiers on behalf of the holder(s) that control(s) the wallet. At Trinsic we use **Decentralized identifiers** or **DIDs**, which are globally unique, cryptographically verifiable URIs that are not bound to a centralized registry. DIDs provide a way to separate a public identifier from public keys, which is an important requirement for resilient identity systems.

Trinsic aims to abstract the complexities of interacting with DIDs. So while this section provides a brief explanation of DIDs, you do not need to fully grok them in order to build an identity product using Trinsic.

## How DIDs work

Examples of centralized identifiers include Student ID, ID number, driver's license number, username, email address, and user ID. These are considered *centralized* because they are provided by an authority, provider, or organization that gets between us and our ability to access certain services. The concept of identity being decentralized means that we become the owners of our data and access without relying on any intermediary organization or central issuing agency.

### DIDs are
- **Decentralized**;
- **Persistent**: They don’t require the continued operation of an underling organization, such as Gmail or the government;
- **Cryptographically verifiable**: You can prove control of the identifier cryptographically;
- **Resolvable**: You can discover metadata about the identifier.

### Structure
An example of DID is `did:example:12345abcdefghijklm`

`did` is the **Scheme** - all DIDs start with it

`example` is the **Method** - where the DID is stored (blockchain, digital wallet or anywhere else)

`12345abcdefghijklm` is the **Identifier** - the unique identifier of the DID

Examples of DID methods: `key` (public key is stored directly in the URI, enabling local resolution), `ion` (DID stored in the Bitcoin blockchain), `web`, `indy`.
The goal of DIDs is to provide a decentralized, method-agnostic way to bundle an **Identifier** together with information about how to communicate and interact securely with the subject attached to said identifier. When you resolve a DID using its DID **Method** and the **Identifier**, you retrieve a **DID Document**, which contains information about how to interact with the subject (chiefly, cryptographic keys associated with the subject which can be used for verifiable communication).

## Working with DIDs on Trinsic

Trinsic abstracts away the complexities of working with DIDs and cryptography, allowing you to focus on building a great identity product.

In an IDtech product, *issuers* and *holders* will have its own DID, which will be specified in the credentials issued/held by it. It signs a cryptographic proof against the contents of the credential (using its own private key) and stores this in the `proof` field of the credential. Critically, the public key associated with the signing private key is stored in the issuer's DID Document.

When verifying a credential, the verifier looks at the DID in the `issuer` field and resolves it to fetch its associated **DID Document**. Then, they verify that the `proof` field is cryptographically valid and was generated using one of the keys in the DID Document. This process guarantees that the issuer claimed by the credential is indeed the entity that signed the credential and that the credential has not been modified.

At Trinsic, when a [wallet](https://docs-v2.trinsic.id/learn/concepts/wallets) is created, we generate a cryptographic keypair and securely stores it; this keypair is what will be used to sign credentials issued by the wallet. Additionally, Trinsic generates a `did:key` DID, which encodes the public information necessary to verify credentials issued by the wallet; this is the `public_did` field of the wallet object.

When using this scheme, one must only maintain a list of issuer DIDs which are trusted to issue credentials of a certain type (this might be accomplished by a [Trust Registry](https://docs-v2.trinsic.id/learn/concepts/trust-registries)); the cryptographic guarantees of DIDs and VCs take care of the rest.

### Supported DID methods

**More to come**

We plan to grow the list of supported DID methods as we move towards general availability of this feature.

| Method   | Type               | Notes                                                                                                                                                                                                                       |
|----------|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| did:key  | Static             | The default DID method for all wallets. Encodes key information directly in the DID; as a result, key rotation requires a new DID.                                                                                          |
| did:ion  | Distributed Ledger | ION is a sidetree/Layer-2 protocol on top of the Bitcoin blockchain. Registering a DID will incur charges if on the mainnet network. [IonOptions](/reference/proto#services-provider-v1-IonOptions)                         |
| did:indy | Distributed Ledger | INDY is a Hyperledger Indy based protocol. Registering a DID will incur charges if on the main (non test) networks [IndyOptions](/reference/proto#services-provider-v1-IndyOptions)                                         |
| did:sov  | Distributed Ledger | SOV is the Sovrin Foundation implementation of Hyperledger Indy. It is available via `did:indy:sov` prefix Under *IndyOptions* above. Registering a DID will incur charges if on the main (non test / non builder) networks |

### Upgrading wallet DIDs

Providers of an ecosystem may *upgrade* a wallet's DID from `did:key` to any of the supported methods via [a simple API call](https://docs-v2.trinsic.id/reference/services/provider-service/#upgrade-wallet-did). Trinsic handles the complexities of this process for you.

Many DID methods are based on distributed ledgers (commonly known as "blockchains"), so the following should be kept in mind when registering a DID which uses a ledger:

**Data Protection & Compliance**

When writing an identifier to a public, permanent resource like a blockchain, it’s important to be extremely sure that you want that data to remain there forever. Permanence is hard to reconcile with “right to be forgotten”, and the jury is out on whether a person’s identifiers are considered personal data (literally).

For these reasons, it is ************************not advisable************************ to upgrade DIDs controlled by wallets whose holders are natural persons (in other words, DIDs whose subjects are persons). If doing so is important for your use case, we strongly recommend you work with legal counsel to understand all of the implications before doing so.

**Fees**

Depending on the DID method chosen, registering a DID may incur a transaction fee, which is different for each ledger. **You are responsible for these fees.** Documentation of these fees will be visible through our Dashboard and on our pricing page. You should keep this in mind before you programmatically upgrade DIDs through the API.

**Resolution**

Newly-registered DIDs may not be immediately resolvable, as distributed ledgers typically cannot provide instantaneous writes. Issuance and verification of credentials against these DIDs will still function during this time, but only within the Trinsic platform.