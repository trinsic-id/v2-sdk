import asyncio
from trinsic.trinsic_util import set_eventloop_policy


async def provider_demo():
    return


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(provider_demo())
