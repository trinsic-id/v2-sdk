import asyncio
import base64

from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import AddWebhookRequest, DeleteWebhookRequest, EcosystemInfoRequest, \
    ParticipantType, InviteRequest, UpdateEcosystemRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config


async def provider_demo():
    trinsic = TrinsicService(server_config=trinsic_config())

    ecosystem_response = await trinsic.provider.create_ecosystem()
    ecosystem = ecosystem_response.ecosystem
    auth_token = base64.urlsafe_b64encode(bytes(ecosystem_response.profile)).decode("utf-8")

    trinsic.service_options.default_ecosystem = ecosystem
    trinsic.service_options.auth_token = auth_token

    # addWebhook() {
    request = AddWebhookRequest(
        destination_url="https://example.com/webhooks/trinsic",
        secret="my well-kept secret"
    )
    request.events.append("*") # Enable all events

    response = await trinsic.provider.add_webhook(request=request)
    # }

    webhook = response.ecosystem.webhooks[0]
    webhook_id = webhook.id

    # deleteWebhook() {
    response = await trinsic.provider.delete_webhook(request=DeleteWebhookRequest(webhook_id))
    # }

    # updateEcosystem() {
    request = UpdateEcosystemRequest(description="My new description", uri="https://example.com")
    response = await trinsic.provider.update_ecosystem(request=request)
    # }

    # ecosystemInfo() {
    response = await trinsic.provider.ecosystem_info(request=EcosystemInfoRequest())
    ecosystem = response.ecosystem
    # }


    try:
        invite_response = await trinsic.provider.invite_participant(
            request=InviteRequest(
                details=AccountDetails(email="nothing@trinsic.id"),
                participant=ParticipantType.participant_type_individual,
                description="I dunno",
            )
        )
        assert invite_response
    except:
        pass





if __name__ == "__main__":
    asyncio.run(provider_demo())
