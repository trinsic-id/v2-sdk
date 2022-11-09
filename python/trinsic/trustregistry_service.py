from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.trustregistry.v1 import *
from trinsic.security_providers import ITokenProvider
from trinsic.service_base import ServiceBase


class TrustRegistryService(ServiceBase):
    """
    Wrapper for [Trust Registry Service](/reference/services/trust-registry/)
    """

    def __init__(
        self,
        *,
        server_config: ServiceOptions = None,
        token_provider: ITokenProvider = None
    ):
        super().__init__(server_config, token_provider)
        self.client = TrustRegistryStub(super().channel)

    async def search(
        self, *, request: SearchRegistryRequest = None
    ) -> SearchRegistryResponse:
        """
        [Search the registry](/reference/services/trust-registry/#search)
        Args:
        Returns:
            [SearchRegistryResponse](/reference/proto/#searchregistryresponse)
        """
        request = request or SearchRegistryRequest()
        request.query = request.query or "SELECT * FROM c OFFSET 0 LIMIT 100"
        return await self.search_registry(request=request)

# BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
# target: C:\work\sdk\python\trinsic\trustregistry_service.py

    async def add_framework(self, *, request: AddFrameworkRequest) -> AddFrameworkResponse:
        """  Add a governance framework to the ecosystem """
        
        return await self.client.add_framework(request, metadata=self.build_metadata(request))
    
    async def remove_framework(self, *, request: RemoveFrameworkRequest) -> RemoveFrameworkResponse:
        """  Remove a governance framework from the ecosystem """
        
        return await self.client.remove_framework(request, metadata=self.build_metadata(request))
    
    async def search_registry(self, *, request: SearchRegistryRequest) -> SearchRegistryResponse:
        """  Search the ecosystem's governance frameworks """
        
        return await self.client.search_registry(request, metadata=self.build_metadata(request))
    
    async def register_member(self, *, request: RegisterMemberRequest) -> RegisterMemberResponse:
        """  Register an authoritative issuer for a credential schema """
        
        return await self.client.register_member(request, metadata=self.build_metadata(request))
    
    async def unregister_member(self, *, request: UnregisterMemberRequest) -> UnregisterMemberResponse:
        """  Removes an authoritative issuer for a credential schema from the trust registry """
        
        return await self.client.unregister_member(request, metadata=self.build_metadata(request))
    
    async def get_membership_status(self, *, request: GetMembershipStatusRequest) -> GetMembershipStatusResponse:
        """  Fetch the membership status of an issuer for a given credential schema in a trust registry """
        
        return await self.client.get_membership_status(request, metadata=self.build_metadata(request))
    

# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
