import datetime
import json
import urllib.parse
from typing import Dict, List, Union

from grpclib.client import Channel

from trinsic.proto.services.common.v1 import JsonPayload, RequestOptions, JsonFormat
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.proto.services.provider.v1 import InviteRequestDidCommInvitation, InviteResponse, \
    ParticipantType, InvitationStatusResponse
from trinsic.proto.services.trustregistry.v1 import GovernanceFramework, RegistrationStatus
from trinsic.proto.services.universalwallet.v1 import WalletProfile, SearchResponse
from trinsic.service_base import ServiceBase
from trinsic._service_wrappers import _WalletStubWithMetadata, _CredentialStubWithMetadata, _ProviderStubWithMetadata, \
    _TrustRegistryStubWithMetadata
from trinsic.trinsic_util import trinsic_production_config, create_channel


class WalletService(ServiceBase):
    """
    Wrapper for the wallet service
    TODO: /reference/services/wallet-service/
    """

    def __init__(self, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        """
        Initialize a connection to the server.
        :param service_address: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__()
        self.channel = create_channel(service_address)
        self.client = _WalletStubWithMetadata(self)
        self.credential_client = _CredentialStubWithMetadata(self)

    def close(self):
        if self.channel:
            self.channel.close()

    async def register_or_connect(self, email: str) -> None:
        """
        Connect to the appropriate external identity by email
        :param email: Email address
        """
        await self.client.connect_external_identity(email=email)

    async def create_wallet(self, security_code: str = None) -> WalletProfile:
        """
        TODO: /python/vaccination-python.md

        :param security_code: Optional security code to use from a provider initiated invitation
        :return: `WalletProfile` of the created wallet
        """
        create_wallet_response = await self.client.create_wallet(security_code=security_code or "")
        return WalletProfile(auth_data=create_wallet_response.auth_data,
                             auth_token=create_wallet_response.auth_token,
                             is_protected=create_wallet_response.is_protected)

    async def issue_credential(self, document: dict) -> dict:
        """
        TODO: /reference/services/wallet-service/#issue-credential
        :param document: Dictionary describing the credential
        :return: Dictionary with the issued credential
        """
        response = await self.credential_client.issue(document=JsonPayload(json_string=json.dumps(document)))
        return json.loads(response.document.json_string)

    async def search(self, query: str = "SELECT * from c") -> SearchResponse:
        """
        TODO: /reference/services/wallet-service/#search-query
        :param query: SQL query to use for searching, see the docs for allowed keywords
        :return: The search response object information
        """
        return await self.client.search(query=query)

    async def insert_item(self, item: dict) -> str:
        """
        TODO: /reference/services/wallet-service/#insert-record
        :param item: Item to insert into the wallet.
        :return: `item_id` of the created record.
        """
        return (await self.client.insert_item(item=JsonPayload(json_string=json.dumps(item)))).item_id

    async def send(self, document: dict, email: str) -> None:
        """
        TODO: /reference/services/wallet-service/#sending-documents-using-email-as-identifier
        :param document: Document to send
        :param email: Email to which the document is sent
        """
        await self.credential_client.send(email=email, document=JsonPayload(json_string=json.dumps(document)))

    async def create_proof(self, document_id: str, reveal_document: dict) -> dict:
        """
        TODO: /reference/services/wallet-service/#create-proof
        :param document_id: document in the wallet that is signed
        :param reveal_document: JSONLD frame describing what data is to be disclosed.
        """
        return json.loads((await self.credential_client.create_proof(
            document_id=document_id, reveal_document=JsonPayload(
                json_string=json.dumps(reveal_document)))).proof_document.json_string)

    async def verify_proof(self, proof_document: dict) -> bool:
        """
        TODO: /reference/services/wallet-service/#verify-proof
        :param proof_document: Document to verify
        :return: `True` if verified, `False` if not verified
        """
        return (await self.credential_client.verify_proof(
            proof_document=JsonPayload(json_string=json.dumps(proof_document)))).valid


class ProviderService(ServiceBase):
    """
    Wrapper for the provider service.
    TODO: /reference/services/provider-service
    """

    def __init__(self, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        super().__init__()
        self.channel = create_channel(service_address)
        self.provider_client = _ProviderStubWithMetadata(self)

    def close(self):
        if self.channel:
            self.channel.close()

    async def invite_participant(self,
                                 participant: ParticipantType = None,
                                 description: str = None,
                                 email: str = None,
                                 phone: str = None,
                                 didcomm_invitation: InviteRequestDidCommInvitation = None) -> InviteResponse:
        """
        TODO: /reference/services/provider-service/#invite-participants
        :param participant: TODO: /reference/proto/#participanttype
        :param description:
        :param email:
        :param phone:
        :param didcomm_invitation: TODO: /reference/proto/#inviterequestdidcomminvitation
        :return: TODO: /reference/proto/#inviteresponse
        """
        if not email and not phone:
            raise Exception("Contact method must be set")

        return await self.provider_client.invite(participant=participant,
                                                 description=description,
                                                 phone=phone,
                                                 email=email,
                                                 didcomm_invitation=didcomm_invitation)

    async def invitation_status(self, invitation_id: str = '') -> InvitationStatusResponse:
        """
        TODO: /reference/services/provider-service/#check-invitation-status
        :param invitation_id: invitation id returned from `invite_participant()`
        :return: TODO: /reference/proto/#invitationstatusresponsestatus
        """
        if not invitation_id or not invitation_id.strip():
            raise Exception("Onboarding reference ID must be set.")

        return await self.provider_client.invitation_status(invitation_id=invitation_id)


class TrustRegistryService(ServiceBase):
    """
    Wrapper for Trust Registry Service
    TODO: /reference/services/trust-registry/
    """

    def __init__(self, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        super().__init__()
        self.channel = create_channel(service_address)
        self.provider_client = _TrustRegistryStubWithMetadata(self)

    def close(self):
        if self.channel:
            self.channel.close()

    async def register_governance_framework(self, governance_framework: str, description: str) -> None:
        """
        TODO: /reference/services/trust-registry/#create-a-ecosystem-governance-framework
        :param governance_framework:
        :param description:
        """
        governance_url = urllib.parse.urlsplit(governance_framework, allow_fragments=False)
        # Verify complete url
        if governance_url.scheme and governance_url.netloc and governance_url.path:

            await self.provider_client.add_framework(governance_framework=GovernanceFramework(
                governance_framework_uri=governance_framework,
                description=description
            ))
        else:
            raise ValueError(f"Invalid URI string={governance_framework}")

    async def register_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                              valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        TODO: /reference/services/trust-registry/#register-issuers-and-verifiers
        :param issuer_did:
        :param credential_type:
        :param governance_framework:
        :param valid_from:
        :param valid_until:
        """
        # TODO - Handle nones for valid_from, valid_until

        await self.provider_client.register_issuer(did_uri=issuer_did,
                                                   credential_type_uri=credential_type,
                                                   governance_framework_uri=governance_framework,
                                                   valid_from_utc=int(valid_from.timestamp()),
                                                   valid_until_utc=int(valid_until.timestamp()))

    async def unregister_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                                valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        TODO: /reference/services/trust-registry/#unregister-issuers-and-verifiers
        :param issuer_did:
        :param credential_type:
        :param governance_framework:
        :param valid_from:
        :param valid_until:
        """
        raise NotImplementedError

    async def register_verifier(self, verifier_did: str, presentation_type: str, governance_framework: str,
                                valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        TODO: /reference/services/trust-registry/#register-issuers-and-verifiers
        :param verifier_did:
        :param presentation_type:
        :param governance_framework:
        :param valid_from:
        :param valid_until:
        """

        await self.provider_client.register_verifier(did_uri=verifier_did,
                                                     presentation_type_uri=presentation_type,
                                                     governance_framework_uri=governance_framework,
                                                     valid_from_utc=int(valid_from.timestamp()),
                                                     valid_until_utc=int(valid_until.timestamp()))

    async def unregister_verifier(self, verifier_did: str, presentation_type: str, governance_framework: str,
                                  valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        TODO: /reference/services/trust-registry/#unregister-issuers-and-verifiers
        :param verifier_did:
        :param presentation_type:
        :param governance_framework:
        :param valid_from:
        :param valid_until:
        """
        raise NotImplementedError

    async def check_issuer_status(self, issuer_did: str, credential_type: str,
                                  governance_framework: str) -> RegistrationStatus:
        """
        TODO: /reference/services/trust-registry/#check-authoritative-status
        :param issuer_did:
        :param credential_type:
        :param governance_framework:
        :return: TODO: /reference/proto/#checkissuerstatusresponse
        """

        return (await self.provider_client.check_issuer_status(governance_framework_uri=governance_framework,
                                                               did_uri=issuer_did,
                                                               credential_type_uri=credential_type)).status

    async def check_verifier_status(self, issuer_did: str, presentation_type: str,
                                    governance_framework: str) -> RegistrationStatus:
        """
        TODO: /reference/services/trust-registry/#check-authoritative-status
        :param issuer_did:
        :param presentation_type:
        :param governance_framework:
        :return:TODO: /reference/proto/#checkverifierstatusresponse
        """

        return (await self.provider_client.check_verifier_status(governance_framework_uri=governance_framework,
                                                                 did_uri=issuer_did,
                                                                 presentation_type_uri=presentation_type)).status

    async def search_registry(self, query: str = "SELECT * FROM c") -> List[Dict]:
        """
        TODO: /reference/services/trust-registry/#search
        :param query: Search query
        :return: TODO: /reference/proto/#searchregistryresponse
        """

        response = await self.provider_client.search_registry(query=query, options=RequestOptions(
            response_json_format=JsonFormat.Protobuf))

        return [item.json_struct.to_dict() for item in response.items]
