# What is Trinsic?

Trinsic provides a developer SDK so you can use verifiable credentials to build an ecosystem of credential exchange. The Trinsic SDK initially has two main modules. We’ve split it up for separation of concerns.

## Trinsic Core
Use Trinsic Core to sign, store, send, and verify any information. It's a more flexible version of encrypted chat. Anyone can install a wallet and begin communicating with anyone else

### Wallets
Credential wallets can be thought of like an email inbox. Wallets exist to send, receive and store credentials. Wallets can be hosted by anyone. We expect most people will want to use a wallet provider to host their wallet initially - in this case Trinsic. Each wallet can only be accessed by a set of keys stored on devices. These keys provide the proof of identity guarantees that make verifiable credentials so powerful.

Each wallet can be identified with one or more addresses. A wallet holder can choose to use the same ID across multiple scenarios, or use a different ID each time they interact with someone, depending on if they want them to be able to correlate me with another.

### Secure Communication

Trinsic Core can send any JSON payload securely. The SDK supports signing and encryption. 

- Existing ways of sending and verifying identity documents are often insecure and slow. In person we most often use paper. Online, we most often send identity document information by inputting it into a web form or sending it through email. This is all self-attested information - meaning that the verifier has no guarantee the information comes from a trusted source.

- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven’t been tampered or sniffed. They also allow the verifier to know the information comes directly for a specific trusted third party. Verifiers also know that the information was sent to them from a device known to be trusted by the individual. 

- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.
### Trinsic Ecosystem

***Coming soon.***

While credentials, passes, and wallets are the only thing an individual using your app might need to interact with, there are a few more concepts for the Provider. 

Verifiers and holders want a way to know the issuer is a legitimate entity they trust.

Holders want to know that the verifier they’re sending their information to is someone they trust.

**Credential Template** Describes a credential using its name and attribute types

**Pass Template** Describes a pass using the attribute types and queries on those attributes

**Trust Registry** Shows a list of authorized issuers and verifiers and the templates they’re authorized to use.

*[Verifiable Credential]: A credential is a set of attributes about someone or something. Typically, credentials are digital versions of physical licenses, cards, documents, or certificates, but they can represent all kinds of abstract data. Based on the W3C Verifiable Credential Data Model
