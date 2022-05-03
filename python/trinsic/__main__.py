import asyncio
import platform
from trinsic.account_service import AccountService


async def demo():
    account_service = AccountService()
    profile = await account_service.sign_in()
    assert profile is not None
    print('Package successfully installed. Sample profile below')
    print(profile)
    account_service.close()


if __name__ == "__main__":
    if platform.system() == 'Windows':
        asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())
    asyncio.run(demo())
