# Migration Guidelines

This document outlines the differences between our existing platform based on Hyperledger Aries and our next-gen identity infrastructure known as Ecosystems. The intended audience of this document is technical business decision makers or solution architects who are looking to migrate their existing integration. For everyone else, this can also be a good source of information with comparsion between the two platforms. Please feel free to [reach out to us](/support) or ask any questions in our [Slack Community](https://join.slack.com/t/trinsiccommunity/shared_invite/zt-pcsdy7kn-h4vtdPEpqQUlmirU8FFzSQ) channels.

## Motivations to build the new platform

**Open standards and protocols** &mdash; One of the critical decisions to create our new platform was the ability to use standardized data models. The [Verifiable Credentials Data Model](https://www.w3.org/TR/vc-data-model/) was an important milestone that standardized the data exchange format. The use of Decentralized Identifiers was another important step in building solutions that will work with community supported specifications. The tight coupling of Anoncreds with the wallet, communication, and ledger layers proved to be very challenging to iterate on. While projects like Anoncreds and DIDComm that started in Indy are now on a standards track, the success of our customers in production required prioritizing existing W3C, OIDC, and other standards first.

**Cryptographic suites performance and extensibility** &mdash; To provide developers the best experience possible, we needed to be able to introduce different cryptographic schemes with a standardized model in order to support different data workflows. The Data Integrity and JOSE proof formats work well with the VC model and allow extensibility and use of different cryptographic suites.

**Scalability concerns and technology lock-in** &mdash; Through rigorous testing, including with customers in production, we encountered concerning scalability issues with ledger throughput for Indy Node and the indy-sdk. The complexity introduced by requiring certain artifacts to be written to a specific ledger exasperated the problem. In addition, the inflexibility of the architecture of the open source implementations made it difficult to extend our platform or build customized experiences, and we found the efforts by the open source community to address these problems lacking.

**Ledger costs and transaction fees** &mdash; The high costs to write data to production Indy ledgers, and the difficulty in forecasting those costs, was a significant barrier for many developers going to production. In addition, we found the centralized governance of existing production Indy ledgers to result in "rug-pulls", "single points of failure", and sustainability concerns that introduced additional risks for developers in building a business on those networks.

**Customized wallet experience** &mdash; The developers in our community consistently wanted something the Aries-based platform couldn't provide--a platform for building a customized wallet experience for their end-users, whether in a standalone wallet product or embedded into an existing product. Strong wallet products need features like cross-device synchronization, multi-language SDK support, small SDK size, offline support, all while keeping the highest security standards. See our documentation on [Wallets](/learn/platform/wallets) for more.

## Who should consider migration?

- Teams looking to manage their own identity data in the ecosystem
- Your solution requires support for ecosystem governance
- You are looking to use open standard and need interoperability with VC, JWT, or OIDC
- Teams looking to reduce transaction costs of writing to decentralized ledgers
- Developers looking to provide custom wallet experience or customized integration

## Concepts Comparison

Direct comparsions of technical details between the two platforms may be enclosed in **colored blocks** as shown below:

!!! cite ""

    Description of concepts as found in our **existing** platform

!!! success ""

    Description of concepts as found in our **new** platform

Let's take a deeper look of how different problems and concepts map between the existing and new platform.

- [Organizations and Tenants](#organizations-and-tenants)
- [Identity Wallets](#identity-wallets)
- [Ledgers and Decentralized Infrastructure](#ledgers-and-decentralized-infrastructure)
- [Credential Formats](#credential-formats)
- [Anoncreds vs BBS](#anoncreds-vs-bbs)
- [Revocation Registries](#revocation-registries)
- [Verification Workflows](#verification-workflows)

### Organizations and Tenants

The concept of an organization (or tenant) as a top level scope of identity network is now represented as a more expanded concept of an ecosystem.
Ecosystems represent your enterprise network as an established model of relationships between different entities. Providers define the contracts of how verifiable data can be exchanged and governed in an ecosystem. Individual holders of credentials will be assigned a wallet within the scope of an ecosystem.

!!! cite ""

    Managed through [Provider API](https://docs.trinsic.id/reference/createtenant-1) endpoints

!!! success ""

    Managed through [Provider Service](/reference/services/provider-service/) SDK

### Identity Wallets

In our existing platform, our customers needed to choose between requiring end-users to download a standalone wallet to self-manage their credentials and keys on their mobile device, or use our Wallet API to create a purely custodial service. The former had the security advantage of all private material being stored on the user's device, but comes with the cost of backup & recovery questions, inability to access data from secondary devices/browers, and difficulty embedding into existing applications. The latter afforded a fantastic developer experience (indeed, 95% of developers chose this option to ship products quickly) but introduced a less-than-ideal security profile, and was inaccessible in an offline setting.

Our new platform uses hyrbid wallets with cloud-hosted credential storage and edge-managed access security through our SDK. Wallet data is accessed through our new API which allows developers to take advantage of a great experience building their own wallet-enabled products as a web app, mobile app, etc.  without compromising on security or offline usage. Custodial wallets also allow us to support more standards and interoperability profiles, leading to better products for our customers.

!!! info "Future considerations"

    We are actively working to improve the features of our hybrid wallet experience with things like encrypted query/search and the ability to export wallet data to remove lock-in for users.

### Ledgers and Decentralized Infrastructure

Our existing platform uses decentralized ledgers based on Indy Node to store credential artifacts in a public network. These artifacts include DIDs, Schemas, Credential Definitions and Revocation Registries. The instances of Indy networks we supported includes Sovrin, Indicio and BCovrin, for production and test workloads.

The new platform uses decentralized ledgers or blockchains for DIDs only. Schemas and [revocation registries](#revocation-registries) use web infrastructure and are published at a well known URL address. The need for credential definitions is removed thanks to improved credential signature schemes. The new platform is built independent of a single network, thus being truly ledger agnostic. Currently supported networks for DIDs are Bitcoin (using layer 2 protocol [Sidetree](https://identity.foundation/sidetree/spec/)), Indy, EBSI, with more to come. 

!!! cite ""

    - Indy Node based
    - Supported networks: Sovrin, Indicio, BCovrin

!!! success ""

    - Self-asserting identifiers
    - Bitcoin layer 2 using Sidetree
    - Indy Node based
    - EBSI

### Credential Formats

Credential formats were generally represented as a collection of attributes defined with a schema and version. The schemas were represented with a schema ID like `Gs6cQcvrtWoZKsbBhD3dQJ:2:Certificate of Attendance:2.0`. This schema contains attributes and is associated with a [transaction on the ledger](https://indyscan.io/tx/SOVRIN_MAINNET/domain/151840). The flat schemas do not support any heirarchy, severely limiting the use cases they are suited for.

Under the new model, schemas are part of a credential template and are represented as a standard JSON schema where each attribute can be defined with a specific data type and extended properties. Additionally, templates reference a JSON-LD vocabulary which adds semantic definition of each attribute under the Linked Data guidelines. This vocabulary is used during the process of issuance and verification of credentials, technically known as data canonicalization.
The schemas are not written on a ledger, they are instead published as a web resource with a static URL.

!!! cite ""

    - Schemas are represented as JSON array of attribute names

    ```json
    {
        "name": "Identity Card",
        "version": "1.0",
        "attr_names": [
            "firstName",
            "lastName",
            "dateOfBirth"
        ]
    }
    ```

    - Credential definitions are required and their value must be written on the ledger
    - Data structure supports flat hierarchy
    - Schema ID is identifier `Gs6cQcvrtWoZKsbBhD3dQJ:2:Certificate of Attendance:2.0`

!!! success ""

    - Schemas are JSON objects

    ```json
    {
        "id": "https://schema.trinsic.cloud/default/identity-card",
        "properties": {
            "firstName": { "type": "string", "description": "First or given name" },
            "lastName": { "type": "string", "description": "Last or family name" },
            "dateOfBirth": { "type": "datetime", "description": "Date of birth" },
        }
    }
    ```

    - No credential definition required
    - Data structure can be any complex JSON graph
    - Schema ID is URL `https://schema.trinsic.cloud/default/identity-card`

### Anoncreds vs BBS

Our existing platform uses the cryptographic suite [Anoncreds](https://hyperledger-indy.readthedocs.io/projects/sdk/en/latest/docs/design/002-anoncreds/README.html) to provide different credential exchange solutions. In our new platform, we introduced [BBS signatures](https://www.ietf.org/archive/id/draft-looker-cfrg-bbs-signatures-01.html), as a replacement for Anoncreds. The main motivating factors for this are:

- Standardized data models for the signature suites using [JSON Schema](https://json-schema.org) and [Verifiable Credentials](https://www.w3.org/TR/vc-data-model/)
- Fast and small signature size (cryptographic signatures based on pairing-friendly curves)
- No setup required (Anoncreds require creating credential definition which is very slow and requires ledger write)
- Flexible proof format (Data Integrity, JOSE)

### Revocation Registries

Revocation in our existing platform uses Anoncreds with RSA accumulator. This is a powerful, privacy preserving solution, but cumbersome when it comes to maintaining accumulator states. It requires publishing revocation registry state on the ledger, writing to the ledger whenever credentials are revoked, publishing a tails file on a web resource, and layering workarounds on top to make it all scalable. Even after all of this, the performance of holders creating non-revocation proofs was below an acceptable level for production use. 

Our new platform uses a more flexible solution based on [Status List](https://w3c-ccg.github.io/vc-status-list-2021/). This apporach is based on a W3C community published specification with a much simpler and flexible approach to revocation, albeit without the same privacy guarantees.

!!! info "Future considerations"

    At the time of writing this article, we are actively looking to add support for additional revocation solutions, such as one based on accumulators for pairing-friendly curves. These are significant improvements over RSA accumulators with an improvement in data privacy, performance and scalability.

### Verification Workflows

In our existing platform we use Aries protocols to exchange data between two parties. To verify a credential, the verifier must prepare a verification request and communicate this to the user via URL (or QR code). The holder then resolves the URL (or scans the code) to respond to the request, most often through use of a mobile app.

Our new platform is intended to support a broader set of verification options for developers, including widely-adopted protocols such as OpenID Connect. Today we support an interactive protocol based on [OpenID for Verifiable Presentations](https://openid.net/specs/openid-4-verifiable-presentations-1_0.html) (OIDC4VP). During verification, the holder is redirected to Trinsic's OIDC provider (which can be customized on a per-ecosystem basis) which allows the user access to their identity wallet to respond to the verification request. We'll continue to support additional verification protocols as they're needed by our customers to succeed in production.

!!! cite ""

    An example verification request payload

    ```json
    {
        "name": "verification-request",
        "version": "1.0",
        "attributes": [{
            "policyName": "verify-name",
            "attributeNames": [ "firstName" ],
            "restrictions": [{
                "issuerID": "string"
            }]
        }],
        "predicates": [],
        "revocationRequirement": {
            "validNow": true
        }
    }
    ```

!!! success ""

    Example OIDC request for verifiable presentation

    ```txt
    GET https://connect.trinsic.cloud/authorize?
        &response_type=code
        &scope=openid
        &client_id=client01
        &trinsic%3Aecosystem=example
        &redirect_uri=https://example.com/callback
        &nonce=n-0S6_WzA2Mj HTTP/1.1
    ```

### What's next?

If you're looking to do a migration and need help, please drop us a line on [Slack](https://join.slack.com/t/trinsiccommunity/shared_invite/zt-pcsdy7kn-h4vtdPEpqQUlmirU8FFzSQ) or Intercom. Otherwise, feel free to explore our documentation, try the Getting Started guide or watch an introductory video.
