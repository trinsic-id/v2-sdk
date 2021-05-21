# Introduction

Organizations spend huge amounts of time and money to manually verify information contained within paper and pdf documents. This verification process is slow and prone to misuse. Long security lines, repetitive paper forms, and increasing identity theft are a burden for individuals and organizations alike. 

Using the latest innovations in authentication standards and networking protocols, Trinsic gives developers the tools to transform credentials, licenses, passes, and certificates to a format that can be exchanged digitally and verified instantly by anyone. This format is called a Verifiable Credential, and has recently been standardized by the W3C.

Verifiable Credentials come with some new superpowers. Unlike a paper document or html form, when information within a verifiable credential is shared, it can instantly be proven to have come from a trusted source. Thanks to the flexibility of its digital nature, verifiable credentials can be easily shared with the minimum information needed for a use case. Finally, they require no centralized authority or proprietary technology to use - verifiable credentials are built on interoperable standards  designed to be open, privacy-preserving, and distributed like the internet itself.

Hundreds of organizations of all sizes and industries use Trinsic’s infrastructure and tools to instantly verify information about individuals with technology instead of paper.

## What is Trinsic?

Trinsic provides a developer SDK so you can easily use verifiable credentials to quickly build an ecosystem of credential exchange. The Trinsic SDK initially has two main modules. We’ve split it up for separation of concerns. Each of these terms 

- Core - Send and receive encrypted messages between devices.
- Ecosystems - Manage Credential Templates, Pass Templates and Registries.

## Core

Trinsic Core can be used to send and store encrypted messages between two credential wallets. 

### Wallets
//todo
Credential wallets can be thought of like an email inbox. They exist to receive and store credentials. There is a wallet hosted by a wallet provider - in this case Trinsic. Each wallet can be accessed by a set of keys stored on devices. These keys provide signing and encryption capabilities. storage system encrypted and controlled by keys located on one or more devices. Storage is provided as a hosted service for convenience But keys are stored on the edge. Trinsic has no ability to view inside wallets.

Each wallet can be identified with multiple addresses. This gives some really helpful capabilities. If I want to interact with three different people, I can choose to give them the same ID or a different ID each, depending on if I want them to be able to correlate me with another.

### Secure Communication

Trinsic Core has the ability to send any payload securely. The SDK supports signing, encryption, proof generation, and encryption. All of these messages

When a message is signed, it can then be verified to not have been tampered with. 

When it is packed, it can be sent along an insecure channel without a third party reading its contents. 

When it's unpacked 

- Existing mediums of interoperable information exchange are insecure and slow. In person it’s paper. online it’s the web form or sometimes email. It’s all self-attested information. We’ve developed a secure messaging protocol that works in any context.
- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven’t been tampered or sniffed.
- It’s the power of PGP and (more recently) signal with much greater interoperability and cross platform transport mechanisms. Let’s you send a message to someone online, and have them generate a proof of that message and have it be verified offline
- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.

#### Communication
- Existing mediums of interopable information exchange are insecure and slow. In person it's paper. online it's the web form or sometimes email. It's all self-attested information. We've developed a secure messaging protocol that works in any context.
- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven't been tampered or sniffed.
- It's the power of PGP and (more recently) signal with much greater interoperability and cross platform transport mechanisms. Let's you send a message to someone online, and have them generate a proof of that message and have it be verified offline
- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.
### Trinsic Ecosystem

***Coming soon.***

While credentials, passes, and wallets are the only thing an individual using your app might need to interact with, there are a few more concepts for the Provider. Templates and Ecosystems.

Verifiers and holders want a way to know the issuer is a legitimate entity they trust.

Holders want to know that the verifier they’re sending a pass to is someone they trust.

We introduce the concept of a trust registry.

**Credential Template** Describes a credential using its name and attribute types

**Pass Template** Describes a pass using the attribute types and queries on those attributes

**Trust Registry** Shows a list of authorized issuers and verifiers and the templates they’re authorized to use.