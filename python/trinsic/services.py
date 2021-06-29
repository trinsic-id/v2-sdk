import base64
import datetime
import json
import urllib.parse
from typing import Mapping

import betterproto
from grpclib.client import Channel
from okapi.keys import LDProofs, DIDKey, DIDComm
from okapi.okapi_utils import dictionary_to_struct, struct_to_dictionary
from okapi.proto.okapi.keys import JsonWebKey, ResolveRequest, GenerateKeyRequest, KeyType
from okapi.proto.okapi.proofs import CreateProofRequest, LdSuite
from okapi.proto.okapi.transport import PackRequest, UnpackRequest

from trinsic.proto.trinsic.services import WalletProfile, WalletStub, CredentialStub, CreateWalletRequest, \
    CreateWalletResponse, SearchResponse, ProviderStub, InviteRequest, InviteResponse, InvitationStatusRequest, \
    InvitationStatusResponse


class ServiceBase:
    def __init__(self):
        self.cap_invocation: str = ""

    @property
    def metadata(self) -> Mapping[str, str]:
        if not self.cap_invocation:
            raise Exception("Profile not set")
        return {"capability-invocation": self.cap_invocation}

    def set_profile(self, profile: WalletProfile):
        capability_doc = {"@context": "https://w3id.org/security/v2",
                          "invocationTarget": profile.wallet_id,
                          "proof": {
                              "proofPurpose": "capabilityInvocation",
                              "created": datetime.datetime.now().isoformat(),
                              "capability": profile.capability
                          }}

        proof_response = LDProofs.create(CreateProofRequest(key=JsonWebKey().parse(profile.invoker_jwk),
                                                            document=dictionary_to_struct(capability_doc),
                                                            suite=LdSuite.JcsEd25519Signature2020))

        proof_json = json.dumps(struct_to_dictionary(proof_response.signed_document), indent=2)
        self.cap_invocation = str(base64.standard_b64encode(bytes(proof_json, encoding="ascii")))


class WalletService(ServiceBase):
    def __init__(self, service_address: str = "http://localhost:5000", channel: Channel = None):
        super().__init__()
        if not channel:
            service_url = urllib.parse.urlsplit(service_address)
            channel = Channel(host=f"{service_url.hostname}", port=service_url.port)

        self.channel = channel
        self.client = WalletStub(self.channel)
        self.credential_client = CredentialStub(self.channel)

    async def register_or_connect(self, email: str):
        await self.client.connect_external_identity(email=email)

    async def create_wallet(self, security_code: str = None) -> WalletProfile:
        configuration = await self.client.get_provider_configuration()
        resolve_response = DIDKey.resolve(ResolveRequest(did=configuration.key_agreement_key_id))
        provider_exchange_key = [x for x in resolve_response.keys if x.kid == configuration.key_agreement_key_id][0]

        my_key = DIDKey.generate(GenerateKeyRequest(key_type=KeyType.Ed25519))
        my_exchange_key = [x for x in my_key.key if x.crv == "X25519"][0]
        my_did_document_id = my_key.did_document.fields['id']

        packed_message = DIDComm.pack(PackRequest(sender_key=my_exchange_key, receiver_key=provider_exchange_key,
                                                  plaintext=bytes(CreateWalletRequest(
                                                      description="My Cloud Wallet",
                                                      controller=str(my_did_document_id.string_value),
                                                      security_code=security_code or ""))))

        response = await self.client.create_wallet_encrypted(iv=packed_message.message.iv,
                                                             recipients=packed_message.message.recipients,
                                                             ciphertext=packed_message.message.ciphertext,
                                                             aad=packed_message.message.aad,
                                                             tag=packed_message.message.tag)

        decrypted_response = DIDComm.unpack(UnpackRequest(message=response, receiver_key=my_exchange_key,
                                                          sender_key=provider_exchange_key))
        create_wallet_response = CreateWalletResponse().parse(decrypted_response.plaintext)

        return WalletProfile(wallet_id=create_wallet_response.wallet_id,
                             capability=create_wallet_response.capability,
                             did_document=my_key.did_document,
                             invoker=create_wallet_response.invoker,
                             invoker_jwk=bytes(my_key.key[0]))

    async def issue_credential(self, document: dict) -> dict:
        self.credential_client.metadata = self.metadata
        response = await self.credential_client.issue(document=dictionary_to_struct(document))
        return response.document.to_dict()

    async def search(self, query: str = "SELECT * from c") -> SearchResponse:
        self.client.metadata = self.metadata
        return await self.client.search(query=query)

    async def insert_item(self, item: dict) -> str:
        self.client.metadata = self.metadata
        return (await self.client.insert_item(item=dictionary_to_struct(item))).item_id

    async def send(self, document: dict, email: str):
        self.client.metadata = self.metadata
        await self.credential_client.send(email=email, document=dictionary_to_struct(document))

    async def create_proof(self, document_id: str, reveal_document: dict) -> dict:
        self.client.metadata = self.metadata
        return (await self.credential_client.create_proof(document_id=document_id, reveal_document=dictionary_to_struct(
            reveal_document))).proof_document.to_dict()

    async def verify_proof(self, proof_document: dict) -> bool:
        self.client.metadata = self.metadata
        return (await self.credential_client.verify_proof(proof_document=dictionary_to_struct(proof_document))).valid


class ProviderService(ServiceBase):
    def __init__(self, service_address: str = "http://localhost:5000", channel: Channel = None):
        super().__init__()
        if not channel:
            service_url = urllib.parse.urlsplit(service_address)
            channel = Channel(host=f"{service_url.hostname}", port=service_url.port)

        self.channel = channel
        self.provider_client = ProviderStub(self.channel)

    async def invite_participant(self, request: InviteRequest) -> InviteResponse:
        field_name, value = betterproto.which_one_of(request, "contact_method")
        if not field_name:
            raise Exception("Contact method must be set")

        self.provider_client.metadata = self.metadata
        return await self.provider_client.invite(participant=request.participant, description=request.description,
                                                     didcomm_invitation=request.didcomm_invitation, phone=request.phone,
                                                     email=request.email)

    async def invitation_status(self, request: InvitationStatusRequest) -> InvitationStatusResponse:
        if not request.invitation_id or not request.invitation_id.strip():
            raise Exception("Onboarding reference ID must be set.")

        self.provider_client.metadata = self.metadata
        return await self.provider_client.invitation_status(invitation_id=request.invitation_id)

