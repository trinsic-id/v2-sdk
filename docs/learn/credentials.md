# Credentials

"Verifiable Credentials", or "VCs" are digital documents that conform to the W3C Verifiable Credential Data Model. VCs provide a standard for digitally issuing, holding, and verifying data about a subject. A verifiable credential is a set of tamper-evident claims and metadata that cryptographically prove who issued it.  [https://www.w3.org/TR/vc-data-model/](https://www.w3.org/TR/vc-data-model/)

Verifiable credentials are unique from other kinds of digital documents because they enable you to verify the following things: 

1. The original issuing entity (the source of the data) 
2. It was issued to the entity presenting it (the subject of the data) 
3. It hasn't been tampered with (the veracity of the data)
4. Whether the issuer revoked the credential as of a particular point in time (the status of the data)

[trust triangle](https://files.readme.io/d06a672-basicSSImodel2.png)
## Components of a Credential

To break down the components of a credential, we'll use a digital driver's license as an example.

### **Issuer DID**

As you can see from the diagram above, a verifier will only accept a credential if they trust its source. For example, in the United States a TSA agent will only let you on an airplane if you present a valid driver's license (or other gov ID); they do this because they trust the DMV or other agency that issued it. In order to validate where a credential came from, verifiers use the **issuer's DID**.

Each new issuer is assigned an issuer DID. The issuer DID acts as a *public-facing address* or *public key*. In self-sovereign identity, these DIDs are usually written to a public blockchain, but other locations are possible, too. Each issuer DID has an associated private key which is used to cryptographically "sign" each issued credential. In fact, each *attribute* inside the credential is signed in this manner, allowing the holder of the credential to share only a subset of the attributes when desired. For example, someone could share their name and age from their driver's license without sharing the driver's license number, address, and hair color. Using the issuer DID and straightforward public-private key cryptography, anyone can verify the attributes in the credential were attested to by the issuer. 

### **Schema**

Each credential needs a template so the data can be shared and interpreted correctly. That template is called a Schema.

Schemas are the general structure of the credential. In our example, they tell us what information must be included on the driver's license in order for it to be valid, like Full name, Address, Eye color, etc. 

In short, they are the attributes that you want to include in this credential.

#### Example:
```json
{
    "$schema": "http://json-schema.org/draft-07/schema#",
    "description": "Email",
    "type": "object",
    "properties": {
        "emailAddress": {
            "type": "string",
            "format": "email"
            }
        },
    "required": ["emailAddress"],
    "additionalProperties": false
}
```

Schemas are nonproprietary; any issuer can view/use the schemas written by any other issuer.

We abstract schema creation away into the same action as creation of a credential template. Keep reading to read how to create a schema and credential template. 

### How to offer Credentials in Trinsic
