import unittest

from samples.provider_demo import provider_demo
from samples.vaccine_demo import vaccine_demo
from trinsic.services import WalletService
from trinsic.trinsic_util import trinsic_test_config


class TestServices(unittest.IsolatedAsyncioTestCase):
    async def test_servicebase_setprofile(self):
        wallet_service = WalletService(None, trinsic_test_config())
        with self.assertRaises(Exception) as excep:
            self.assertIsNotNone(wallet_service.build_metadata(None))
        self.assertEqual("cannot call authenticated endpoint: profile must be set", excep.exception.args[0].lower())

    async def test_providerservice_inviteparticipant(self):
        # await provider_demo()
        pass

    async def test_vaccine_demo(self):
        await vaccine_demo()


if __name__ == '__main__':
    unittest.main()
