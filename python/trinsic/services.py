"""
Trinsic Service wrappers
"""

import datetime
import json
import urllib.parse
from typing import Dict, List, Union, Tuple

from grpclib.client import Channel
from trinsicokapi import oberon
from trinsicokapi.proto.okapi.security.v1 import UnBlindOberonTokenRequest, BlindOberonTokenRequest

from trinsic.proto.services.account.v1 import AccountDetails, AccountProfile, ConfirmationMethod, InfoResponse, \
    AccountServiceStub
from trinsic.proto.services.common.v1 import JsonPayload, RequestOptions, JsonFormat
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.proto.services.provider.v1 import InviteRequestDidCommInvitation, InviteResponse, \
    ParticipantType, InvitationStatusResponse, ProviderStub
from trinsic.proto.services.trustregistry.v1 import GovernanceFramework, RegistrationStatus, TrustRegistryStub
from trinsic.proto.services.universalwallet.v1 import SearchResponse, WalletServiceStub
from trinsic.proto.services.verifiablecredentials.v1 import CredentialStub
from trinsic.service_base import ServiceBase
from trinsic.trinsic_util import trinsic_production_config


class AccountService(ServiceBase):
    """Wrapper for the [Account Service](/reference/services/account-service/)"""

    def __init__(self, profile: AccountProfile = None, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        """
        Initialize a connection to the server.
        Args:
            service_address: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, service_address)
        self.client: AccountServiceStub = self.stub_with_metadata(AccountServiceStub)

    async def sign_in(self, details: AccountDetails = AccountDetails) -> Tuple[AccountProfile, ConfirmationMethod]:
        """
        Perform a sign-in to obtain an account profile. If the `AccountDetails` are specified, they will be used to associate
        Args:
            details:
        Returns:
        """
        response = await self.client.sign_in(details=details)
        return response.profile, response.confirmation_method

    @staticmethod
    def unprotect(profile: AccountProfile, security_code: str) -> AccountProfile:
        """
        Unprotects the account profile using a security code. The confirmation method field will specify how this code was communicated with the account owner.
        Args:
            profile:
            security_code:
        Returns:
            The in-place modified profile
        """
        request = UnBlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.unblind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = False
        profile.protection.method = ConfirmationMethod.None_
        return profile

    @staticmethod
    def protect(profile: AccountProfile, security_code: str) -> AccountProfile:
        """
        Protects the account profile with a security code. The code can be a PIN, password, keychain secret, etc.
        Args:
            profile:
            security_code:
        Returns:
        """
        request = BlindOberonTokenRequest(token=profile.auth_token)
        request.blinding.append(bytes(security_code))
        result = oberon.blind_token(request)
        profile.auth_token = result.token
        profile.protection.enabled = True
        profile.protection.method = ConfirmationMethod.Other
        return profile

    async def get_info(self) -> InfoResponse:
        """
        Return the details about the currently active account.
        Returns:
            The `InfoResponse`
        """
        return await self.client.info()


class CredentialsService(ServiceBase):
    """Wrapper for the [Credentials Service](/reference/services/Credentials-service/)"""

    def __init__(self, profile: AccountProfile, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        """
        Initialize a connection to the server.
        Args:
            service_address: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, service_address)
        self.client: CredentialStub = self.stub_with_metadata(CredentialStub)

    async def issue_credential(self, document: dict) -> dict:
        """
        [Issue a new credential](/reference/services/credentials-service/#issue-credential)
        Args:
            document: Dictionary describing the credential
        Returns:
            Dictionary with the issued credential
        """
        response = await self.client.issue(document=JsonPayload(json_string=json.dumps(document)))
        return json.loads(response.document.json_string)

    async def create_proof(self, document_id: str, reveal_document: dict) -> dict:
        """
        [Create a proof](/reference/services/wallet-service/#create-proof)
        Args:
            document_id: document in the wallet that is signed
            reveal_document: JSONLD frame describing what data is to be disclosed.
        Returns:
            The JSONLD proof
        """
        return json.loads((await self.client.create_proof(
            document_id=document_id, reveal_document=JsonPayload(
                json_string=json.dumps(reveal_document)))).proof_document.json_string)

    async def verify_proof(self, proof_document: dict) -> bool:
        """
        [Verify a proof](/reference/services/wallet-service/#verify-proof)
        Args:
            proof_document: Document to verify
        Returns:
            `True` if verified, `False` if not verified
        """
        return (await self.client.verify_proof(
            proof_document=JsonPayload(json_string=json.dumps(proof_document)))).valid

    async def send(self, document: dict, email: str) -> None:
        """
        [Send the provided document to the given email](/reference/services/wallet-service/#sending-documents-using-email-as-identifier)
        Args:
            document: Document to send
            email: Email to which the document is sent
        """
        await self.client.send(email=email, document=JsonPayload(json_string=json.dumps(document)))


