import json

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.verifiablecredentials.v1 import (
    VerifiableCredentialStub,
    CheckStatusResponse,
)
from trinsic.service_base import ServiceBase, ResponseStatusException


class CredentialsService(ServiceBase):
    """Wrapper for the [Credentials Service](/reference/services/Credentials-service/)"""

    def __init__(
        self,
        *,
        server_config: ServiceOptions = None,
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config)
        self.client: VerifiableCredentialStub = self.stub_with_metadata(
            VerifiableCredentialStub
        )

    async def issue_credential(self, *, document: dict) -> dict:
        """
        [Issue a new credential](/reference/services/credentials-service/#issue-credential)
        Args:
            document: Dictionary describing the credential
        Returns:
            Dictionary with the issued credential
        """
        response = await self.client.issue(document_json=json.dumps(document))
        return json.loads(response.signed_document_json)

    async def issue_from_template(self, *, template_id: str, values_json: str) -> dict:
        """
        Issue a credential from the previously stored template.
        Args:
            template_id:
            values_json:
        Returns:
            The JSON document representation of this credential as a string
        """
        return json.loads(
            (
                await self.client.issue_from_template(
                    template_id=template_id, values_json=values_json
                )
            ).document_json
        )

    async def check_status(self, *, credential_status_id: str) -> CheckStatusResponse:
        """
        Check status of a credential
        Args:
            credential_status_id:
        Returns:
            `CheckStatusResponse`
        """
        return await self.client.check_status(credential_status_id=credential_status_id)

    async def update_status(self, *, credential_status_id: str, revoked: bool) -> None:
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

    async def create_proof(
        self, *, reveal_document: dict, item_id: str = "", document: dict = None
    ) -> dict:
        """
        [Create a proof](/reference/services/wallet-service/#create-proof)
        Args:
            document: document in the wallet that is signed
            item_id: id of document in the wallet
            reveal_document: JSONLD frame describing what data is to be disclosed.
        Returns:
            The JSONLD proof
        """
        document_json = json.dumps(document) if document else None
        return json.loads(
            (
                await self.client.create_proof(
                    reveal_document_json=json.dumps(reveal_document),
                    item_id=item_id,
                    document_json=document_json,
                )
            ).proof_document_json
        )

    async def verify_proof(self, *, proof_document: dict) -> bool:
        """
        [Verify a proof](/reference/services/wallet-service/#verify-proof)
        Args:
            proof_document: Document to verify
        Returns:
            `True` if verified, `False` if not verified
        """
        return (
            await self.client.verify_proof(
                proof_document_json=json.dumps(proof_document)
            )
        ).is_valid

    async def send(
        self,
        *,
        document: dict,
        email: str = None,
        did_uri: str = None,
        didcomm_invitation_json: str = None,
    ) -> None:
        """
        [Send the provided document to the given email](/reference/services/wallet-service/#sending-documents-using-email-as-identifier)
        Args:
            didcomm_invitation_json:
            did_uri:
            document: Document to send
            email: Email to which the document is sent
        """
        response = await self.client.send(
            email=email,
            document_json=json.dumps(document),
            did_uri=did_uri,
            didcomm_invitation_json=didcomm_invitation_json,
        )
        ResponseStatusException.assert_success(response.status, "sending credential")
