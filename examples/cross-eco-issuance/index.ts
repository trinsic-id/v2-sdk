import { TrinsicService } from "@trinsic/trinsic";

class App {
    public static async start() {
        // Create the issuer wallet in ecosystem A
        let trinsicAlice = new TrinsicService();
        
        const createWalletAliceRequest = {
            ecosystemId: "urn:trinsic:ecosystems:ecosystem-a"
        }

        let createWalletAliceResponse = await trinsicAlice.wallet().createWallet(createWalletAliceRequest);

        console.log("Issuer Wallet: " + createWalletAliceResponse.wallet?.walletId);
        console.log("Issuer's Ecosystem: " + createWalletAliceResponse.wallet?.ecosystemId);
        
        // Authenticate as the issuer in ecosystem A
        trinsicAlice.setAuthToken(createWalletAliceResponse.authToken!);
        
        // Create the credential offer
        const createCredentialOfferRequest = {
            templateId: "https://schema.trinsic.cloud/ecosystem-a/example-credential",
            valuesJson: JSON.stringify({
                "name": "John Doe"
            }),
        }

        let createCredentialOfferResponse = await trinsicAlice.credential().createCredentialOffer(createCredentialOfferRequest);

        console.log("Credential Offer: " + createCredentialOfferResponse.documentJson);

        // Create the holder wallet in ecosystem B
        let trinsicBob = new TrinsicService();

        const createWalletBobRequest = {
            ecosystemId: "urn:trinsic:ecosystems:ecosystem-b"
        }

        let createWalletBobResponse = await trinsicBob.wallet().createWallet(createWalletBobRequest);
        
        console.log("\nHolder Wallet: " + createWalletBobResponse.wallet?.walletId);
        console.log("Holder's Ecosystem: " + createWalletBobResponse.wallet?.ecosystemId);

        // Authenticate as the holder in ecosystem B
        trinsicBob.setAuthToken(createWalletBobResponse.authToken!);

        // Accept the credential offer
        let acceptCredentialOfferRequest = {
            documentJson: createCredentialOfferResponse.documentJson,
        }

        const acceptCredentialResponse = await trinsicBob.credential().acceptCredential(acceptCredentialOfferRequest);
        
        // Credential issued in ecosystem A stored in a wallet from ecosystem B
        const searchWalletBobResponse = await trinsicBob.wallet().searchWallet();

        console.log("VC in holder's wallet: " + searchWalletBobResponse.items);
    }
}

App.start();
