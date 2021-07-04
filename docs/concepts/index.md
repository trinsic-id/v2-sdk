# Concepts
Trinsic hosts an implementation of verifiable credentials

## Credentials
Organizations and governments across the world are converging on an digital identity document standard called Verifiable Credentials.

We are following this standard to preserve interoperability. You'll never be locked into trinsic. you can always export your credentials and move to a different service.

Verifiable Credentials are a way of representing documents online that make them interoperable and instantly verifiable as legitimate. In its technical sense, a credential is a set of one or more cryptographically verifiable assertions about a subject made by an entity.

For a technical deep dive, refer to the [Verifiable Credentials Data Model](https://w3c.github.io/vc-data-model)


Just like passports and drivers licenses today have interoperability components like their barcode, credentials have the same feature but are built into the Internet itself, and can be used anywhere it is supported. Trans-X tools let you choose to support the standard. By following the verifiable credential standard, your organization can issue digital documents that can be verified anywhere.

The next step, is to give verifiers tools to verify these credentials as well. There is a large community of technologists working to define the standards..

Financials have been called the shipping containers of data. And that they are portable and interoperable compare that to a PDF document or a third-party API.

Trinsic's platform covers the full credential lifecycle. Our tools help you create, issue, verify, revoke, and store the credentials. These pieces are meant to be modular if you only want to use part of the platform - for example to verify credentials.

## Wallets
Credential wallets can be thought of like an email inbox. Wallets exist to send, receive and store credentials. Wallets can be hosted by anyone. We expect most people will want to use a wallet provider to host their wallet initially - in this case Trinsic. Each wallet can only be accessed by a set of keys stored on devices. These keys provide the proof of identity guarantees that make verifiable credentials so powerful.

Each wallet can be identified with one or more addresses. A wallet holder can choose to use the same ID across multiple scenarios, or use a different ID each time they interact with someone, depending on if they want them to be able to correlate one id with another.

## Keys
There are two kinds of keys in the credential exchange.

A signing key

A auth key

Signing keys are for issuers. These are stored in hardware security modules at Trinsic for issuers.

Auth keys are stored on the device to authenticate to the wallet.


### Secure Communication

Trinsic Core can send any JSON payload securely. The SDK supports signing and encryption.

- Existing ways of sending and verifying identity documents are often insecure and slow. In person we most often use paper. Online, we most often send identity document information by inputting it into a web form or sending it through email. This is all self-attested information - meaning that the verifier has no guarantee the information comes from a trusted source.

- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven’t been tampered or sniffed. They also allow the verifier to know the information comes directly from a specific trusted third party. Verifiers also know that the information was sent to them from a device known to be trusted by the individual.

- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.
### Trinsic Ecosystem

While credentials, passes, and wallets are the only thing an individual using your app might need to interact with, there are a few more concepts for the Provider.

Verifiers and holders want a way to know the issuer is a legitimate entity they trust.

Holders want to know that the verifier they’re sending their information to is someone they trust.

**Credential Template** Describes a credential using its name and attribute types

**Pass Template** Describes a pass using the attribute types and queries on those attributes

**Trust Registry** Shows a list of authorized issuers and verifiers and the templates they’re authorized to use.

*[Verifiable Credential]: A credential is a set of attributes about someone or something. Typically, credentials are digital versions of physical licenses, cards, documents, or certificates, but they can represent all kinds of abstract data. Based on the W3C Verifiable Credential Data Model

## Linked Data
When we consider credentials getting exchanged online far and wide, a problem starts to occur - how does everyone know what every else means when they show a credential? To the rescue comes Linked Data, a format for representing structured data with self-contained descriptors of that data.

"Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files" - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)

## Decentralized Identifiers
Taken from the [Verifiable Credential Data Model](https://w3c.github.io/vc-data-model/#dfn-decentralized-identifiers), a decentralized identifier is "a portable URL-based identifier, also known as a DID, associated with an entity. These identifiers are most often used in a verifiable credential and are associated with subjects such that a verifiable credential itself can be easily ported from one repository to another without the need to reissue the credential. An example of a DID is `did:example:123456abcdef`"

## Linked Data Proofs
Linked data proofs are "a mechanism for ensuring the authenticity and integrity of Linked Data documents using mathematical proofs" - https://w3c-ccg.github.io/ld-proofs/.

We use them to generate proofs from our credentials.

## Zero Knowledge Proofs
One of the most excited qualities of verifiable credentials are their ability to minimize the data shared about you when you prove who you are. The classic example is showing your driver's license in a bar. While a human bouncer may forget all the revealing information on your driver's license, a computerized bouncer that scans your driver's license never forgets any information. With zero knowledge proofs, you can choose specific information from your credentials to share with verifiers.

These are enabled through a [BBS+ Signature specification](https://w3c-ccg.github.io/ldp-bbs2020/).

