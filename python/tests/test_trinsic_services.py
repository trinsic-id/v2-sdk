import unittest

from samples.ecosystem_demo import ecosystem_demo
from samples.provider_demo import provider_demo
from samples.trustregistry_demo import trustregistry_demo
from samples.vaccine_demo import vaccine_demo
from trinsic.services import WalletService, ProviderService, TrustRegistryService, AccountService, CredentialsService
from trinsic.trinsic_util import trinsic_test_config


class TestServices(unittest.IsolatedAsyncioTestCase):
    async def test_servicebase_setprofile(self):
        wallet_service = WalletService(None, trinsic_test_config())
        with self.assertRaises(Exception) as excep:
            self.assertIsNotNone(wallet_service.build_metadata(None))
        self.assertEqual("cannot call authenticated endpoint: profile must be set", excep.exception.args[0].lower())

    @unittest.skip("Ecosystem support not implemented")
    async def test_providerservice_demo(self):
        await provider_demo()

    async def test_vaccine_demo(self):
        await vaccine_demo()

    async def test_trustregistry_demo(self):
        await trustregistry_demo()

    async def test_ecosystem_demo(self):
        await ecosystem_demo()

    async def test_providerservice_input_validation(self):
        cred_service = ProviderService(None, trinsic_test_config())
        with self.assertRaises(ValueError) as ve:
            await cred_service.invite_participant()

        with self.assertRaises(ValueError) as ve:
            await cred_service.invitation_status()

    async def test_trustregistryservice_input_validation(self):
        cred_service = TrustRegistryService(None, trinsic_test_config())
        with self.assertRaises(ValueError) as ve:
            await cred_service.register_governance_framework("", "Invalid framework")

    async def test_protect_unprotect_account(self):
        account_service = AccountService(None, trinsic_test_config())
        my_profile, _ = await account_service.sign_in()
        await self.print_get_info(account_service, my_profile)

        code = b"1234"
        my_protected_profile = account_service.protect(my_profile, code)
        with self.assertRaises(ValueError) as ve:
            await self.print_get_info(account_service, my_protected_profile)

        my_unprotected_profile = account_service.unprotect(my_profile, code)
        await self.print_get_info(account_service, my_unprotected_profile)

    @staticmethod
    async def print_get_info(account_service, my_profile):
        account_service.profile = my_profile
        info = await account_service.get_info()
        print(f"profile={info}")


if __name__ == '__main__':
    unittest.main()
