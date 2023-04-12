import asyncio
import base64

from trinsic.proto.services.provider.v1 import (
    EcosystemInfoRequest,
    UpdateEcosystemRequest,
)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def provider_demo():
    trinsic = TrinsicService(server_config=trinsic_config())

    ecosystem_response = await trinsic.provider.create_ecosystem()
    ecosystem = ecosystem_response.ecosystem
    auth_token = base64.urlsafe_b64encode(bytes(ecosystem_response.profile)).decode(
        "utf-8"
    )

    trinsic.service_options.default_ecosystem = ecosystem
    trinsic.service_options.auth_token = auth_token

    # updateEcosystem() {
    request = UpdateEcosystemRequest(
        description="My new description", uri="https://example.com"
    )
    response = await trinsic.provider.update_ecosystem(request=request)
    # }

    # ecosystemInfo() {
    response = await trinsic.provider.ecosystem_info(request=EcosystemInfoRequest())
    ecosystem = response.ecosystem
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(provider_demo())
