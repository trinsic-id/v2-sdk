# Migration Guidelines

This document describes the concepts and steps needed to migrate your platform from Trinsic's existing technology to our next-gen identity infrastructure, also known as Ecosystems. If you have an existing integration with our existing platform based on Hyperledger Aries and would like to move to the new platform, this guide is for you. Please [reach out to us](/support) or ask any questions in our [Slack Community](https://join.slack.com/t/trinsiccommunity/shared_invite/zt-pcsdy7kn-h4vtdPEpqQUlmirU8FFzSQ) channels.

## Why move to Ecosystems?

Describe reasons here why

## Concepts Comparison

Direct comparsions between the two platforms may be enclosed in **colored blocks** as shown below:

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
Eacosystems represent your enterprise network as an established model of relationships between different entities. Ecosystems define the contracts of how verifiable data can be exchanged and governed. Individual holders of credentials will be assigned a wallet within the scope of an ecosystem.

### Identity Wallets

Existing -> self managed

New -> custodial/cloud wallets

### Ledgers and Decentralized Infrastructure

Our existing platform uses decentralized ledgers based on Indy Node to store credential artifacts in a public network. These artifacts include DIDs, Schemas, Credential Definitions and Revocation Registries. The governing networks used include Sovrin, Indicio and BCovrin, for production and test workloads.

The new platform uses decentralized ledgers or blockchains for DIDs only. Schemas and [revocation registries](#revocation-registries) use web infrastructure and are published at a well known URL address. Credential definitions do not exist in the new platform since we use a different approach to credential signatures. Currently supported networks for DIDs are Bitcoin, using layer 2 protocol called [Sidetree](https://identity.foundation/sidetree/spec/).

!!! cite ""

    Indy Node based, supported networks: Sovrin, Indicio, BCovrin

!!! success ""

    Self-assertive identifiers, Bitcoin layer 2 using Sidetree

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

Revocation in our existing platform uses Anoncreds with RSA accumulator. These is a powerful, privacy preserving solution, but a little cumbersome when it comes to maintaining accumulator states. It requires publishing revocation registry state on the ledger, as well as publishing a tails file on a web resource. All of these are required for holders to prepare non-revocation proofs, which can effect the speed and experience of the interacting parties.

Our new platform uses a more flexible solution based on [Status List](https://w3c-ccg.github.io/vc-status-list-2021/). This apporach is based on a W3C community published specification with a much simpler and flexible approach to revocation.

!!! info "Future Considerations"

    At the time of writing this article, we are actively looking to add support for additional revocation solutions, such as one based on accumulators for pairing-friendly curves. These are significant improvements over RSA accumulators with an improvement in data privacy, performance and scalability.

### Verification Workflows

The approach to interaction between verifiers and credential holders is based on different solutions. In our existing platform we use Aries protocol to exchange data between two parties. This is usually done by the verifier preparing a verification request and communicating this to the user in a form of a URL or QR code. The holder then scans this code and responds to the request using a mobile app.

In our new platform, we use interactive protocol based on [OpenID for Verifiable Presentations](https://openid.net/specs/openid-4-verifiable-presentations-1_0.html) (OIDC4VP). This specification uses the widely adopted OpenID Connect standard to exchange verifiable data between parties in a secure way.