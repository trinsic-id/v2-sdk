# Credential Templates
Trinsic's credential templates make it easy to define types of credentials and publish these types for multiple issuers all to use. Credential templates will create two things to include in a credential: a json schema and a json ld context. Templates remove all of that complexity and let you define a list of attributes along with the attribute types and descriptions. 

This an example of a list of attributes that would comprise a credential template: 

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
You can view the `schema_uri` and the `context_uri` in the browser as raw json

