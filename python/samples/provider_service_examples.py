import asyncio

from trinsic.proto.services.common.v1 import SupportedDidMethod
from trinsic.proto.services.provider.v1 import (
    EcosystemInfoRequest,
    IonOptions,
    IonOptionsIonNetwork,
    UpdateEcosystemRequest,
    UpgradeDidRequest, CreateEcosystemRequest, Ecosystem, GetOberonKeyRequest, RefreshDomainVerificationStatusRequest,
)
from trinsic.provider_service import ProviderService
# createProviderService() {
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import set_eventloop_policy
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
provider_service = trinsic.provider
# }


async def create_ecosystem(provider_service: ProviderService) -> Ecosystem:
    # ProviderServiceCreateEcosystem() {
    ecosystem_response = await provider_service.create_ecosystem(
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
    response = await provider_service.update_ecosystem(request=request)
    print(response.ecosystem.description)
    # }

    # ProviderServiceEcosystemInfo() {
    response = await provider_service.ecosystem_info(request=EcosystemInfoRequest())
    ecosystem = response.ecosystem
    # }

    info_response = await trinsic.account.info()
    wallet_id = info_response.wallet_id

    # Try/catch this as ecosystems currently can't upgrade DIDs by default
    try:
        # ProviderServiceUpgradeDID() {
        upgrade_response = await provider_service.upgrade_did(
            request=UpgradeDidRequest(
                wallet_id=wallet_id,
                method=SupportedDidMethod.ION,
                ion_options=IonOptions(network=IonOptionsIonNetwork.TestNet),
            )
        )
        # }
    except:
        pass

    # ProviderServiceGetOberonKey() {
    # No arguments needed
    oberon_key = await provider_service.get_oberon_key(request=GetOberonKeyRequest())
    print(f"Generated key={oberon_key.key}")
    # }

    # ProviderServiceRetrieveDomainVerificationRecord() {
    verify_record = await provider_service.retrieve_domain_verification_record()
    print(f"Add this record to your DNS:\n"
          f"{verify_record.verification_record_name}={verify_record.verification_record_value}")
    # }

    # ProviderServiceRefreshDomainVerificationStatus() {
    print("Call this after updating your DNS record")
    verify_status = await provider_service.refresh_domain_verification_status(
        request=RefreshDomainVerificationStatusRequest()
    )
    print(f"DNS({verify_status.domain}) Verification:{verify_status.domain_verified}")
    # }

    # ProviderServiceSearchWalletConfigurations() {
    # TODO - Fill this out
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(provider_demo())
