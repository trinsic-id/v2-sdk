
const trinsic = require('../dist/index');
//const trinsic = require('trinsic/dist/index');

function main() {
  createCredentialTemplate();
  createPresentationTemplate();
}

function createCredentialTemplate() {

  let request = new trinsic
    .credentialTemplates
    .CreateCredentialTemplateRequest()
    .setName("Test")
    .setAttributesList(
      [
        new trinsic.attributes.Attribute()
          .setId("test123")
          .setName("attribute")
          .setType(trinsic.attributes.AttributeType.TEXT)
      ]
    );
  
  trinsic.provider.createCredentialTemplate(request,  (error, response) => {
    if(error != null) {
      console.log(`Error: ${error.details}`);
      return;
    }
    console.log(`CreateCredentialTemplate:\n  Name: ${response.getName()}\n  Attribs: ${response.getAttributesList().toString()}`);
  })
}

main();
