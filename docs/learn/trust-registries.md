# Trust Registries

In many real-world credential exchange scenarios, a credential holder or verifier has the question “How do I know the issuer of this credential is trustworthy?”

Credential holders may also be uneasy about sharing information with a verifier if trust in the verifier has not been established.

These problems can be solved by having a trusted third party vouch for the trustworthiness of a credential exchange participant.

A trust registry is a list of authorized issuers and verifiers in the ecosystem and the types of credentials and passes they are authorized to issue and verify.

## Specification
The Trust over IP Foundation has a [specification](https://github.com/trustoverip/tswg-trust-registry-tf) for an interoperable trust registry. 

Our implementation is based off of this spec.