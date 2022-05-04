import json

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.universalwallet.v1 import (
    UniversalWalletStub,
    SearchResponse,
    DeleteItemResponse,
    SearchRequest,
    InsertItemRequest,
    InsertItemResponse,
    DeleteItemRequest,
)
from trinsic.service_base import ServiceBase


class WalletService(ServiceBase):
    """
    Wrapper for the [Wallet Service](/reference/services/wallet-service/)
    """

    def __init__(self, *, server_config: ServiceOptions = None):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config)
        self.client: UniversalWalletStub = self.stub_with_metadata(UniversalWalletStub)

    async def search(self, *, request: SearchRequest = None) -> SearchResponse:
        """
        [Search for crdentials](/reference/services/wallet-service/#search-query)
        Args:
             request: Request object
        Returns:
            The search response object information
        """
        request = request or SearchRequest()
        request.query = request.query or "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100"
        return await self.client.search(search_request=request)

    async def insert_item(self, *, request: InsertItemRequest) -> InsertItemResponse:
        """
        [Insert a new item](/reference/services/wallet-service/#insert-record)
        Args:
            item_type: Type of item to insert into the wallet
            item: Item to insert into the wallet.
        Returns:
            `item_id` of the created record.
        """
        return await self.client.insert_item(insert_item_request=request)

    async def delete_item(self, *, request: DeleteItemRequest) -> DeleteItemResponse:
        return await self.client.delete_item(delete_item_request=request)
