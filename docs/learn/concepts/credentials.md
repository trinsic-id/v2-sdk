"Verifiable Credentials," or "VCs" are standardized, cryptographically-signed documents that attest information about an entity. They provide an interoperable way to attest and authenticate any kind of data in an IDtech application. 

> A verifiable credential is a set of tamper-evident claims and metadata that cryptographically prove who issued it.
- [W3C VC Data Model](https://www.w3.org/TR/vc-data-model/)
> 

Trinsic currently uses a verifiable credential format that complies with the W3C Verifiable Credential Data Model, but we’re watching competing standards as they evolve as well (e.g. IETF ACDCs, ISO 13018-5, Anoncreds, etc). For more details on the standards we use, see [Standards](/learn/platform/standards).

Verifiable credentials are unique from other kinds of digital documents because they enable you to verify the following things:

1. The original issuing entity (the source of the data)
2. It was issued to the entity presenting it (the subject of the data)
3. It hasn't been tampered with (the veracity of the data)
4. Whether the issuer revoked the credential as of a particular point in time (the status of the data)

## Components of a credential

To break down the components of a credential, we'll use a digital driver's license as an example.

### Attributes, or Data

The most important part of a credential is the data inside it. 

In its simplest form, attributes are key-value pairs in a JSON object. These attributes are populated at issuance on a per-credential basis, based on a template. 

Verifiers use attributes to request only the data from credentials that they need—for example, an age-checking verifier may only request `date_of_birth` from a driver’s license, instead of the entire credential.

### Templates

Credentials are issued from templates, an abstraction provided by Trinsic that makes getting started and ongoing management easy, and enables tighter integration with other features in the Trinsic platform such as governance. 

When you understand how templates work in Trinsic, you will get the benefits of semantic interoperability and governance without needing to understand the nuts and bolts of schemas, credential definitions, JSON-LD contexts, credential restrictions, and more. See our page on [templates](/learn/concepts/templates) to learn more.

### Issuer ID

Each verifiable credential is cryptographically signed by an issuer. The signature, along with the issuer’s identifier, strongly identify the issuer, ensuring anyone can verify the source of the data in the credential. 

In order to be trustworthy, the issuer’s identifier needs to be resolvable. We use decentralized identifiers (DIDs), a W3C standard, for this purpose. Trinsic offers providers a number of choices of DID methods for the issuers in their ecosystems. To learn more, read more about the [standards](/learn/platform/standards) we use and [Decentralized Identifiers <small>:material-open-in-new:</small>](https://www.w3.org/TR/did-core/){target=_blank}.