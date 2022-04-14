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
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:registerGovernanceFramework
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:registerGovernanceFramework
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:registerGovernanceFramework
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterGovernanceFramework](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:registerGovernanceFramework
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

### Register Issuers
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
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:registerIssuer
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:registerIssuer
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:registerIssuer
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:registerIssuer
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Register Verifiers

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry register-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:registerVerifier
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:registerVerifier
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:registerVerifier
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:registerVerifier
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Unregister Issuers
To unregister an entity, include the credential type, the did, and the ecosystem governance framework. The credential type will be unregistered from that issuer.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry unregister-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:unregisterIssuer
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:unregisterIssuer
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:unregisterIssuer
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:unregisterIssuer
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Unregister Verifiers
To unregister an entity, include the credential type, the did, and the ecosystem governance framework. The credential type will be unregistered from that issuer.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry unregister-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:unregisterVerifier
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:unregisterVerifier
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:unregisterVerifier
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:unregisterVerifier
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Check Issuer Status
Check the status of an issuer for a credential type within a given governance framework. Returns all historical data for the given input parameter.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry check-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:checkIssuerStatus
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:checkIssuerStatus
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:checkIssuerStatus
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:checkIssuerStatus
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Check Verifier Status
Check the status of an issuer for a credential type within a given governance framework. Returns all historical data for the given input parameter.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry check-issuer \
        --egf http://hl7.org/fhir \
        --credential-type https://w3id.org/vaccination#VaccinationCertificate \
        --did did:example:fabre
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:checkVerifierStatus
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:checkVerifierStatus
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:checkVerifierStatus
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:checkVerifierStatus
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


### Search
Search the registry for authoritative issuer and verifiers using a custom query in a SQL format.

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry search --query <SQL query>
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:searchTrustRegistry
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/trustregistry_demo.py) inside_block:searchTrustRegistry
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:searchTrustRegistry
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/TrustRegistryDemo.java) inside_block:searchTrustRegistry
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->


    
### Cache Offline Registry File

=== "Trinsic CLI"
    ```bash
    trinsic trust-registry download 
    ```
