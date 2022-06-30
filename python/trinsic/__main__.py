import asyncio
from asyncio import set_event_loop_policy

from trinsic.proto.services.provider.v1 import GetOberonKeyRequest
from trinsic.provider_service import ProviderService


async def demo():
    service = ProviderService()
    response = await service.get_oberon_key(request=GetOberonKeyRequest())
    assert response is not None
    print("Package successfully installed. Sample Oberon Key below")
    print(response)


if __name__ == "__main__":
    set_event_loop_policy()
    asyncio.run(demo())
