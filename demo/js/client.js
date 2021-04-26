
// const trinsic = require('../dist/index');
const trinsic = require('trinsic/dist/index');

function main() {
  createCredentialTemplate();
}

function createCredentialTemplate() {

  let request = new trinsic
    .credentialTemplates
    .CreateCredentialTemplateRequest()
    .setName("Covid Vaccination")
    .setAttributesList(
      [
        new trinsic.attributes.Attribute()
          .setName("First Name"),
        new trinsic.attributes.Attribute()
            .setName("Last Name"),
        new trinsic.attributes.Attribute()
            .setName("Vaccination Date"),
      ]
    );
  
  trinsic.provider.createCredentialTemplate(request,  (error, response) => {
    if(error != null) {
      console.log(`Error: ${error.details}`);
      return;
    }
    console.log(`CreateCredentialTemplate:\nName: ${response.getName()}\nAttribs: \n  ${response.getAttributesList().join('\n  ').toString()}`);
  })
}

main();