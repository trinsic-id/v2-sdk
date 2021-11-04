import base64
import datetime
import json
import urllib.parse
from distutils.util import strtobool
from os import getenv
from typing import Mapping, Dict, List, Union

from betterproto import Message
from blake3 import blake3
from grpclib.client import Channel
from okapi.proto.okapi.security.v1 import CreateOberonProofRequest
from okapi.wrapper import Oberon

from trinsic.proto.services.common.v1 import JsonPayload, RequestOptions, JsonFormat
from trinsic.proto.services.common.v1 import Nonce, ServerConfig
from trinsic.proto.services.provider.v1 import ProviderStub, InviteRequestDidCommInvitation, InviteResponse, \
    ParticipantType, InvitationStatusResponse
from trinsic.proto.services.trustregistry.v1 import TrustRegistryStub, GovernanceFramework, RegistrationStatus
from trinsic.proto.services.universalwallet.v1 import WalletProfile, WalletStub, SearchResponse
from trinsic.proto.services.verifiablecredentials.v1 import CredentialStub


def get_test_server_config() -> ServerConfig:
    endpoint = getenv('TEST_SERVER_ENDPOINT')
    port = int(getenv('TEST_SERVER_PORT', 443))
    use_tls = bool(strtobool(getenv('TEST_SERVER_USE_TLS', 'true')))
    return ServerConfig(endpoint=endpoint, port=port, use_tls=use_tls)


def create_channel(config: Union[ServerConfig, str, Channel]) -> Channel:
    """
    Create the channel from the provided URL
    :param config: Server configuration
    :return: connected `Channel`
    """
    if isinstance(config, Channel):
        channel = config
    elif isinstance(config, str):
        service_url = urllib.parse.urlsplit(config)
        is_https = service_url.scheme == "https"
        channel = Channel(host=f"{service_url.hostname}", port=service_url.port, ssl=is_https)
    elif isinstance(config, ServerConfig):
        channel = Channel(host=config.endpoint, port=config.port, ssl=config.use_tls)
    else:
        raise NotImplementedError(f"config type={type(config)} not supported.")
    return channel


def trinsic_production_config() -> ServerConfig:
    return ServerConfig(endpoint="prod.trinsic.cloud", port=443, use_tls=True)


class ServiceBase:
    """
    Base class for service wrapper classes, provides the metadata functionality in a consistent manner.
    """

    def __init__(self):
        self.profile: WalletProfile = None

    def close(self):
        raise NotImplementedError("Must be overridden in derived class to close GRPC channels")

    def get_metadata(self, request: Message) -> Mapping[str, str]:
        """
        Create call metadata by setting required authentication headers
        :return: authentication headers
        """
        if not self.profile:
            raise ValueError("Profile not set")

        # compute the hash of the request and capture current timestamp
        request_hash = blake3(bytes(request)).digest()
        nonce = Nonce(timestamp=int(datetime.datetime.now().timestamp()*1000), request_hash=request_hash)
        proof = Oberon.create_proof(CreateOberonProofRequest(token=self.profile.auth_token, data=self.profile.auth_data, nonce=bytes(nonce)))
        return {"Authorization": f"Oberon proof={base64.urlsafe_b64encode(bytes(proof.proof))},"
                                 f"data={base64.urlsafe_b64encode(bytes(self.profile.auth_data))},"
                                 f"nonce={base64.urlsafe_b64encode(bytes(nonce))}"}


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
        self.client = WalletStub(self.channel)
        self.credential_client = CredentialStub(self.channel)

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
        TODO: /reference/services/wallet-service/#create-wallet
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
        self.credential_client.metadata = self.metadata
        response = await self.credential_client.issue(document=JsonPayload(json_string=json.dumps(document)))
        return json.loads(response.document.json_string)

    async def search(self, query: str = "SELECT * from c") -> SearchResponse:
        """
        TODO: /reference/services/wallet-service/#search-query
        :param query: SQL query to use for searching, see the docs for allowed keywords
        :return: The search response object information
        """
        self.client.metadata = self.metadata
        return await self.client.search(query=query)

    async def insert_item(self, item: dict) -> str:
        """
        TODO: /reference/services/wallet-service/#insert-record
        :param item: Item to insert into the wallet.
        :return: `item_id` of the created record.
        """
        self.client.metadata = self.metadata
        return (await self.client.insert_item(item=JsonPayload(json_string=json.dumps(item)))).item_id

    async def send(self, document: dict, email: str) -> None:
        """
        TODO: /reference/services/wallet-service/#sending-documents-using-email-as-identifier
        :param document: Document to send
        :param email: Email to which the document is sent
        """
        self.client.metadata = self.metadata
        await self.credential_client.send(email=email, document=JsonPayload(json_string=json.dumps(document)))

    async def create_proof(self, document_id: str, reveal_document: dict) -> dict:
        """
        TODO: /reference/services/wallet-service/#create-proof
        :param document_id: document in the wallet that is signed
        :param reveal_document: JSONLD frame describing what data is to be disclosed.
        """
        self.credential_client.metadata = self.metadata
        return json.loads((await self.credential_client.create_proof(
            document_id=document_id, reveal_document=JsonPayload(
                json_string=json.dumps(reveal_document)))).proof_document.json_string)

    async def verify_proof(self, proof_document: dict) -> bool:
        """
        TODO: /reference/services/wallet-service/#verify-proof
        :param proof_document: Document to verify
        :return: `True` if verified, `False` if not verified
        """
        self.credential_client.metadata = self.metadata
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
        self.provider_client = ProviderStub(self.channel)

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
        self.provider_client = TrustRegistryStub(self.channel)

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
            self.provider_client.metadata = self.metadata
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
        self.provider_client.metadata = self.metadata
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
        self.provider_client.metadata = self.metadata
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
        self.provider_client.metadata = self.metadata
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
        self.provider_client.metadata = self.metadata
        return (await self.provider_client.check_verifier_status(governance_framework_uri=governance_framework,
                                                                 did_uri=issuer_did,
                                                                 presentation_type_uri=presentation_type)).status

    async def search_registry(self, query: str = "SELECT * FROM c") -> List[Dict]:
        """
        TODO: /reference/services/trust-registry/#search
        :param query: Search query
        :return: TODO: /reference/proto/#searchregistryresponse
        """
        self.provider_client.metadata = self.metadata
        response = await self.provider_client.search_registry(query=query, options=RequestOptions(
            response_json_format=JsonFormat.Protobuf))

        return [item.json_struct.to_dict() for item in response.items]
