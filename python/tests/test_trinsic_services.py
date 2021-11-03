import os
import unittest

import okapi.okapi_utils

from samples.provider_demo import provider_demo
from samples.vaccine_demo import vaccine_demo
from trinsic.services import WalletService


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
        await provider_demo()

    async def test_vaccine_demo(self):
        await vaccine_demo()


if __name__ == '__main__':
    unittest.main()
