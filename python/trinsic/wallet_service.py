import json

from grpclib.client import Channel

from trinsic.proto.services.account.v1 import AccountProfile
from trinsic.proto.services.common.v1 import ServerConfig, JsonPayload
from trinsic.proto.services.universalwallet.v1 import (
    UniversalWalletStub,
    SearchResponse,
    DeleteItemResponse,
)
from trinsic.service_base import ServiceBase
from trinsic.trinsic_util import trinsic_production_config


class WalletService(ServiceBase):
    """
    Wrapper for the [Wallet Service](/reference/services/wallet-service/)
    """

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
        return (
            await self.client.insert_item(
                item=JsonPayload(json_string=json.dumps(item))
            )
        ).item_id

    async def delete_item(self) -> DeleteItemResponse:
        return await self.client.delete_item()
