from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    CredentialTemplatesStub,
    CreateCredentialTemplateResponse,
    GetCredentialTemplateResponse,
    ListCredentialTemplatesResponse,
    SearchCredentialTemplatesResponse,
    DeleteCredentialTemplateResponse,
    CreateCredentialTemplateRequest,
    GetCredentialTemplateRequest,
    ListCredentialTemplatesRequest,
    SearchCredentialTemplatesRequest,
    DeleteCredentialTemplateRequest,
)
from trinsic.service_base import ServiceBase


class TemplateService(ServiceBase):
    """Wrapper for the [Credential Templates Service](/reference/services/CredentialTemplates-service/)"""

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
        self.client: CredentialTemplatesStub = self.stub_with_metadata(
            CredentialTemplatesStub
        )

    async def create(
        self, *, request: CreateCredentialTemplateRequest
    ) -> CreateCredentialTemplateResponse:
        return await self.client.create(create_credential_template_request=request)

    async def get(
        self, *, request: GetCredentialTemplateRequest
    ) -> GetCredentialTemplateResponse:
        return await self.client.get(get_credential_template_request=request)

    async def list(
        self, *, request: ListCredentialTemplatesRequest
    ) -> ListCredentialTemplatesResponse:
        return await self.client.list(list_credential_templates_request=request)

    async def search(
        self, *, request: SearchCredentialTemplatesRequest
    ) -> SearchCredentialTemplatesResponse:
        request.query = request.query or "SELECT * from c LIMIT 100"
        return await self.client.search(search_credential_templates_request=request)

    async def delete(
        self, *, request: DeleteCredentialTemplateRequest
    ) -> DeleteCredentialTemplateResponse:
        return await self.client.delete(delete_credential_template_request=request)
