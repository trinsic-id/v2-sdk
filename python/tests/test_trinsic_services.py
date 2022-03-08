import asyncio
import platform
import unittest
import uuid

from samples.ecosystem_demo import ecosystem_demo
from samples.provider_demo import provider_demo
from samples.trustregistry_demo import trustregistry_demo
from samples.vaccine_demo import vaccine_demo
from samples.templates_demo import templates_demo
from trinsic.proto.services.account.v1 import InfoResponse
from trinsic.proto.services.common.v1 import ResponseStatus
from trinsic.service_base import ResponseStatusException
from trinsic.account_service import AccountService
from trinsic.provider_service import ProviderService
from trinsic.trustregistry_service import TrustRegistryService
from trinsic.wallet_service import WalletService
from trinsic.trinsic_util import trinsic_config


# Due to some issues with python and async io test cases, we have to run each sample in a separate asyncio event loop.


class TestServices(unittest.TestCase):
    def test_python_platform(self):
        print(f"Running on: {platform.platform()}")

    def test_responsestatus_exception(self):
        with self.assertRaises(ResponseStatusException) as rse:
            ResponseStatusException.assert_success(
                ResponseStatus.UNKNOWN_ERROR, "test should fail"
            )
        self.assertEqual(
            f"test should fail, status={repr(ResponseStatus.UNKNOWN_ERROR)}",
            str(rse.exception),
        )
        ResponseStatusException.assert_success(
            ResponseStatus.SUCCESS, "This should NOT fail"
        )

    @unittest.skip("Ecosystem support not implemented")
    def test_providerservice_demo(self):
        asyncio.run(provider_demo())

    def test_vaccine_demo(self):
        asyncio.run(vaccine_demo())

    def test_trustregistry_demo(self):
        asyncio.run(trustregistry_demo())

    def test_ecosystem_demo(self):
        asyncio.run(ecosystem_demo())

    def test_templates_demo(self):
        asyncio.run(templates_demo())

    def test_providerservice_input_validation(self):
        async def test_code():
            cred_service = ProviderService(server_config=trinsic_config())
            with self.assertRaises(ValueError) as ve:
                await cred_service.invite_participant()
            with self.assertRaises(ValueError) as ve:
                await cred_service.invitation_status()

        asyncio.run(test_code())

    def test_trustregistryservice_input_validation(self):
        async def test_code():
            cred_service = TrustRegistryService(server_config=trinsic_config())
            with self.assertRaises(ValueError) as ve:
                await cred_service.register_governance_framework(
                    "", "Invalid framework"
                )

        asyncio.run(test_code())

    def test_protect_unprotect_account(self):
        async def test_code():
            account_service = AccountService(server_config=trinsic_config())
            my_profile = await account_service.sign_in()
            await self.print_get_info(account_service, my_profile)

            code = b"1234"
            my_protected_profile = account_service.protect(my_profile, code)
            with self.assertRaises(Exception) as ve:
                await self.print_get_info(account_service, my_protected_profile)

            my_unprotected_profile = account_service.unprotect(my_profile, code)
            self.fail("Unprotected profile hangs on get info for unknown reasons")
            # await self.print_get_info(account_service, my_unprotected_profile)

        asyncio.run(test_code())

    @staticmethod
    async def print_get_info(
        account_service: AccountService, my_profile
    ):
        account_service.service_options.auth_token = my_profile
        info = await account_service.get_info()
        assert info is not None
        print(f"profile={info}")


if __name__ == "__main__":
    unittest.main()
