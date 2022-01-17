# Trust Registry

In many real-world credential exchange scenarios, a credential holder or verifier has the question “How do I know the issuer of this credential is trustworthy?”

Credential holders may also be uneasy about sharing information with a verifier if trust in the verifier has not been established.

These problems can be solved by having a trusted third party vouch for the trustworthiness of a credential exchange participant.

A trust registry is a list of authorized issuers and verifiers in the ecosystem and the types of credentials and passes they are authorized to issue and verify.

<diagram/>

## Specification
The Trust over IP Foundation has a specification for a interoperable trust registry. 
This defined an API interface so that trust registries can be queried in the same way. 
Our implementation is based off of this [trust registry spec](https://github.com/trustoverip/tswg-trust-registry-tf).

## API Reference
### Create a Ecosystem Governance Framework
An ecosystem governance framework is useful because it provides a good basis for verifying issuers and verifiers. It's a json-ld document that lists the issuers and verifiers. These issuers and verifiers are identified by a decentralized identifier. The governance framework is signified by an identifier as well. This can be used to represent the governance framework outside in the credential that it comes in. 

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry register-efg
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```
### Register Issuers and Verifiers
Each entity on the governance framework, whether an issuer or a verifier, is represented by a decentralized identifier. These entities are registered to either issue or verify specific credential types. A credential type is represented as a fully qualified `type` URI, of the kind found in a JSON-LD Verifiable Credential.
Finally, each entity must be registered on a specific governance framework. 

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry register-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```

### Unregister Issuers and Verifiers
To unregister an entity, include the credential type, the did, and the ecosystem governance framework. The credential type will be unregistered from that issuer.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry unregister-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```
### Check Authoritative Status
Check the status of an issuer for a credential type within a given governance framework. Returns all historical data for the given input parameter.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry check-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```

### Search
Search the registry for authoritative issuer and verifiers using a custom query in a SQL format.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry search --query <SQL query>
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```
### Cache Offline Registry File

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry download 
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ```