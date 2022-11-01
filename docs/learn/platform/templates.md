# Templates
“Templates” enable providers to define the formats and types of verifiable credentials that will be issued to holders inside and outside of their ecosystem. Templates are an abstraction provided by Trinsic that makes getting started easy, improves ongoing management of an ecosystem, and enables tighter integration with other features in the Trinsic platform such as governance. 

When you understand how templates work in Trinsic, you inherit the benefits of semantic interoperability and governance without needing to understand the nuts and bolts of schemas, credential definitions, JSON-LD contexts, credential restrictions, and more. 

Defining templates isn’t just helpful for issuer and verifier adoption, but when done correctly also provides increased interoperability. 

## How to approach templates in your product

Templates enable you to to remove friction for the participants of your ecosystem. Therefore first and foremost, you should ensure whatever templates you provide satisfy the needs of the issuers and verifiers you’re working with. 

Before you create your own template, you should consider whether a schema for your desired credential already exists. Standards bodies or industry best-practice sometimes dictate the kind of data that should be issued. For example, you may use [this document](https://w3c-ccg.github.io/vaccination-vocab/) as a starting point for a Covid-19 vaccine credential or [this document](https://www.aamva.org/getmedia/99ac7057-0f4d-4461-b0a2-3a5532e1b35c/AAMVA-2020-DLID-Card-Design-Standard.pdf) for a driver’s license in the USA.

Verifiable credentials enable the decoupling of datasets included in issuance and verification. That means you can provide a template for issuers to issue 10 attributes, even if the verifiers in your ecosystem only plan to verify 5 attributes. This allows you to be forward-looking as you’re considering the use cases for a given credential. That said, for simplicity’s sake, we tend to recommend limiting the attributes included in a template to those which you can reasonably foresee being useful in the near- to medium-term.

Because attributes from different credentials can be combined together into a “compound proof”, you do not need to worry about fitting all possible attributes into a single template.

We do not yet allow you to edit a template after it’s been created, nor do we pre-populate or recommend templates for you to use. If you’re interested in either of these features, please contact us.

## Anatomy of a template

When you create a template, you do the following:

1. Decide which attributes are included
2. Determine the type of data (string, integer, etc.)
3. Optionally, you may
    1. Assign optional or required value to each attribute
    2. Provide a description of the attribute

Trinsic then translates that input into a JSON schema and JSON-LD context, generates a unique identifier for the template, creates a resource with the details needed to maintain public resolution of these artifacts, and hosts it on your behalf.

For example, you may create a template with the following:

```
{
    "name": {
        "type": "string",
        "description": "Name of the business",
    },
    "website": {
        "type": "string",
        "description": "More information about the business"
    },
    "rating":{
        "type": "number",
        "description": "rating on scale of 1-10",
        "optional": false
    },
    "details":{
        "type": "string",
        "description": "An individual's last name",
        "optional": false
    }
}
```

This will create a Template that has the following structure:

```
TemplateData {
    id: "urn:template:alices-local-guides:review",
    name: "Review",
    version: 1,
    fields: {
        "name": TemplateField {
            description: "Name of the business",
            optional: false,
            r#type: String,
        },
        "rating": TemplateField {
            description: "rating on scale of 1-10",
            optional: false,
            r#type: Number,
        },
        "details": TemplateField {
            description: "An individual's last name",
            optional: false,
            r#type: String,
        },
        "website": TemplateField {
            description: "More information about the business",
            optional: false,
            r#type: String,
        },
    },
    allow_additional_fields: true,
    schema_uri: "https://staging-schema.trinsic.cloud/__default/review",
    context_uri: "https://staging-schema.trinsic.cloud/__default/review/context",
    ecosystem_id: "__default",
    r#type: "VerifiableCredential",
}
```

At any point you can view the `schema_uri` and the `context_uri` in the browser as raw JSON.