import asyncio

from trinsic.services import ProviderService, AccountService
from trinsic.trinsic_util import trinsic_test_config


async def templates_demo():
    account_service = AccountService(server_config=trinsic_test_config())
    


if __name__ == "__main__":
    asyncio.run(templates_demo())
