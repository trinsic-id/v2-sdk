from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.verifiablecredentials.v1 import (
    VerifiableCredentialStub,
    CheckStatusResponse,
    IssueRequest,
    IssueResponse,
    IssueFromTemplateRequest,
    IssueFromTemplateResponse,
    CheckStatusRequest,
    UpdateStatusRequest,
    CreateProofRequest,
    CreateProofResponse,
    VerifyProofRequest,
    VerifyProofResponse,
    SendRequest,
)
from trinsic.service_base import ServiceBase, ResponseStatusException


class CredentialService(ServiceBase):
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

    async def issue_credential(self, *, request: IssueRequest) -> IssueResponse:
        """
        [Issue a new credential](/reference/services/credentials-service/#issue-credential)
        Args:
            request:
        Returns:
            Dictionary with the issued credential
        """
        return await self.client.issue(issue_request=request)

    async def issue_from_template(
        self, *, request: IssueFromTemplateRequest
    ) -> IssueFromTemplateResponse:
        """
        Issue a credential from the previously stored template.
        Args:
            request:
        Returns:
            The JSON document representation of this credential as a string
        """
        return await self.client.issue_from_template(
            issue_from_template_request=request
        )

    async def check_status(self, *, request: CheckStatusRequest) -> CheckStatusResponse:
        """
        Check status of a credential
        Args:
            request:
        Returns:
            `CheckStatusResponse`
        """
        return await self.client.check_status(check_status_request=request)

    async def update_status(self, *, request: UpdateStatusRequest) -> None:
        """
        Update the status of a credential
        Args:
            request:
        """
        response = await self.client.update_status(update_status_request=request)
        ResponseStatusException.assert_success(
            response.status, "update credential status"
        )

    async def create_proof(self, *, request: CreateProofRequest) -> CreateProofResponse:
        """
        [Create a proof](/reference/services/wallet-service/#create-proof)
        Args:
            request:
        Returns:
            The JSONLD proof
        """
        return await self.client.create_proof(create_proof_request=request)

    async def verify_proof(self, *, request: VerifyProofRequest) -> VerifyProofResponse:
        """
        [Verify a proof](/reference/services/wallet-service/#verify-proof)
        Args:
            request:
        Returns:
            `True` if verified, `False` if not verified
        """
        return await self.client.verify_proof(verify_proof_request=request)

    async def send(self, *, request: SendRequest) -> None:
        """
        [Send the provided document to the given email](/reference/services/wallet-service/#sending-documents-using-email-as-identifier)
        """
        response = await self.client.send(send_request=request)
        ResponseStatusException.assert_success(response.status, "sending credential")
