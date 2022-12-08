import asyncio
import platform
import unittest

from samples.account_demo import account_demo
from samples.credential_demo import credential_demo
from samples.ecosystem_demo import ecosystem_demo
from samples.provider_demo import provider_demo
from samples.templates_demo import templates_demo
from samples.trustregistry_demo import trustregistry_demo
from samples.vaccine_demo import vaccine_demo
from samples.wallet_demo import wallet_demo
from trinsic.account_service import AccountService
from trinsic.proto.services.common.v1 import ResponseStatus
from trinsic.proto.services.provider.v1 import InviteRequest, InvitationStatusRequest
from trinsic.proto.services.trustregistry.v1 import (
    AddFrameworkRequest,
)
from trinsic.provider_service import ProviderService
from trinsic.service_base import ResponseStatusException
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy
from trinsic.trustregistry_service import TrustRegistryService


class TestServices(unittest.IsolatedAsyncioTestCase):
    def __init__(self, method_name="runTest"):
        super().__init__(methodName=method_name)
        set_eventloop_policy()

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

    def test_default_constructor(self):
        AccountService()

    # async def test_account_demo(self):
    #     await account_demo()

    async def test_credential_demo(self):
        await credential_demo()

    async def test_ecosystem_demo(self):
        await ecosystem_demo()

    async def test_providerservice_demo(self):
        await provider_demo()

    async def test_templates_demo(self):
        await templates_demo()

    async def test_trustregistry_demo(self):
        await trustregistry_demo()

    async def test_vaccine_demo(self):
        await vaccine_demo()

    async def test_wallet_demo(self):
        await wallet_demo()

    async def test_protect_unprotect_account(self):
        # accountServiceConstructor() {
        account_service = AccountService(server_config=trinsic_config())
        # }
        my_ecosystem_id_or_name = "default"
        # accountServiceSignIn() {
        my_profile = await account_service.login_anonymous(
            ecosystem_id=my_ecosystem_id_or_name
        )
        # }
        await self.print_get_info(account_service, my_profile)

        # protectUnprotectProfile() {
        code = b"1234"
        my_protected_profile = account_service.protect(
            profile=my_profile, security_code=code
        )
        my_unprotected_profile = account_service.unprotect(
            profile=my_protected_profile, security_code=code
        )
        # }
        with self.assertRaises(Exception) as ve:
            await self.print_get_info(account_service, my_protected_profile)
        await self.print_get_info(account_service, my_unprotected_profile)

    @staticmethod
    async def print_get_info(service: AccountService, my_profile):
        service.service_options.auth_token = my_profile
        # accountServiceGetInfo() {
        info = await service.get_info()
        # }
        assert info is not None
        print(f"profile={info}")


if __name__ == "__main__":
    unittest.main()
