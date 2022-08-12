# Migration Guide

This document described the concepts and steps needed to migrate your platform from Trinsic's legacy technology to our next-gen identity infrastructure, known as Ecosystems.

## Why move to Ecosystems?

Describe reasons here why

## Concepts Comparison

- [Organizations and Tenants](#organizations-and-tenants)
- [Ledgers and Decentralized Infrastructure](#ledgers-and-decentralized-infrastructure)
- [Credential Formats](#credential-formats)
- [Revocation Registries](#revocation)
- [Verifications]()

### Organizations and Tenants

The concept of an organization or tenant as a top level scope of identity network is now represented as a more expanded concept of ecosystem.
Eacosystems represent your enterprise network as an established model of relationships between different entities. Ecosystems define the contracts of how verifiable data can be exchanged and governed.

### Ledgers and Decentralized Infrastructure

### Credential Formats

Credential formats were generally represented as a collection of attributes defined with a schema and version. The schemas were represented with a schema ID like `Gs6cQcvrtWoZKsbBhD3dQJ:2:Certificate of Attendance:2.0`. This schema contains attributes and is associated with a [transaction on the ledger](https://indyscan.io/tx/SOVRIN_MAINNET/domain/151840). 

Under the new model, schemas are part of a credential template and are represented as a standard JSON schema where each attribute can be defined with a specific data type and extended properties. Additionally, templates reference a JSON-LD vocabulary which adds semantic definition of each attribute under the Linked Data guidelines. This vocabulary is used during the process of issuance and verification of credentials, technically known as data canonicalization.

### Revocation



