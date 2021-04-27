var trinsic = require('trinsic/dist/index');
var grpc = require('@grpc/grpc-js');

function createPresentationTemplate(call, callback) {
  console.log(`Provider/CreatePresentationTemplate`);
  let reply = new trinsic.PresentationTemplates.CreatePresentationTemplateResponse();
  reply.setName(call.request.getName());
  reply.setAttributesList(call.request.getAttributesList());
  callback(null, reply);
}
//TODO figure out how to add multiple server calls
function createCredentialTemplate(call, callback) {
  console.log(`Provider/CreateCredentialTemplate`);
  let reply = new trinsic.CredentialTemplates.CreateCredentialTemplateResponse();
  reply.setName(call.request.getName())
  reply.setAttributesList(call.request.getAttributesList());
  callback(null, reply);
}
/**
 * Starts an RPC server that receives requests for the Greeter service at the
 * sample server port
 */
function main() {
  let server = new grpc.Server();
  server.addService(trinsic.ProviderService, 
      {
        createCredentialTemplate: createCredentialTemplate,
        createPresentationTemplate: createPresentationTemplate
      });
  server.bindAsync('0.0.0.0:5000', grpc.ServerCredentials.createInsecure(), () => {
    server.start();
  });
}

main();
