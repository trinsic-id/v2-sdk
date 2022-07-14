from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.universalwallet.v1 import *
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
        self.client = UniversalWalletStub(super().channel)

    async def search(self, request: SearchRequest = None) -> SearchResponse:
        """
        [Search for crdentials](/reference/services/wallet-service/#search-query)
        Args:
             request: Request object
        Returns:
            The search response object information
        """
        request = request or SearchRequest()
        request.query = (
            request.query or "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100"
        )
        return await self.client.search(
            search_request=request, metadata=self.build_metadata(request)
        )

# BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
# target: ..\sdk\python\trinsic\wallet_service.py

    async def get_item(self, *, request: GetItemRequest) -> GetItemResponse:
        """
 Retrieve an item from the wallet with a given item identifier

"""
        return await self.client.get_item(request, metadata=self.build_metadata(request))
    
    async def insert_item(self, *, request: InsertItemRequest) -> InsertItemResponse:
        """
 Insert an item into the wallet

"""
        return await self.client.insert_item(request, metadata=self.build_metadata(request))
    
    async def update_item(self, *, request: UpdateItemRequest) -> UpdateItemResponse:
        """
 Update an item in the wallet

"""
        return await self.client.update_item(request, metadata=self.build_metadata(request))
    
    async def delete_item(self, *, request: DeleteItemRequest) -> DeleteItemResponse:
        """
 Delete an item from the wallet permanently

"""
        return await self.client.delete_item(request, metadata=self.build_metadata(request))
    

# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
