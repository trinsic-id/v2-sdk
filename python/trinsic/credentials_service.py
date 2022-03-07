import json

from grpclib.client import Channel

from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.common.v1 import ServerConfig, JsonPayload
from trinsic.proto.services.verifiablecredentials.v1 import (
    VerifiableCredentialStub,
    CheckStatusResponse,
)
from trinsic.service_base import ServiceBase, ResponseStatusException
from trinsic.trinsic_util import trinsic_production_config


class CredentialsService(ServiceBase):
    """Wrapper for the [Credentials Service](/reference/services/Credentials-service/)"""

    def __init__(
        self,
        *,
        profile: AccountProfile,
        server_config: ServerConfig = None,
        channel: Channel = None
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(profile, server_config, channel)
        self.client: VerifiableCredentialStub = self.stub_with_metadata(
            VerifiableCredentialStub
        )

    async def issue_credential(self, document: dict) -> dict:
        """
        [Issue a new credential](/reference/services/credentials-service/#issue-credential)
        Args:
            document: Dictionary describing the credential
        Returns:
            Dictionary with the issued credential
        """
        response = await self.client.issue(
            document=JsonPayload(json_string=json.dumps(document))
        )
        return json.loads(response.document.json_string)

    async def issue_from_template(self, template_id: str, values_json: str) -> str:
        """
        Issue a credential from the previously stored template.
        Args:
            template_id:
            values_json:
        Returns:
            The JSON document representation of this credential as a string
        """
        return (
            await self.client.issue_from_template(
                template_id=template_id, values_json=values_json
            )
        ).document_json

    async def check_status(self, credential_status_id: str) -> CheckStatusResponse:
        """
        Check status of a credential
        Args:
            credential_status_id:
        Returns:
            `CheckStatusResponse`
        """
        return await self.client.check_status(credential_status_id=credential_status_id)

    async def update_status(self, credential_status_id: str, revoked: bool) -> None:
        """
        Update the status of a credential
        Args:
            credential_status_id:
            revoked:
        """
        response = await self.client.update_status(
            credential_status_id=credential_status_id, revoked=revoked
        )
        ResponseStatusException.assert_success(
            response.status, "update credential status"
        )

    async def create_proof(self, document_id: str, reveal_document: dict) -> dict:
        """
        [Create a proof](/reference/services/wallet-service/#create-proof)
        Args:
            document_id: document in the wallet that is signed
            reveal_document: JSONLD frame describing what data is to be disclosed.
        Returns:
            The JSONLD proof
        """
        return json.loads(
            (
                await self.client.create_proof(
                    document_id=document_id,
                    reveal_document=JsonPayload(
                        json_string=json.dumps(reveal_document)
                    ),
                )
            ).proof_document.json_string
        )

    async def verify_proof(self, proof_document: dict) -> bool:
        """
        [Verify a proof](/reference/services/wallet-service/#verify-proof)
        Args:
            proof_document: Document to verify
        Returns:
            `True` if verified, `False` if not verified
        """
        return (
            await self.client.verify_proof(
                proof_document=JsonPayload(json_string=json.dumps(proof_document))
            )
        ).valid

    async def send(self, document: dict, email: str) -> None:
        """
        [Send the provided document to the given email](/reference/services/wallet-service/#sending-documents-using-email-as-identifier)
        Args:
            document: Document to send
            email: Email to which the document is sent
        """
        response = await self.client.send(
            email=email, document=JsonPayload(json_string=json.dumps(document))
        )
        ResponseStatusException.assert_success(response.status, "sending credential")
