# Migration Guidelines

This document outlines the differences between our existing platform based on Hyperledger Aries and our next-gen identity infrastructure, also known as Ecosystems. The intended audience of this document are technical business decision makers or solution architects who are looking to migrate their existing integration. For everyone else, this can also be a good source of information with comparsion between the two platforms. Please feel free to [reach out to us](/support) or ask any questions in our [Slack Community](https://join.slack.com/t/trinsiccommunity/shared_invite/zt-pcsdy7kn-h4vtdPEpqQUlmirU8FFzSQ) channels.

## Motivations to build the new platform

**Open standards and protocols** &mdash; one of the critical decisions to create our new platform was the ability to use standardized data models. The [Verifiable Credentials Data Model](https://www.w3.org/TR/vc-data-model/) was an important milestone that standardized the data exchange format. The use of Decentralized Identifiers was another important step in building solutions that will work with community supported specifications. The tight integration of Anoncreds with the wallet and ledger layers proved to be very challenging to iterrate on.

**Cryptographic suites performance and extensibility** &mdash; we wanted to be able to introduce different cryptgraphic schemes with a standardized model in order to support different data workflows. The Data Integrity and JOSE proof formats work well with the VC model and allow extensibility and use of different cryptographic suites.

**Scalability concerns and technology lock-in** &mdash; there are couple of different points here: scalability concerns with ledger throughput for  Indy Nodes and the requirement to write numerous identity data to the ledger, raises some concerns on how much this infrastructure will perform well in hyperscale. The technology lock-in of using wallets through a single library implementation was another factor we considered; it proved to be fairly difficult to build customized experiences and extend our platform.

**Ledger costs and transaction fees** &mdash; the costs of writing data to the ledger was a significant factor for many developers considering to move to production networks

**Customized wallet experience** &mdash; we wanted to build a service that allows developers to build their own wallet experience and not have to rely on a single mobile app. While we are commited to building great wallet experience for users, we wanted to empower everyone to build their own solution or have the ability to integrate the wallet into their existing apps.

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
Ecosystems represent your enterprise network as an established model of relationships between different entities. Ecosystems define the contracts of how verifiable data can be exchanged and governed. Individual holders of credentials will be assigned a wallet within the scope of an ecosystem.

!!! cite ""

    Managed through [Provider API](https://docs.trinsic.id/reference/createtenant-1) endpoints

!!! success ""

    Managed through [Provider Service](/reference/services/provider-service/) SDK

### Identity Wallets

In our existing platform, identity wallets are self-managed and stored in a mobile device. All of the credentials and private material are securely stored on the user's device. This is a great solution that allows the user to have full control over their identity, but it comes with the risk of losing all identity data if something happens to the device.

Our new platform uses custodial wallets that are hosted in the cloud with a strong access security. Wallets data is accessed through our new API which allows developers to build their own wallet experience as a web app, mobile app, etc. Custodial wallets allow better integration with existing platforms and improved user experience.

!!! info "Future considerations"

    We are actively working to improve the wallet experience by introducing encrypted cloud wallets. This will add another layer of privacy and security to users' data. We are also exploring options to export wallet data, so it can be moved between providers or to a custodial wallet on a user's device.

### Ledgers and Decentralized Infrastructure

Our existing platform uses decentralized ledgers based on Indy Node to store credential artifacts in a public network. These artifacts include DIDs, Schemas, Credential Definitions and Revocation Registries. The governing networks used include Sovrin, Indicio and BCovrin, for production and test workloads.

The new platform uses decentralized ledgers or blockchains for DIDs only. Schemas and [revocation registries](#revocation-registries) use web infrastructure and are published at a well known URL address. Credential definitions do not exist in the new platform since we use a different approach to credential signatures. Currently supported networks for DIDs are Bitcoin, using layer 2 protocol called [Sidetree](https://identity.foundation/sidetree/spec/).

!!! cite ""

    - Indy Node based
    - Supported networks: Sovrin, Indicio, BCovrin

!!! success ""

    - Self-asserting identifiers
    - Bitcoin layer 2 using Sidetree

### Credential Formats

Credential formats were generally represented as a collection of attributes defined with a schema and version. The schemas were represented with a schema ID like `Gs6cQcvrtWoZKsbBhD3dQJ:2:Certificate of Attendance:2.0`. This schema contains attributes and is associated with a [transaction on the ledger](https://indyscan.io/tx/SOVRIN_MAINNET/domain/151840).

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

Revocation in our existing platform uses Anoncreds with RSA accumulator. These is a powerful, privacy preserving solution, but a little cumbersome when it comes to maintaining accumulator states. It requires publishing revocation registry state on the ledger, as well as publishing a tails file on a web resource. All of these are required for holders to prepare non-revocation proofs, which can affect the speed and experience of the interacting parties.

Our new platform uses a more flexible solution based on [Status List](https://w3c-ccg.github.io/vc-status-list-2021/). This apporach is based on a W3C community published specification with a much simpler and flexible approach to revocation.

!!! info "Future considerations"

    At the time of writing this article, we are actively looking to add support for additional revocation solutions, such as one based on accumulators for pairing-friendly curves. These are significant improvements over RSA accumulators with an improvement in data privacy, performance and scalability.

### Verification Workflows

The approach to interaction between verifiers and credential holders is based on different solutions. In our existing platform we use Aries protocol to exchange data between two parties. This is usually done by the verifier preparing a verification request and communicating this to the user in a form of a URL or QR code. The holder then scans this code and responds to the request using a mobile app.

In our new platform, we use interactive protocol based on [OpenID for Verifiable Presentations](https://openid.net/specs/openid-4-verifiable-presentations-1_0.html) (OIDC4VP). This specification uses the widely adopted OpenID Connect standard to exchange verifiable data between parties in a secure way. During verification, the holder is redirected to our OIDC provider which allows the user access to their identity wallet to respond to the verification request.

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
