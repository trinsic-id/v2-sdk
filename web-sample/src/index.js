import { WalletService } from "@trinsic/trinsic-web";

const Demo_CreateWallet_SetProfile_SearchRecords = async () => {
  let walletService = new WalletService("http://tomislav-staging.eastus.azurecontainer.io:5000");

  let profile = await walletService.createWallet();

  console.assert(profile !== null, "profile should not be null");
  console.log("profile", profile);

  await walletService.setProfile(profile);
  console.log("profile set!")

  let unsignedDocument = {
    "@context": "https://w3id.org/security/v3-unstable",
    "id": "https://issuer.oidp.uscis.gov/credentials/83627465"
  }

  let issueResponse = await walletService.issueCredential(unsignedDocument);
  console.log("issued credential", issueResponse);

  let itemId = await walletService.insertItem(issueResponse);

  console.assert(itemId !== null && itemId !== "", "item id should not be empty");

  let items = await walletService.search();

  console.assert(items !== null, "items should not be null");
  console.assert(items.getItemsList().length > 0, "should have at least 1 item");

  let proof = await walletService.createProof(itemId, { "@context": "https://w3id.org/security/v3-unstable" });

  let valid = await walletService.verifyProof(proof);

  console.assert(valid === true, "should be valid proof");
  console.log(valid);

  document.getElementById("wallet").innerHTML = valid
}

Demo_CreateWallet_SetProfile_SearchRecords();
