const { TemplateService, WalletService } = require("../../lib");

const main = async () => {
  let templateService = new TemplateService();
  let walletService = new WalletService();

  let faberCollege = await walletService.createWallet();
  let alice = await walletService.createWallet();
  await templateService.setProfile(faberCollege);

  let schema = {
    $schema: "http://json-schema.org/draft-07/schema",
    $id: "http://example.com/example.json",
    type: "object",
    title: "The root schema",
    description: "The root schema comprises the entire JSON document.",
    default: {},
    examples: [
      {
        name: "Alice",
        university: "Faber College",
        degree: "Computer Science",
        school: "Fulton School of Engineering",
        date: "2021-09-27T19:15:28.405Z",
      },
    ],
    required: ["name", "university", "degree", "school", "date"],
    properties: {
      name: {
        $id: "#/properties/name",
        type: "string",
        title: "The name schema",
        description: "An explanation about the purpose of this instance.",
        default: "",
        examples: ["Alice"],
      },
      university: {
        $id: "#/properties/university",
        type: "string",
        title: "The university schema",
        description: "An explanation about the purpose of this instance.",
        default: "",
        examples: ["Faber College"],
      },
      degree: {
        $id: "#/properties/degree",
        type: "string",
        title: "The degree schema",
        description: "An explanation about the purpose of this instance.",
        default: "",
        examples: ["Computer Science"],
      },
      school: {
        $id: "#/properties/school",
        type: "string",
        title: "The school schema",
        description: "An explanation about the purpose of this instance.",
        default: "",
        examples: ["Fulton School of Engineering"],
      },
      date: {
        $id: "#/properties/date",
        type: "string",
        title: "The date schema",
        description: "An explanation about the purpose of this instance.",
        default: "",
        examples: ["2021-09-27T19:15:28.405Z"],
      },
    },
    additionalProperties: true,
  };

  let response;
  let templateId;

  try {
    response = await templateService.createCredentialTemplate("Diploma", schema); // can add baseUri as third parameter if hosting your own schema
    templateId = response.getId();
  }
  catch {
    response = await templateService.searchCredentialTemplate("SELECT * FROM c WHERE c.name = 'Diploma'");
    templateId = response[0].getId();
  }

  // faber college signs credential based off the template
  let attributes =  {
    name: "Alice",
    university: "Faber College",
    degree: "Computer Science",
    school: "Fulton School of Engineering",
    date: "2021-09-27T19:15:28.405Z"
  }
  let signedCredential = await templateService.issueFromTemplate(templateId, attributes);

  // STORE CREDENTIAL
  // Alice stores the credential in her cloud wallet.
  await walletService.setProfile(alice);
  
  let itemId = await walletService.insertItem(signedCredential);
  console.log(itemId, signedCredential)
};

main();