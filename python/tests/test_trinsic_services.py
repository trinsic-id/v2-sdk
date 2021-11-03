import os
import unittest

import okapi.okapi_utils
import pytest

from samples.vaccine_demo import vaccine_demo
from trinsic.services import WalletService, _create_channel_if_needed


@pytest.mark.parametrize("url,throws_exception", [
    ("http://localhost:5000", False),
    ("https://localhost:5000", False),
    ("http://20.75.134.127:80", False),
    ("http://20.75.134.127", True),
    ("http://localhost", True),
    ("localhost:5000", True),
    ("", True),
])
def test_url_parse(url, throws_exception):
    try:
        _create_channel_if_needed(url)
        if throws_exception:
            assert False
    except:
        if not throws_exception:
            raise


class TestServices(unittest.IsolatedAsyncioTestCase):
    def setUp(self) -> None:
        okapi.okapi_utils.download_binaries(False)

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

    async def test_vaccine_demo(self):
        await vaccine_demo()


if __name__ == '__main__':
    unittest.main()
