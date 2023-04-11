import asyncio
from trinsic.trinsic_util import set_eventloop_policy

from trinsic.provider_service import ProviderService


async def demo():
    service = ProviderService()
    response = await service.get_oberon_key()
    assert response is not None
    print("Package successfully installed. Sample Oberon Key below")
    print(response)


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(demo())
