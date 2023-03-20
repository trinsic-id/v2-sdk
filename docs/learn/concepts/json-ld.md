JSON-LD stands for JavaScript Object Notation for Linked Data. It’s a type of JSON format that is used to encode **linked data** using a set of standards based on the W3C's RDF (Resource Description Framework).

Here’s an example of a JSON-LD file:

```json
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "Chiara Paskulin",
  "jobTitle": "Developer Advocate",
  "telephone": "(425) 123-4567",
  "url": "<http://www.chiarapaskulin.com>"
}
```

In JSON-LD, a vocabulary is a set of terms that define the meaning of JSON-LD data. The vocabulary is defined in a JSON-LD context, which is a JSON object that maps terms to their corresponding IRIs (Internationalized Resource Identifiers).

### The `@context` element

A *vocabulary* is a URL where you can find schemas for structured data to be used online. Each vocabulary source ([https://schema.org/](https://schema.org/), for example) defines entities, relationships between entities and actions. The `@context` element defines the *vocabulary* used in the file, making it more human-readable, easier to understand and helping the browser understand the context of the data and its relationships.

By providing a link to the vocabulary, the `@context` element clarifies what the data represents and ensures that it’s interpreted properly. This makes easier the translation between schemata or systems and the reconstruction of lost or foreign contexts in the case these are lost.

In the previous example, the `@context` says “Hey browser, the vocabulary I’m referencing is [http://schema.org](http://schema.org/)".

### The `@type` element

This element specifies the type of the item being marked up. You can find a list of all the available item types [here](https://schema.org/docs/full.html).

In the previous example, the `@type` says “Hey browser, the item type I’m using is **Person**". You can find it [here](http://schema.org/Person).

### Attribute-value pairs

After defining the vocabulary and the item type, you can define the item properties. Inside an item type's Schema.org page (for example [http://schema.org/Person](http://schema.org/Person)), you will find all available properties that an item **Person** can have. In the previous example, `name`, `jobTitle`, `telephone` and `url` are all its properties.

## JSON-LD and Verifiable Credentials

JSON-LD is a format that allows for easy integration of Verifiable Credentials into existing systems, and it provides a standardized way of representing identity-related information. JSON-LD is the perfect format to help ensure VCs interoperability, usability and easy manageablity.

Here's an example of a verifiable credential in JSON-LD format:

```json
{
  "@context": [
    "https://www.w3.org/2018/credentials/v1"
  ],
  "type": ["VerifiableCredential", "UniversityDegreeCredential"],
  "issuer": "https://example.edu/issuers/14",
  "issuanceDate": "2021-06-01T17:00:00Z",
  "credentialSubject": {
    "id": "did:example:ebfeb1f712ebc6f1c276e12ec21",
    "degree": {
      "type": "BachelorDegree",
      "name": "Bachelor of Science and Arts",
      "degreeType": "BachelorDegree",
      "college": "College of Engineering and Applied Science",
      "university": "Example University"
    }
  },
  "proof": {
    "type": "Ed25519Signature2018",
    "created": "2021-06-01T17:00:00Z",
    "proofPurpose": "assertionMethod",
    "verificationMethod": "did:example:ebfeb1f712ebc6f1c276e12ec21#keys-1",
    "jws": "eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXhhbXBsZTpiMzllZjJhZjM1NzY2ZGE2M2Q5MmUxMzAwMjQyMmVjMzIyNjVhYTE3IiwiaXNzdWVyIjoiaHR0cHM6Ly9leGFtcGxlLmVkdS9pc3N1ZXJzLzE0IiwiaWF0IjoxNjIyMjAzMTM4LCJleHAiOjE2MjIyMDMxNzgsImp3ayI6eyJrdHkiOiJFQyIsImNydiI6IlAtMjU2In19..5uMz5N5R5C5vK1V7Bp5G9fWbq3qkijxHx6GpUudKdJqAywq6HnGX6kGPEA9KjZlYi4f4sH4b4C8QsFyj-oCg"
  }
}
```

This Verifiable Credential is a University Degree Credential, issued by Example University to a specific individual identified by a [DID](https://docs.trinsic.id/learn/concepts/dids/). The credential contains information about the degree earned, including the degree type, name, college and university. The credential also includes a proof that it was issued by Example University and that the information it contains has not been tampered with.