import urllib.parse
from typing import AsyncIterator

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.trustregistry.v1 import (
    TrustRegistryStub,
    RemoveFrameworkResponse,
    SearchRegistryResponse,
    FetchDataResponse,
    AddFrameworkRequest,
    RemoveFrameworkRequest,
    RegisterIssuerRequest,
    UnregisterIssuerRequest,
    RegisterVerifierRequest,
    UnregisterVerifierRequest,
    SearchRegistryRequest,
    FetchDataRequest,
    CheckVerifierStatusRequest,
    CheckVerifierStatusResponse,
    CheckIssuerStatusResponse,
    CheckIssuerStatusRequest,
    AddFrameworkResponse,
    UnregisterIssuerResponse,
    RegisterIssuerResponse,
    RegisterVerifierResponse,
    UnregisterVerifierResponse,
)
from trinsic.service_base import ServiceBase


class TrustRegistryService(ServiceBase):
    """
    Wrapper for [Trust Registry Service](/reference/services/trust-registry/)
    """

    def __init__(
        self,
        server_config: ServiceOptions = None,
    ):
        super().__init__(server_config)
        self.client: TrustRegistryStub = self.stub_with_metadata(TrustRegistryStub)

    async def register_governance_framework(
        self, *, request: AddFrameworkRequest
    ) -> AddFrameworkResponse:
        """
        [Create a governance framework](/reference/services/trust-registry/#create-a-ecosystem-governance-framework)
        Args:
        """
        governance_url = urllib.parse.urlsplit(
            request.governance_framework.governance_framework_uri, allow_fragments=False
        )
        # Verify complete url
        if governance_url.scheme and governance_url.netloc:
            return await self.client.add_framework(add_framework_request=request)
        else:
            raise ValueError(
                f"Invalid URI string={request.governance_framework.governance_framework_uri}"
            )

    async def remove_governance_framework(
        self, *, request: RemoveFrameworkRequest
    ) -> RemoveFrameworkResponse:
        return await self.client.remove_framework(remove_framework_request=request)

    async def register_issuer(
        self, *, request: RegisterIssuerRequest
    ) -> RegisterIssuerResponse:
        """
        [Register the issuer](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
        Raises:
            ValueError: if date ranges are not provided
        """
        return await self.client.register_issuer(register_issuer_request=request)

    async def unregister_issuer(
        self, *, request: UnregisterIssuerRequest
    ) -> UnregisterIssuerResponse:
        """
        [Unregister the issuer](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
        Raises:
            NotImplementedError: Unsupported call
        """
        return await self.client.unregister_issuer(unregister_issuer_request=request)

    async def register_verifier(
        self, *, request: RegisterVerifierRequest
    ) -> RegisterVerifierResponse:
        """
        [Register the verifier](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
        """
        return await self.client.register_verifier(register_verifier_request=request)

    async def unregister_verifier(
        self, *, request: UnregisterVerifierRequest
    ) -> UnregisterVerifierResponse:
        """
        [Unregister the verifier](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
        Raises:
            NotImplementedError: Unsupported call
        """
        return await self.client.unregister_verifier(
            unregister_verifier_request=request
        )

    async def check_issuer_status(
        self, *, request: CheckIssuerStatusRequest
    ) -> CheckIssuerStatusResponse:
        """
        [Check for authoritative status](/reference/services/trust-registry/#check-authoritative-status)
        Args:
        Returns:
            [RegistrationStatus](/reference/proto/#checkissuerstatusresponse)
        """

        return await self.client.check_issuer_status(
            check_issuer_status_request=request
        )

    async def check_verifier_status(
        self, *, request: CheckVerifierStatusRequest
    ) -> CheckVerifierStatusResponse:
        """
        [Check verifier status](/reference/services/trust-registry/#check-authoritative-status)
        Args
            issuer_did: Issuer DID
            presentation_type: Presentation type
            governance_framework: Governance framework
        Returns:
            [RegistrationStatus](/reference/proto/#registrationstatus)
        """

        return await self.client.check_verifier_status(
            check_verifier_status_request=request
        )

    async def search_registry(
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
        return await self.client.search_registry(search_registry_request=request)

    async def fetch_data(
        self, *, request: FetchDataRequest
    ) -> AsyncIterator[FetchDataResponse]:
        return self.client.fetch_data(fetch_data_request=request)
