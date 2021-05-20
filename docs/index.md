# Introduction
We enable developers to shift their data exchanges from paper to an entirely digital, privacy preserving format called verifiable credentials.

Trinsic enables developers to give people a digital identity that works equally well in person and online. 

We give you an SDK that makes it easy to add this functionality to your product. 

Businesses spend huge amounts of time to do human verification of paper-based documents. The verification process is slow, weak and prone to error (eg fake id cards in bars).

Paper documents can been scanned into the digital world using PDFs or images, and even can be signed like a paper document using software like Docusign, but still aren't yet digitally native.

Trinsic's Credentials are tamper evident, privacy-preserving, and easily verifiable. It's built on a rapidly adopted standard to represent physical documents in a digital format.

Trinsic enables developer to create applications where people can prove things about themself to anyone with technology instead of paper. We call this technology Trust over IP, and it's built on open standards that anyone can use. The verification can happen immediately, with minimal data shared in the exchange. 

Gone are the days of taking a picture of your driver's license. or turning around because you forgot a plastic card. 

## Product Concepts

Trinsic's SDK have two main levels of functionality.
- Core, which deals with Credentials, Passes, and Wallets.
- Ecosystems, which manages things like Templates and Registries.

### Trinsic Core

**Credentials**
Credentials are containers that hold information about you. 

The W3C Verifiable Credential Data Model is a standard that provides an interoperable digital representation of physical licenses, cards, documents, or certificates, and all kinds of abstract data. They are based on the [W3C VC Data Model](https://www.w3.org/TR/vc-data-model/#introduction).

**Passes**
Passes are generated from credentials or issued directly. They are specific to a scenario and only include the information necessary to fulfill a verifier's request.

**Wallets**
A credential storage system encrypted and controlled by keys located on one or more devices. 

### Trinsic Ecosystem
_**Coming soon.**_

While credentials, passes, and wallets are the only thing an individual using your app might need to interact with, there are a few more concepts for the Provider. Templates and Ecosystems. 

Verifiers and holders want a way to know the issuer is a legitimate entity they trust. 

Holders want to know that the verifier they're sending a pass to is someone they trust.

We introduce the concept of a trust registry. 

**Credential Template**
Describes a credential using its name and attribute types

**Pass Template**
Describes a pass using the attribute types and queries on those attributes

**Trust Registry**
Shows a list of authorized issuers and verifiers and the templates they're authorized to use.

### Tech
