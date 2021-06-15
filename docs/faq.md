# Frequently Asked Questions

## What is Linked Data?
When we consider credentials getting exchanged online far and wide, a problem starts to occur - how does everyone know what every else means when they show a credential? To the rescue comes Linked Data, a format for representing structured data with self-contained descriptors of that data. 

"Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files" - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)

## What are Verifiable Credentials?
Verifiable Credentials are a way of representing credentials online. In its technical sense, a credential is a set of one or more cryptographically verifiable assertions about a subject made by an entity. 

For a technical deep dive, please refer to the [Verifiable Credentials Data Model](https://w3c.github.io/vc-data-model)
## What are Decentralized Identifiers?
Taken from the [Verifiable Credential Data Model](https://w3c.github.io/vc-data-model/#dfn-decentralized-identifiers), a decentralized identifier is "a portable URL-based identifier, also known as a DID, associated with an entity. These identifiers are most often used in a verifiable credential and are associated with subjects such that a verifiable credential itself can be easily ported from one repository to another without the need to reissue the credential. An example of a DID is `did:example:123456abcdef`"

## What are Linked Data Proofs?
Linked data proofs are "a mechanism for ensuring the authenticity and integrity of Linked Data documents using mathematical proofs" - https://w3c-ccg.github.io/ld-proofs/.

We use them to generate proofs from our credentials. 

## What are Zero Knowledge Proofs?
One of the most excited qualities of verifiable credentials are their ability to minimize the data shared about you when you prove who you are. The classic example is showing your driver's license in a bar. While a human bouncer may forget all the revealing information on your driver's license, a computerized bouncer that scans your driver's license never forgets any information. With zero knowledge proofs, you can choose specific information from your credentials to share with verifiers. 

These are enabled through a [BBS+ Signature specification](https://w3c-ccg.github.io/ldp-bbs2020/). 

