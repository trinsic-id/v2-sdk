# Introduction
Businesses spend huge amounts of time and money doing manual verification of the information contained within paper and pdf documents. The verification process is slow, security is weak, and prone to fraud (eg fake id cards in bars). These inefficiencies are often felt in highly regulated industries like supply chain, healthcare, banking, and education.

Using the latest developments in cryptography and networking standards, We enable developers to shift their verification processes to an entirely digital, interoperable, portable format where high-risk trust decisions can be made almost instantly.

This is much faster compared to exchanging and validating information through a paper or html form. It also massively increases the trust in the authenticity of the data getting exchanged. And it requires no centralized authority to operate - it's completely distribute like the internet itself.

Thousands of organizations of all sizes - from startups to governments, use Trinsic's software and APIs to instantly verify information about individuals in person and online with technology instead of paper.

Trinsic provides an SDK that makes it easy to add these verification capabilities to your existing system without any new infrastructure or setup. 

## The Trinsic Platform

The Trinsic SDK has two main modules for now. We've split it up to enable more flexibility for different use cases.
- Core, which deals with Messages and Wallets.
- Ecosystems, which provides useful objects like Credential Templates, Pass Templates and Registries.

### Trinsic Core

#### Messages
Trinsic Core has two primary message types to utilize.

**Credentials**
Credentials are containers that hold information about you. 

The W3C Verifiable Credential Data Model is a standard that provides an interoperable digital representation of physical licenses, cards, documents, or certificates, and all kinds of abstract data. They are based on the [W3C VC Data Model](https://www.w3.org/TR/vc-data-model/#introduction).

**Passes**
Passes are generated from credentials or issued directly. They are specific to a scenario and only include the information necessary to fulfill a verifier's request.

#### Wallets
A storage system encrypted and controlled by keys located on one or more devices. 
Storage is provided as a hosted service for convenience
But keys are stored on the edge. Trinsic has no ability to view inside wallets.

#### Communication
- Existing mediums of interopable information exchange are insecure and slow. In person it's paper. online it's the web form or sometimes email. It's all self-attested information. We've developed a secure messaging protocol that works in any context.
- Trinsic Core enables messages to be sent back and forth with high degree of trust that the contents haven't been tampered or sniffed.
- It's the power of PGP and (more recently) signal with much greater interoperability and cross platform transport mechanisms. Let's you send a message to someone online, and have them generate a proof of that message and have it be verified offline
- Selective disclosure, revocation, signing, encryption, verification all come out of the box and are easy to use, and are interoperable.
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

