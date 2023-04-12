import platform
import unittest

from samples.credential_demo import credential_demo
from samples.ecosystem_demo import ecosystem_demo
from samples.file_management_demo import file_management_demo
from samples.provider_demo import provider_demo
from samples.templates_demo import templates_demo
from samples.trustregistry_demo import trustregistry_demo
from samples.vaccine_demo import vaccine_demo
from samples.wallet_demo import wallet_demo
from trinsic.proto.services.common.v1 import ResponseStatus
from trinsic.service_base import ResponseStatusException
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


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
        TrinsicService()

    async def test_lib_main(self):
        from trinsic import __main__

        await __main__.demo()

    async def test_credential_demo(self):
        await credential_demo()

    async def test_ecosystem_demo(self):
        await ecosystem_demo()

    async def test_file_management_demo(self):
        await file_management_demo()

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


if __name__ == "__main__":
    unittest.main()
