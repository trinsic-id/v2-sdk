from typing import Optional, Dict

from grpclib.client import Channel

from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.common.v1 import ServerConfig
from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    CredentialTemplatesStub,
    TemplateField,
    CreateCredentialTemplateResponse,
    GetCredentialTemplateResponse,
    ListCredentialTemplatesResponse,
    SearchCredentialTemplatesResponse,
    DeleteCredentialTemplateResponse,
)
from trinsic.service_base import ServiceBase
from trinsic.trinsic_util import trinsic_production_config


class CredentialTemplatesService(ServiceBase):
    """Wrapper for the [Credential Templates Service](/reference/services/CredentialTemplates-service/)"""

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
        self.client: CredentialTemplatesStub = self.stub_with_metadata(
            CredentialTemplatesStub
        )

    async def create(
        self,
        name: str,
        fields: Optional[Dict[str, TemplateField]],
        allow_additional_fields: bool,
    ) -> CreateCredentialTemplateResponse:
        return await self.client.create(
            name=name, fields=fields, allow_additional_fields=allow_additional_fields
        )

    async def get(self, cred_id: str) -> GetCredentialTemplateResponse:
        return await self.client.get(id=cred_id)

    async def list(
        self, query: str, continuation_token: str
    ) -> ListCredentialTemplatesResponse:
        return await self.client.list(
            query=query, continuation_token=continuation_token
        )

    async def search(
        self, query: str, continuation_token: str
    ) -> SearchCredentialTemplatesResponse:
        return await self.client.search(
            query=query, continuation_token=continuation_token
        )

    async def delete(self, cred_id: str) -> DeleteCredentialTemplateResponse:
        return await self.client.delete(id=cred_id)
