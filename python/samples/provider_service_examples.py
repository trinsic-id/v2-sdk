import asyncio
import base64
from trinsic.proto.services.common.v1 import SupportedDidMethod

from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.provider.v1 import (
    EcosystemInfoRequest,
    IonOptions,
    IonOptionsIonNetwork,
    ParticipantType,
    InviteRequest,
    UpdateEcosystemRequest,
    UpgradeDidRequest, CreateEcosystemRequest, CreateEcosystemResponse, Ecosystem,
)
from trinsic.provider_service import ProviderService

from trinsic.trinsic_util import set_eventloop_policy

# createProviderService() {
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
provider_service = trinsic.provider
# }

# ProviderServiceInvite() {
# TODO - Fill this out
# }

# ProviderServiceInvitationStatus() {
# TODO - Fill this out
# }

# ProviderServiceGetOberonKey() {
# TODO - Fill this out
# }

# ProviderServiceRetrieveDomainVerificationRecord() {
# TODO - Fill this out
# }

# ProviderServiceRefreshDomainVerificationStatus() {
# TODO - Fill this out
# }

# ProviderServiceSearchWalletConfigurations() {
# TODO - Fill this out
# }


async def create_ecosystem(provider_service: ProviderService) -> Ecosystem:
    # ProviderServiceCreateEcosystem() {
    ecosystem_response = await trinsic.provider.create_ecosystem(
        request=CreateEcosystemRequest(
            description="My demo ecosystem description",

        )
    )
    ecosystem = ecosystem_response.ecosystem
    # }
    return ecosystem

async def provider_demo():
    ecosystem = await create_ecosystem(provider_service)

    # ProviderServiceUpdateEcosystem() {
    request = UpdateEcosystemRequest(
        description="My new description", uri="https://example.com"
    )
    response = await trinsic.provider.update_ecosystem(request=request)
    print(response.ecosystem.description)
    # }

    # ProviderServiceEcosystemInfo() {
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

    info_response = await trinsic.account.info()
    wallet_id = info_response.wallet_id

    # Try/catch this as ecosystems currently can't upgrade DIDs by default
    try:
        # ProviderServiceUpgradeDID() {
        upgrade_response = await trinsic.provider.upgrade_did(
            request=UpgradeDidRequest(
                wallet_id=wallet_id,
                method=SupportedDidMethod.ION,
                ion_options=IonOptions(network=IonOptionsIonNetwork.TestNet),
            )
        )
        # }
    except:
        pass


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(provider_demo())
