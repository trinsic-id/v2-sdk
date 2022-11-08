# Technology Standards
Our mission is to make the world more accessible. Standards are an important part of the Trinsic product stack because they help us do that. On this page we’ll break down the standards we use and why.

## Standards make the world go round

### Interoperability

There are two kinds of interoperability:

1. Everyone use the same code, so everyone is interoperable
2. Everyone implements against a common, agreed-upon standard

Realistically any interoperability will exist on a spectrum between these two points. For example, NFTs on Ethereum will be interoperable within that community if they adhere to the EIP-721, and seed phrase recovery for Bitcoin wallets will be interoperable within that community if they adhere to the BIP39 standard. While these examples sound like the second kind of interoperability, those NFTs won’t work outside the Ethereum ecosystem, nor will Bitcoin wallets be recoverable into wallets that don’t support Bitcoin. Thus we see, interoperability is not a black & white issue.

Various levels of interoperability have been achieved in subsets of the decentralized identity community in the past as well. We believe interoperability is good for business. One of Trinsic’s key values is to achieve and maintain interoperability in areas that are important for our customers, so they can spend their time building a valuable business. Doing so will drive adoption of their products and help us achieve our mission.

### Avoid vendor lock-in

Standards also enable us to avoid vendor lock-in—that is, avoid locking our customers in to Trinsic. We want to be chosen by our customers because we make them more successful by providing a valuable service, not because they’re stuck. In addition, trapping users in a silo we control is antithetical to our values. And finally, we’ve seen that “no vendor lock-in” is also a valuable benefit for our customers as they take their solutions to market. 

## Standards we use

Standards are such a core part of how we all do business that it wouldn’t make sense to add each one here. Instead, we’ll surface standards that are important for interoperability, security, privacy, or other feature that you probably care about.

### Verifiable Credentials

Verifiable credentials provide an interoperable way to attest and authenticate any kind of data. For an introductory post to verifiable credentials, see our [blog post](https://trinsic.id/what-are-verifiable-credentials/) on the subject.

> A verifiable credential is a set of tamper-evident claims and metadata that cryptographically prove who issued it.

> _From the [W3C VC Data Model](https://www.w3.org/TR/vc-data-model/)_


Trinsic currently uses a verifiable credential format that complies with the W3C Verifiable Credential Data Model, but we’re watching competing standards as they evolve as well (e.g. IETF ACDCs, ISO 13018-5, Anoncreds, etc).

### OpenID Connect

OpenID Connect (OIDC) is a widely-adopted standard for enabling [federated identity](https://trinsic.id/the-three-models-of-digital-identity/) online. Because consumers are so used to it, and verifiers have adopted it so widely, it is an ideal way to verify credentials. The only difference is that instead of redirecting users to an external Idp such as Facebook or Google, users are redirected to their own wallet to provide a verification.

### Decentralized Identifiers

Decentralized identifiers (DIDs) are globally unique, cryptographically verifiable URIs that are not bound to a centralized registry. They’re like URLs without ICANN and domain registrars. In identity, DIDs provide an abstraction between a public identifier and public keys. For more information on DIDs, see our section on DIDs.

### Linked Data

When ecosystem participants begin to share credentials outside of your immediate ecosystem, a problem starts to occur. Suppose a credential has an attribute “class”. How can a verifier know whether that word means 1. class, as in school; 2. class, as in category; or 3. class, as in sophistication? Although this might be a silly example, semantic interoperability is one of the most challenging problems to widespread data usefulness. Linked Data helps solve this by providing a format for representing structured data with self-contained descriptors of that data.

> Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files.                                                                                                   
>           - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)

### Additional standards

Revocation List 2020 - This approach allows us to add a simple, interoperable revocation mechanism for credentials. A revocation approach based on cryptographic accumulators is on our roadmap.

BBS+ Signatures - A cryptographic signature algorithm based on BLS keys that leads to very small, performant ZKP-enabled credentials. Is on standards stack but is not a standard.
## Linked Data
When we consider credentials getting exchanged online far and wide, a problem starts to occur - how does everyone know what everyone else means when they show a credential? To the rescue comes Linked Data, a format for representing structured data with self-contained descriptors of that data.

"Linked data is to spreadsheets and databases what the web of hypertext documents is to word processor files" - [W3C Wiki on Linked Data](https://www.w3.org/wiki/LinkedData)
