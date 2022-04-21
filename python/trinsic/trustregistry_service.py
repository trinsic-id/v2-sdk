import datetime
import urllib.parse
from typing import AsyncIterator

from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.trustregistry.v1 import (
    TrustRegistryStub,
    GovernanceFramework,
    RemoveFrameworkResponse,
    RegistrationStatus,
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
    CheckIssuerStatusRequest, AddFrameworkResponse,
)
from trinsic.service_base import ServiceBase, ResponseStatusException
from trinsic.trinsic_util import convert_to_epoch_seconds


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
            response = await self.client.add_framework(add_framework_request=request)
            return response
        else:
            raise ValueError(
                f"Invalid URI string={request.governance_framework.governance_framework_uri}"
            )

    async def remove_governance_framework(
        self, *, request: RemoveFrameworkRequest
    ) -> RemoveFrameworkResponse:
        return await self.client.remove_framework(remove_framework_request=request)

    async def register_issuer(self, *, request: RegisterIssuerRequest) -> None:
        """
        [Register the issuer](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            ValueError: if date ranges are not provided
        """
        response = await self.client.register_issuer(register_issuer_request=request)
        ResponseStatusException.assert_success(
            response.status, "cannot register issuer"
        )

    async def unregister_issuer(self, *, request: UnregisterIssuerRequest) -> None:
        """
        [Unregister the issuer](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            NotImplementedError: Unsupported call
        """
        response = await self.client.unregister_issuer(
            unregister_issuer_request=request
        )
        ResponseStatusException.assert_success(
            response.status, "cannot unregister issuer"
        )

    async def register_verifier(self, *, request: RegisterVerifierRequest) -> None:
        """
        [Register the verifier](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        """
        response = await self.client.register_verifier(
            register_verifier_request=request
        )
        ResponseStatusException.assert_success(
            response.status, "cannot register verifier"
        )

    async def unregister_verifier(self, *, request: UnregisterVerifierRequest) -> None:
        """
        [Unregister the verifier](/reference/services/trust-registry/#unregister-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        Raises:
            NotImplementedError: Unsupported call
        """
        response = await self.client.unregister_verifier(
            unregister_verifier_request=request
        )
        ResponseStatusException.assert_success(
            response.status, "cannot unregister verifier"
        )

    async def check_issuer_status(
        self, *, request: CheckIssuerStatusRequest
    ) -> CheckIssuerStatusResponse:
        """
        [Check for authoritative status](/reference/services/trust-registry/#check-authoritative-status)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
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
            query: Search query
        Returns:
            [SearchRegistryResponse](/reference/proto/#searchregistryresponse)
        """
        request = request or SearchRegistryRequest()
        request.query = request.query or "SELECT * FROM c"
        return await self.client.search_registry(search_registry_request=request)

    async def fetch_data(
        self, *, request: FetchDataRequest
    ) -> AsyncIterator[FetchDataResponse]:
        return self.client.fetch_data(fetch_data_request=request)
