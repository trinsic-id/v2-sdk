# Trust Registry

## Overview
Trust Registries are a way for verifiers to know if an issuer can be trusted. 
This is a simple registry that allows a provider to register an issue or a verifier
They can then check the issuer or verifier by querying the registry


## Specification
The trust registry spec is here (https://github.com/trustoverip/tswg-trust-registry-tf)
## API Reference
```bash
trinsic trust-registry check-issuer \
    --egf http://hl7.org/fhir \
    --credential-type https://w3id.org/vaccination#VaccinationCertificate \
    --did did:example:fabre
trinsic trust-registry register-issuer \
    --egf http://hl7.org/fhir \
    --credential-type https://w3id.org/vaccination#VaccinationCertificate \
    --did did:example:fabre
trinsic trust-registry unregister-issuer \
    --egf http://hl7.org/fhir \
    --credential-type https://w3id.org/vaccination#VaccinationCertificate \
    --did did:example:fabre
```
### Ecosystem Governance Framework
An ecosystem governance framework is useful because it provides a good basis for verifying issuers and verifiers. 
It's a json-ld document that lists the issuers and verifiers. 
These issuers and verifiers are identified by a decentralized identifier. 
The governance framework is signified by an identifier as well. 
this can be used to represent the governance framework outside in the credential that it comes in. 

### Register Issuers and Verifiers

### Check Authoritative Status

### Offline Registry File

