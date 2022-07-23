# Underlying Tech

## Linked Data
When we consider credentials getting exchanged online far and wide, a problem starts to occur - how does everyone know what everyone else means when they show a credential? To the rescue comes Linked Data, a format for representing structured data with self-contained descriptors of that data.

"Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files" - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)

## Decentralized Identifiers
Taken from the [Verifiable Credential Data Model](https://w3c.github.io/vc-data-model/#dfn-decentralized-identifiers), a decentralized identifier is "a portable URL-based identifier, also known as a DID, associated with an entity. These identifiers are most often used in a verifiable credential and are associated with subjects such that a verifiable credential itself can be easily ported from one repository to another without the need to reissue the credential. An example of a DID is `did:example:123456abcdef`"

## Zero Knowledge Proofs
One of the most exciting qualities of verifiable credentials are their ability to minimize the data shared about you when you prove who you are. The classic example is showing your driver's license in a bar. While a human bouncer may forget all the revealing information on your driver's license, a computerized bouncer that scans your driver's license never forgets any information. With zero knowledge proofs, you can choose specific information from your credentials to share with verifiers.

These are enabled through a [BBS+ Signature specification](https://w3c-ccg.github.io/ldp-bbs2020/).
