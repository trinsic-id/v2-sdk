# Migration Guidelines

This document describes the concepts and steps needed to migrate your platform from Trinsic's existing technology to our next-gen identity infrastructure, also known as Ecosystems. If you have an existing integration with our existing platform based on Hyperledger Aries and would like to move to the new platform, this guide is for you. Please [reach out to us](/support) or ask any questions in our [Slack Community](https://join.slack.com/t/trinsiccommunity/shared_invite/zt-pcsdy7kn-h4vtdPEpqQUlmirU8FFzSQ) channels.

## Why move to Ecosystems?

Describe reasons here why

## Concepts Comparison

Let's take a deeper look of how different problems and concepts map between the existing and new platform.

- [Organizations and Tenants](#organizations-and-tenants)
- [Ledgers and Decentralized Infrastructure](#ledgers-and-decentralized-infrastructure)
- [Credential Formats](#credential-formats)
- [Anoncreds vs BBS](#anoncreds-vs-bbs)
- [Revocation Registries](#revocation-registries)
- [Verification Workflows](#verification-workflows)

### Organizations and Tenants

The concept of an organization (or tenant) as a top level scope of identity network is now represented as a more expanded concept of an ecosystem.
Eacosystems represent your enterprise network as an established model of relationships between different entities. Ecosystems define the contracts of how verifiable data can be exchanged and governed. Individual holders of credentials will be assigned a wallet within the scope of an ecosystem.

### Ledgers and Decentralized Infrastructure

Our existing platform uses decentralized ledgers based on Indy Node to store credential artifacts in a public network. These artifacts include DIDs, Schemas, Credential Definitions and Revocation Registries. The governing networks used include Sovrin, Indicio and BCovrin, for production and test workloads.

The new platform uses decentralized ledgers or blockchains for DIDs only. Schemas and [revocation registries](#revocation-registries) use web infrastructure and are published at a well known URL address. Credential definitions do not exist in the new platform since we use a different approach to credential signatures. Currently supported networks for DIDs are Bitcoin, using layer 2 protocol called [Sidetree](https://identity.foundation/sidetree/spec/).

### Credential Formats

Credential formats were generally represented as a collection of attributes defined with a schema and version. The schemas were represented with a schema ID like `Gs6cQcvrtWoZKsbBhD3dQJ:2:Certificate of Attendance:2.0`. This schema contains attributes and is associated with a [transaction on the ledger](https://indyscan.io/tx/SOVRIN_MAINNET/domain/151840).

Under the new model, schemas are part of a credential template and are represented as a standard JSON schema where each attribute can be defined with a specific data type and extended properties. Additionally, templates reference a JSON-LD vocabulary which adds semantic definition of each attribute under the Linked Data guidelines. This vocabulary is used during the process of issuance and verification of credentials, technically known as data canonicalization.
The schemas are not written on a ledger, they are instead publish as a web resource with a static URL.

### Anoncreds vs BBS

### Revocation Registries

### Verification Workflows



