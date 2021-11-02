import json
import unittest
import os
from os.path import abspath, join, dirname

import okapi.okapi_utils

from trinsic.services import WalletService, _create_channel_if_needed


class TestServices(unittest.IsolatedAsyncioTestCase):
    def setUp(self) -> None:
        okapi.okapi_utils.download_binaries(False)

    @property
    def base_data_path(self) -> str:
        return abspath(join(dirname(__file__), "..", "..", "devops", "testdata"))

    @property
    def vaccine_cert_unsigned_path(self) -> str:
        return abspath(join(self.base_data_path, "vaccination-certificate-unsigned.jsonld"))

    @property
    def vaccine_cert_frame_path(self) -> str:
        return abspath(join(self.base_data_path, "vaccination-certificate-frame.jsonld"))

    async def test_servicebase_setprofile(self):
        server_address = os.getenv('TRINSIC_SERVER_ADDRESS')
        wallet_service = WalletService(server_address)
        with self.assertRaises(Exception) as excep:
            self.assertIsNotNone(wallet_service.metadata)
        self.assertTrue(excep.exception.args[0].lower() == "profile not set")

        wallet = await wallet_service.create_wallet()
        wallet_service.set_profile(wallet)
        self.assertIsNotNone(wallet_service.metadata)

    async def test_providerservice_inviteparticipant(self):
        # TODO - Fix betterproto field setting defaults-null bug.
        pass
        # server_address = os.getenv('TRINSIC_SERVER_ADDRESS')
        # provider_service = ProviderService(server_address)
        # invite_response = await provider_service.invite_participant(
        #     participant=ParticipantType.participant_type_individual,
        #     description="I dunno",
        #     email="scott.phillips@trinsic.id")
        # self.assertIsNotNone(invite_response)

    def test_url_parse(self):
        valid_http_address = "http://localhost:5000"
        valid_https_address = "https://localhost:5000"
        valid_ip_address = "http://20.75.134.127:80"
        missing_port_ip_address = "http://20.75.134.127"
        missing_port_address = "http://localhost"
        missing_protocol_address = "localhost:5000"
        blank_address = ""
        addresses = [valid_http_address, valid_https_address, valid_ip_address, missing_port_ip_address,
                     missing_port_address, missing_protocol_address,
                     blank_address]
        throws_exception = [False, False, False, True, True, True, True]

        for ij in range(len(addresses)):
            if throws_exception[ij]:
                with self.assertRaises(BaseException):
                    _create_channel_if_needed(addresses[ij])
            else:
                _create_channel_if_needed(addresses[ij])

    async def test_trinsic_service_demo(self):
        server_address = os.getenv('TRINSIC_SERVER_ADDRESS')
        wallet_service = WalletService(server_address)

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
        with open(self.vaccine_cert_unsigned_path, "r") as fid:
            credential_json = json.load(fid)

        credential = await wallet_service.issue_credential(credential_json)

        print(f"Credential: {credential}")

        # STORE CREDENTIAL
        # Alice stores the credential in her cloud wallet.
        wallet_service.set_profile(allison)
        item_id = await wallet_service.insert_item(credential)
        print(f"item id = {item_id}")

        # SHARE CREDENTIAL
        # Allison shares the credential with the venue.
        # The venue has communicated with Allison the details of the credential
        # that they require expressed as a JSON-LD frame.
        wallet_service.set_profile(allison)

        with open(self.vaccine_cert_frame_path, "r") as fid2:
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
