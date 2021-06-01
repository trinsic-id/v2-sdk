# Introduction

Organizations spend huge amounts of time and money to manually verify information contained within paper and pdf documents. 

Using the latest innovations in authentication standards and networking protocols, Trinsic gives developers the tools to transform credentials, licenses, passes, and certificates to a format that can be exchanged digitally and verified instantly by anyone. This format is called a Verifiable Credential, and has recently been standardized by the W3C.

Verifiable Credentials come with some new superpowers. Unlike a paper document or html form, when information within a verifiable credential is shared, it can instantly be proven to have come from a trusted source. 

Because verifiable credentials are digital, they can be easily shared with only the minimum information needed for a use case. They also require no centralized authority or proprietary technology to use - verifiable credentials are built on standards designed to be open, privacy-preserving, and distributed like the internet itself.

Hundreds of organizations of all sizes and industries use Trinsic’s infrastructure and tools to instantly verify information about individuals with technology instead of paper.

## What is Trinsic?

Trinsic provides a developer SDK so you can use verifiable credentials to build an ecosystem of credential exchange. The Trinsic SDK initially has two main modules. We’ve split it up for separation of concerns. Each of these terms:

- Core - Send and receive encrypted messages between devices.
- Ecosystems - Manage Credential Templates, Pass Templates and Registries.

## Core

Trinsic Core can be used to send and store encrypted messages between two credential wallets. 

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


