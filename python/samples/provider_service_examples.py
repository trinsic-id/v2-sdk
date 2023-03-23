from trinsic.proto.services.account.v1 import AccountDetails
from trinsic.proto.services.common.v1 import SupportedDidMethod
from trinsic.proto.services.provider.v1 import *
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

# BEGIN Doc Code generated by protoc-gen-trinsic. DO NOT EDIT.
# target: C:\work\sdk\python\samples\provider_service_examples.py

# createProviderService() {
trinsic_service = TrinsicService(
    server_config=trinsic_config(auth_token="YOUR-AUTH-TOKEN")
)
provider_service = trinsic_service.provider
# }

# providerCreateEcosystem() {
create_ecosystem_response = await provider_service.create_ecosystem(
    request=CreateEcosystemRequest(
        name="YOUR-NAME",
        description="YOUR-DESCRIPTION",
        uri="YOUR-URI",
        details=AccountDetails(),
        domain="YOUR-DOMAIN",
    )
)
# }

# providerUpdateEcosystem() {
update_ecosystem_response = await provider_service.update_ecosystem(
    request=UpdateEcosystemRequest(
        description="YOUR-DESCRIPTION",
        uri="YOUR-URI",
        domain="YOUR-DOMAIN",
        display=EcosystemDisplayRequest(),
    )
)
# }

# providerAddWebhook() {
add_webhook_response = await provider_service.add_webhook(
    request=AddWebhookRequest(
        destination_url="YOUR-DESTINATION-URL",
        secret="YOUR-SECRET",
        events=["YOUR-EVENTS"],
    )
)
# }

# providerDeleteWebhook() {
delete_webhook_response = await provider_service.delete_webhook(
    request=DeleteWebhookRequest(webhook_id="YOUR-WEBHOOK-ID")
)
# }

# providerEcosystemInfo() {
ecosystem_info_response = await provider_service.ecosystem_info(
    request=EcosystemInfoRequest()
)
# }

# providerGetPublicEcosystemInfo() {
get_public_ecosystem_info_response = await provider_service.get_public_ecosystem_info(
    request=GetPublicEcosystemInfoRequest(ecosystem_id="YOUR-ECOSYSTEM-ID")
)
# }

# providerInvite() {
invite_response = await provider_service.invite(
    request=InviteRequest(
        participant=ParticipantType.participant_type_individual,
        description="YOUR-DESCRIPTION",
        details=AccountDetails(),
    )
)
# }

# providerInvitationStatus() {
invitation_status_response = await provider_service.invitation_status(
    request=InvitationStatusRequest(invitation_id="YOUR-INVITATION-ID")
)
# }

# providerGetOberonKey() {
get_oberon_key_response = await provider_service.get_oberon_key(
    request=GetOberonKeyRequest()
)
# }

# providerUpgradeDID() {
upgrade_did_response = await provider_service.upgrade_did(
    request=UpgradeDidRequest(
        email="YOUR-EMAIL",
        wallet_id="YOUR-WALLET-ID",
        did_uri="YOUR-DID-URI",
        method=SupportedDidMethod.KEY,
        ion_options=IonOptions(),
        indy_options=IndyOptions(),
    )
)
# }

# providerRetrieveDomainVerificationRecord() {
retrieve_domain_verification_record_response = (
    await provider_service.retrieve_domain_verification_record(
        request=RetrieveDomainVerificationRecordRequest()
    )
)
# }

# providerRefreshDomainVerificationStatus() {
refresh_domain_verification_status_response = (
    await provider_service.refresh_domain_verification_status(
        request=RefreshDomainVerificationStatusRequest()
    )
)
# }

# providerSearchWalletConfigurations() {
search_wallet_configurations_response = (
    await provider_service.search_wallet_configurations(
        request=SearchWalletConfigurationsRequest(
            query_filter="YOUR-QUERY-FILTER",
            continuation_token="YOUR-CONTINUATION-TOKEN",
        )
    )
)
# }

# END Doc Code generated by protoc-gen-trinsic. DO NOT EDIT.
