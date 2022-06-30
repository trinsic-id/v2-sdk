# sampleDemo() {
import asyncio
from trinsic.services import AccountService


async def demo():
    account_service = AccountService()
    profile = await account_service.sign_in()
    print(profile)
    account_service.close()


if __name__ == "__main__":
    asyncio.run(demo())
# }
