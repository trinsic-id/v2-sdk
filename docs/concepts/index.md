# Concepts
Trinsic is a set of tools and infrastructure that enables decentralized identity for individuals and organizations.

There are many ways that decentralized identity can be used beyond just customer login. This enables digital identity verification anywhere. In person, online, even offline.

## Wallets
Wallets can be thought of a little like an email inbox. Wallets exist to send, receive and store credentials. Wallets can be hosted by anyone. Each wallet can only be accessed by a set of keys stored on devices.
Wallets represent a user's identity. They manage an identity for an individual. 
Trinsic has a wallet that is built to be eventually interoperable with other identity wallets that exist.


## Credentials
Organizations and governments across the world have converged on a digital identity document standard called Verifiable Credentials.

Trinsic's platform covers the full credential lifecycle. Our tools help you create, issue, verify, revoke, and store these credentials. These pieces are meant to be modular and interoperable.

Verifiable Credentials are a way of representing documents online that make them interoperable and instantly verifiable. In its technical sense, a credential is a set of one or more cryptographically verifiable assertions about a subject made by an entity.

Just like passports and drivers licenses today have interoperability components like their barcode, credentials have the same feature but are built into the internet itself, and can be used anywhere it is supported. Our tools let you choose to support the standard. By following the verifiable credential standard, your organization can issue digital documents that can be verified anywhere.

For a technical deep dive, refer to the [Verifiable Credentials Data Model](https://w3c.github.io/vc-data-model)

## Passes
Passes are documents generated from one or more credentials that contain only the information required to be verified. They can be generated in advance or in real-time. Passes minimize the information about you that is shared with third parties.

## Underlying Tech

### Linked Data
When we consider credentials getting exchanged online far and wide, a problem starts to occur - how does everyone know what every else means when they show a credential? To the rescue comes Linked Data, a format for representing structured data with self-contained descriptors of that data.

"Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files" - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)

### Decentralized Identifiers
Taken from the [Verifiable Credential Data Model](https://w3c.github.io/vc-data-model/#dfn-decentralized-identifiers), a decentralized identifier is "a portable URL-based identifier, also known as a DID, associated with an entity. These identifiers are most often used in a verifiable credential and are associated with subjects such that a verifiable credential itself can be easily ported from one repository to another without the need to reissue the credential. An example of a DID is `did:example:123456abcdef`"

### Zero Knowledge Proofs
One of the most exciting qualities of verifiable credentials are their ability to minimize the data shared about you when you prove who you are. The classic example is showing your driver's license in a bar. While a human bouncer may forget all the revealing information on your driver's license, a computerized bouncer that scans your driver's license never forgets any information. With zero knowledge proofs, you can choose specific information from your credentials to share with verifiers.

These are enabled through a [BBS+ Signature specification](https://w3c-ccg.github.io/ldp-bbs2020/).

Next: Choose your language

  - [CLI](../walkthrough/vaccination-cli.md)
  - [Node](../walkthrough/vaccination-node.md)
  - [C#](../walkthrough/vaccination-net.md)
  - [Python](../walkthrough/vaccination-python.md)
  - [Browser](../walkthrough/vaccination-browser.md)

## Available SDKs

- [x] [C#](./walkthrough/vaccination-net.md)
  - [x] Xamarin (iOS, Android)
  - [x] .NET Core (MacOS, Windows, Linux)
- [x] TypeScript/JS
  - [x] [Node.js](./walkthrough/vaccination-node.md)
  - [x] [Browser](./walkthrough/vaccination-browser.md)
- [x] Python

## Up Next
- [ ] Objective C (iOS)
- [ ] Java/Kotlin (Android)
- [ ] React Native
- [ ] Rust
- [ ] Go