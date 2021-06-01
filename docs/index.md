# Introduction

Organizations waste billions of dollars, years of time, and huge amounts of human ingenuity trying to establish trust with others by verifying, securing, and proving identity data. Whether this is done by manually verifying information about contained within paper and pdf documents, digitally through data aggregators that mine & sell people's data, asking trivia questions over the phone before giving access to a financial account, or sending photographs of sensitive government-issued documents, there has simply not been a good way to establish trust online. Costs like long security lines, repetitive paper forms, and identity theft, are the burdens of the lucky among us - there are still billions of people with no legally-recognized identity, which don't get to access most services to begin with.

Trinsic solves this problem by offering developers a set of tools for implementing Trust over IP. Establish trust online natively instead of using work-arounds using the latest in open authentication standards and networking protocols. 

With Trinsic, you can transform credentials, licenses, passes, and certificates into a W3C standard format that can be exchanged digitally and verified instantly by anyone called a "verifiable credential". Verifiable credentials come with some new superpowers. Unlike a paper document or html form, when information from a verifiable credential is shared, it can instantly be proven to be authentic; it's tamper-proof, its provenance is evident, its revocation status is known, and the legal & business policies it was issued under can be known. Because verifiable credentials are digital, they can be easily shared with only the minimum information needed for a use case. They also require no centralized authority or proprietary technology to use - verifiable credentials are built on interoperable standards  designed to be open, privacy-preserving, and distributed like the internet itself.

Hundreds of organizations of all sizes and industries use Trinsic’s infrastructure and tools to instantly verify information about individuals with technology instead of paper.

## What is Trinsic?

Trinsic provides a developer SDK so you can easily use verifiable credentials to quickly build an ecosystem of credential exchange. The Trinsic SDK initially has two main modules. We’ve split it up for separation of concerns. Each of these terms 

- Core - Send and receive encrypted messages between devices.
- Ecosystems - Manage Credential Templates, Pass Templates and Registries.

## Core

Trinsic Core can be used to send and store encrypted messages between two credential wallets. 

### Wallets
Credential wallets can be thought of like an email inbox. Wallets exist to send, receive and store credentials. Wallets can be hosted by anyone. We expect most people will want to use a wallet provider to host their wallet initially - in this case Trinsic. Each wallet can only be accessed by a set of keys stored on devices. These keys provide the proof of identity guarantees that make verifiable credentials so powerful.

Each wallet can be identified with one or more addresses. A wallet holder can choose to use the same ID across multiple scenarios, or use a different ID each time they interact with someone, depending on if they want them to be able to correlate me with another.

### Secure Communication

Trinsic Core has the ability to send any payload securely. The SDK supports signing, encryption, proof generation, and encryption. All of these messages

When a message is signed, it can then be verified to not have been tampered with. 

When it is packed, it can be sent along an insecure channel without a third party reading its contents. 


- Existing ways of sending and verifying identity documents are often insecure and slow. In person we most often use paper. Online, we most often send identity document information by inputting it into a web form or sending it through email. This is all self-attested information - meaning that the verifier has no guarantee the information comes from a trusted source.

- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven’t been tampered or sniffed. They also allow the verifier to know the information comes directly for a specific trusted third party. Verifiers also know that the information was sent to them from a device known to be trusted by the individual. 
- It’s the power of PGP and (more recently) Signal with much greater interoperability and cross platform transport mechanisms. Let’s you send a message to someone online, and have them generate a proof of that message and have it be verified offline
- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.
### Trinsic Ecosystem

***Coming soon.***

While credentials, passes, and wallets are the only thing an individual using your app might need to interact with, there are a few more concepts for the Provider. 

Verifiers and holders want a way to know the issuer is a legitimate entity they trust.

Holders want to know that the verifier they’re sending their information to is someone they trust.

We introduce the concept of a trust registry.

**Credential Template** Describes a credential using its name and attribute types

**Pass Template** Describes a pass using the attribute types and queries on those attributes

**Trust Registry** Shows a list of authorized issuers and verifiers and the templates they’re authorized to use.

*[Verifiable Credential]: A credential is a set of attributes about someone or something. Typically, credentials are digital versions of physical licenses, cards, documents, or certificates, but they can represent all kinds of abstract data. Based on the W3C Verifiable Credential Data Model
