import json
import unittest

from trinsic.services import WalletService


class MyTestCase(unittest.IsolatedAsyncioTestCase):
    async def test_trinsic_service_demo(self):
        wallet_service = WalletService("http://tomislav-staging.eastus.azurecontainer.io:5000")

        # SETUP ACTORS
        # Create 3 different profiles for each participant in the scenario
        allison = await wallet_service.create_wallet()
        clinic = await wallet_service.create_wallet()
        airline = await wallet_service.create_wallet()

        # Store profile for later use
        # File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

        # Create profile from existing data
        # var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

        # ISSUE CREDENTIAL
        # Sign a credential as the clinic and send it to Allison
        wallet_service.set_profile(clinic)
        credential_json = ""
        with open("vaccination-certificate-unsigned.jsonld", "r") as fid:
            credential_json = json.load(fid)

        credential = await wallet_service.issue_credential(credential_json)

        print(f"Credential: {credential}")

        # STORE CREDENTIAL
        # Alice stores the credential in her cloud wallet.
        wallet_service.set_profile(allison)
        item_id = await wallet_service.insert_item(credential)

        # SHARE CREDENTIAL
        # Allison shares the credential with the venue.
        # The venue has communicated with Allison the details of the credential
        # that they require expressed as a JSON-LD frame.
        wallet_service.set_profile(allison)

        proof_request_json = ""
        with open("vaccination-certificate-frame.jsonld", "r") as fid2:
            proof_request_json = json.load(fid2)

        credential_proof = await wallet_service.create_proof(document_id=item_id, reveal_document=proof_request_json)

        print(f"Proof: {credential_proof}")

        # VERIFY CREDENTIAL
        # The airline verifies the credential
        wallet_service.set_profile(airline)
        valid = await wallet_service.verify_proof(credential_proof)

        print(f"Verification result: {valid}")
        self.assertTrue(valid)


if __name__ == '__main__':
    unittest.main()