class ProviderService(ServiceBase):
    """
    Wrapper for the [Provider Service](/reference/services/provider-service)
    """

    def __init__(self, profile: AccountProfile, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        """
        Initialize the connection
        Args:
            service_address: The address of the server to connect, or an already-connected `Channel`
        """
        super().__init__(profile, service_address)
        self.client: ProviderStub = self.stub_with_metadata(ProviderStub)

    async def invite_participant(self,
                                 participant: ParticipantType = None,
                                 description: str = None,
                                 email: str = None,
                                 phone: str = None,
                                 didcomm_invitation: InviteRequestDidCommInvitation = None) -> InviteResponse:
        """
        [Invite a new participant to the provider ecosystem](/reference/services/provider-service/#invite-participants)
        Args:
            participant: [ParticipantType](/reference/proto/#participanttype)
            description:
            email:
            phone:
            didcomm_invitation: [InviteRequestDidCommInvitation](/reference/proto/#inviterequestdidcomminvitation)
        Returns:
            [InviteResponse](/reference/proto/#inviteresponse)
        """
        if not email and not phone:
            raise Exception("Contact method must be set")

        return await self.client.invite(participant=participant,
                                                 description=description,
                                                 phone=phone,
                                                 email=email,
                                                 didcomm_invitation=didcomm_invitation)

    async def invitation_status(self, invitation_id: str = '') -> InvitationStatusResponse:
        """
        [Check invitation status](/reference/services/provider-service/#check-invitation-status)
        Args:
            invitation_id: invitation id returned from `invite_participant()`
        Returns:
            [InvitationStatusResponse](/reference/proto/#invitationstatusresponsestatus)
        """
        if not invitation_id or not invitation_id.strip():
            raise Exception("Onboarding reference ID must be set.")

        return await self.client.invitation_status(invitation_id=invitation_id)


class TrustRegistryService(ServiceBase):
    """
    Wrapper for [Trust Registry Service](/reference/services/trust-registry/)
    """

    def __init__(self, profile: AccountProfile, service_address: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        super().__init__(profile, service_address)
        self.client: TrustRegistryStub = self.stub_with_metadata(TrustRegistryStub)

    async def register_governance_framework(self, governance_framework: str, description: str) -> None:
        """
        [Create a governance framework](/reference/services/trust-registry/#create-a-ecosystem-governance-framework)
        Args:
            governance_framework:
            description:
        """
        governance_url = urllib.parse.urlsplit(governance_framework, allow_fragments=False)
        # Verify complete url
        if governance_url.scheme and governance_url.netloc and governance_url.path:

            await self.client.add_framework(governance_framework=GovernanceFramework(
                governance_framework_uri=governance_framework,
                description=description
            ))
        else:
            raise ValueError(f"Invalid URI string={governance_framework}")

    async def register_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                              valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        [Register the issuer](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            ValueError: if date ranges are not provided
        """
        if not valid_from or not valid_until:
            # TODO - Handle nones for valid_from, valid_until
            raise ValueError("Provide valid_from and valid_until ranges")

        await self.client.register_issuer(did_uri=issuer_did,
                                                   credential_type_uri=credential_type,
                                                   governance_framework_uri=governance_framework,
                                                   valid_from_utc=int(valid_from.timestamp()),
                                                   valid_until_utc=int(valid_until.timestamp()))

    async def unregister_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                                valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        [Unregister the issuer](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            NotImplementedError: Unsupported call
        """
        raise NotImplementedError

    async def register_verifier(self, verifier_did: str, presentation_type: str, governance_framework: str,
                                valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        [Register the verifier](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        """

        await self.client.register_verifier(did_uri=verifier_did,
                                                     presentation_type_uri=presentation_type,
                                                     governance_framework_uri=governance_framework,
                                                     valid_from_utc=int(valid_from.timestamp()),
                                                     valid_until_utc=int(valid_until.timestamp()))

    async def unregister_verifier(self, verifier_did: str, presentation_type: str, governance_framework: str,
                                  valid_from: datetime.datetime, valid_until: datetime.datetime) -> None:
        """
        [Unregister the verifier](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            NotImplementedError: Unsupported call
        """
        raise NotImplementedError

    async def check_issuer_status(self, issuer_did: str, credential_type: str,
                                  governance_framework: str) -> RegistrationStatus:
        """
        [Check for authoritative status](/reference/services/trust-registry/#check-authoritative-status)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
        Returns:
            [RegistrationStatus](/reference/proto/#checkissuerstatusresponse)
        """

        return (await self.client.check_issuer_status(governance_framework_uri=governance_framework,
                                                               did_uri=issuer_did,
                                                               credential_type_uri=credential_type)).status

    async def check_verifier_status(self, issuer_did: str, presentation_type: str,
                                    governance_framework: str) -> RegistrationStatus:
        """
        [Check verifier status](/reference/services/trust-registry/#check-authoritative-status)
        Args
            issuer_did: Issuer DID
            presentation_type: Presentation type
            governance_framework: Governance framework
        Returns:
            [RegistrationStatus](/reference/proto/#registrationstatus)
        """

        return (await self.client.check_verifier_status(governance_framework_uri=governance_framework,
                                                                 did_uri=issuer_did,
                                                                 presentation_type_uri=presentation_type)).status

    async def search_registry(self, query: str = "SELECT * FROM c") -> List[Dict]:
        """
        [Search the registry](/reference/services/trust-registry/#search)
        Args:
            query: Search query
        Returns:
            [SearchRegistryResponse](/reference/proto/#searchregistryresponse)
        """

        response = await self.client.search_registry(query=query, options=RequestOptions(
            response_json_format=JsonFormat.Protobuf))

        return [item.json_struct.to_dict() for item in response.items]


class WalletService(ServiceBase):
    """
    Wrapper for the [Wallet Service](/reference/services/wallet-service/)
    """

    def __init__(self, profile: AccountProfile, server_config: Union[str, ServerConfig, Channel] = trinsic_production_config()):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config)
        self.client: WalletServiceStub = self.stub_with_metadata(WalletServiceStub)

    def close(self):
        """
        Close the channel
        """
        if self.channel:
            self.channel.close()

    async def search(self, query: str = "SELECT * from c") -> SearchResponse:
        """
        [Search for crdentials](/reference/services/wallet-service/#search-query)
        Args:
             query: SQL query to use for searching, see the docs for allowed keywords
        Returns:
            The search response object information
        """
        return await self.client.search(query=query)

    async def insert_item(self, item: dict) -> str:
        """
        [Insert a new item](/reference/services/wallet-service/#insert-record)
        Args:
            item: Item to insert into the wallet.
        Returns:
            `item_id` of the created record.
        """
        return (await self.client.insert_item(item=JsonPayload(json_string=json.dumps(item)))).item_id
