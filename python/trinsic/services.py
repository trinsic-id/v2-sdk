"""
Trinsic Service wrappers
"""

import datetime
import json
import urllib.parse
from typing import Dict, List, Tuple, SupportsBytes, Union

from grpclib.client import Channel
from trinsicokapi import oberon
from trinsicokapi.proto.okapi.security.v1 import UnBlindOberonTokenRequest, BlindOberonTokenRequest

from trinsic.proto.services.account.v1 import AccountDetails, AccountProfile, ConfirmationMethod, InfoResponse, \
    AccountStub
from trinsic.proto.services.common.v1 import JsonPayload, RequestOptions, JsonFormat, ResponseStatus
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.proto.services.provider.v1 import InviteRequestDidCommInvitation, InviteResponse, \
    ParticipantType, InvitationStatusResponse, ProviderStub, CreateEcosystemRequest, CreateEcosystemResponse, Ecosystem
from trinsic.proto.services.trustregistry.v1 import GovernanceFramework, RegistrationStatus, TrustRegistryStub, \
    SearchRegistryResponse
from trinsic.proto.services.universalwallet.v1 import SearchResponse, UniversalWalletStub
from trinsic.proto.services.verifiablecredentials.v1 import VerifiableCredentialStub
from trinsic.service_base import ServiceBase
from trinsic.trinsic_util import trinsic_production_config, convert_to_epoch_seconds


class AccountService(ServiceBase):
    """Wrapper for the [Account Service](/reference/services/account-service/)"""

    def __init__(self, profile: AccountProfile = None, server_config: ServerConfig = trinsic_production_config(),
                 channel: Channel = None):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config, channel)
        self.client: AccountStub = self.stub_with_metadata(AccountStub)

    async def sign_in(self, details: AccountDetails = AccountDetails(email='')) -> Tuple[
        AccountProfile, ConfirmationMethod]:
        """
        Perform a sign-in to obtain an account profile. If the `AccountDetails` are specified, they will be used to associate
        Args:
            details:
        Returns:
        """
        response = await self.client.sign_in(details=details)
        return response.profile, response.confirmation_method

    @staticmethod
    def unprotect(profile: AccountProfile, security_code: Union[SupportsBytes, bytes, str]) -> AccountProfile:
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
    def protect(profile: AccountProfile, security_code: Union[SupportsBytes, bytes, str]) -> AccountProfile:
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

    def __init__(self, profile: AccountProfile, server_config: ServerConfig = trinsic_production_config(),
                 channel: Channel = None):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config, channel)
        self.client: VerifiableCredentialStub = self.stub_with_metadata(VerifiableCredentialStub)

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

    def __init__(self, profile: AccountProfile, server_config: ServerConfig = trinsic_production_config(),
                 channel: Channel = None):
        """
        Initialize the connection
        Args:
            server_config: The address of the server to connect, or an already-connected `Channel`
        """
        super().__init__(profile, server_config, channel)
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
            raise ValueError("Contact method must be set")

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
            raise ValueError("Onboarding reference ID must be set.")

        return await self.client.invitation_status(invitation_id=invitation_id)

    async def create_ecosystem(self, name: str = '', description: str = '', uri: str = '') -> CreateEcosystemResponse:
        """
        Creates a new ecosystem
        Args:
            name:
            description:
            uri:

        Returns:

        """
        return await self.client.create_ecosystem(name=name, description=description, uri=uri)

    async def list_ecosystems(self) -> List[Ecosystem]:
        """
        Lists all ecosystems that are owned by the authorized user
        Returns:
        """
        return (await self.client.list_ecosystems()).ecosystem


class TrustRegistryService(ServiceBase):
    """
    Wrapper for [Trust Registry Service](/reference/services/trust-registry/)
    """

    def __init__(self, profile: AccountProfile, server_config: ServerConfig = trinsic_production_config(),
                 channel: Channel = None):
        super().__init__(profile, server_config, channel)
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

            response = await self.client.add_framework(governance_framework=GovernanceFramework(
                governance_framework_uri=governance_framework,
                description=description
            ))
            if response.status != response.status.SUCCESS:
                raise RuntimeError(f"cannot register verifier: code {response.status}")
        else:
            raise ValueError(f"Invalid URI string={governance_framework}")

    async def register_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                              valid_from: datetime.datetime = None,
                              valid_until: datetime.datetime = None) -> None:
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
        valid_from_epoch, valid_until_epoch = convert_to_epoch_seconds(valid_from, valid_until)

        response = await self.client.register_issuer(did_uri=issuer_did,
                                                     credential_type_uri=credential_type,
                                                     governance_framework_uri=governance_framework,
                                                     valid_from_utc=int(valid_from_epoch),
                                                     valid_until_utc=int(valid_until_epoch))

        if response.status != ResponseStatus.SUCCESS:
            raise RuntimeError(f"cannot register verifier: code {response.status}")

    async def unregister_issuer(self, issuer_did: str, credential_type: str, governance_framework: str,
                                valid_from: datetime.datetime = None, valid_until: datetime.datetime = None) -> None:
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
                                valid_from: datetime.datetime = None,
                                valid_until: datetime.datetime = None) -> None:
        """
        [Register the verifier](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        """
        valid_from_epoch, valid_until_epoch = convert_to_epoch_seconds(valid_from, valid_until)

        response = await self.client.register_verifier(did_uri=verifier_did,
                                                       presentation_type_uri=presentation_type,
                                                       governance_framework_uri=governance_framework,
                                                       valid_from_utc=int(valid_from_epoch),
                                                       valid_until_utc=int(valid_until_epoch))
        if response.status != ResponseStatus.SUCCESS:
            raise RuntimeError(f"cannot register verifier: code {response.status}")

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

    async def search_registry(self, query: str = "SELECT * FROM c") -> SearchRegistryResponse:
        """
        [Search the registry](/reference/services/trust-registry/#search)
        Args:
            query: Search query
        Returns:
            [SearchRegistryResponse](/reference/proto/#searchregistryresponse)
        """

        return await self.client.search_registry(query=query, options=RequestOptions(
            response_json_format=JsonFormat.Protobuf))


class WalletService(ServiceBase):
    """
    Wrapper for the [Wallet Service](/reference/services/wallet-service/)
    """

    def __init__(self, profile: AccountProfile, server_config: ServerConfig = trinsic_production_config(),
                 channel: Channel = None):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config, channel)
        self.client: UniversalWalletStub = self.stub_with_metadata(UniversalWalletStub)

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
