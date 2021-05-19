# Introduction
We enable developers to shift their data exchanges from paper to an entirely digital, privacy preserving format called verifiable credentials.

Trinsic gives your users a single digital identity that works equally well in person and online. 

We give you an SDK that makes it easy to add this functionality to your product. 

## Product Concepts

Trinsic's SDK have two main levels of functionality.
- Core, which deals with Credentials, Passes, and Wallets.
- Ecosystems, which manages things like Templates and Registries.

### Trinsic Core

**Credentials**
Credentials are containers that hold information about you. 

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

