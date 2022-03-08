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
        self, governance_framework: str, description: str
    ) -> None:
        """
        [Create a governance framework](/reference/services/trust-registry/#create-a-ecosystem-governance-framework)
        Args:
            governance_framework:
            description:
        """
        governance_url = urllib.parse.urlsplit(
            governance_framework, allow_fragments=False
        )
        # Verify complete url
        if governance_url.scheme and governance_url.netloc and governance_url.path:

            response = await self.client.add_framework(
                governance_framework=GovernanceFramework(
                    governance_framework_uri=governance_framework,
                    description=description,
                )
            )
            if response.status != response.status.SUCCESS:
                raise RuntimeError(f"cannot register governance framework: code {response.status}")
        else:
            raise ValueError(f"Invalid URI string={governance_framework}")

    async def remove_governance_framework(
        self, governance_framework: GovernanceFramework = None
    ) -> RemoveFrameworkResponse:
        return await self.client.remove_framework(
            governance_framework=governance_framework
        )

    async def register_issuer(
        self,
        issuer_did: str,
        credential_type: str,
        governance_framework: str,
        valid_from: datetime.datetime = None,
        valid_until: datetime.datetime = None,
    ) -> None:
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
        valid_from_epoch, valid_until_epoch = convert_to_epoch_seconds(
            valid_from, valid_until
        )

        response = await self.client.register_issuer(
            did_uri=issuer_did,
            credential_type_uri=credential_type,
            governance_framework_uri=governance_framework,
            valid_from_utc=int(valid_from_epoch),
            valid_until_utc=int(valid_until_epoch),
        )

        ResponseStatusException.assert_success(response.status, "cannot register issuer")

    async def unregister_issuer(
        self,
        issuer_did: str,
        credential_type: str,
        governance_framework: str,
        valid_from: datetime.datetime = None,
        valid_until: datetime.datetime = None,
    ) -> None:
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
        raise NotImplementedError

    async def register_verifier(
        self,
        verifier_did: str,
        presentation_type: str,
        governance_framework: str,
        valid_from: datetime.datetime = None,
        valid_until: datetime.datetime = None,
    ) -> None:
        """
        [Register the verifier](/reference/services/trust-registry/#register-issuers-and-verifiers)
        Args:
            verifier_did:
            presentation_type:
            governance_framework:
            valid_from:
            valid_until:
        """
        valid_from_epoch, valid_until_epoch = convert_to_epoch_seconds(
            valid_from, valid_until
        )

        response = await self.client.register_verifier(
            did_uri=verifier_did,
            presentation_type_uri=presentation_type,
            governance_framework_uri=governance_framework,
            valid_from_utc=int(valid_from_epoch),
            valid_until_utc=int(valid_until_epoch),
        )
        ResponseStatusException.assert_success(response.status, "cannot register verifier")

    async def unregister_verifier(
        self,
        verifier_did: str,
        presentation_type: str,
        governance_framework: str,
        valid_from: datetime.datetime,
        valid_until: datetime.datetime,
    ) -> None:
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
        raise NotImplementedError

    async def check_issuer_status(
        self, issuer_did: str, credential_type: str, governance_framework: str
    ) -> RegistrationStatus:
        """
        [Check for authoritative status](/reference/services/trust-registry/#check-authoritative-status)
        Args:
            issuer_did:
            credential_type:
            governance_framework:
        Returns:
            [RegistrationStatus](/reference/proto/#checkissuerstatusresponse)
        """

        return (
            await self.client.check_issuer_status(
                governance_framework_uri=governance_framework,
                did_uri=issuer_did,
                credential_type_uri=credential_type,
            )
        ).status

    async def check_verifier_status(
        self, issuer_did: str, presentation_type: str, governance_framework: str
    ) -> RegistrationStatus:
        """
        [Check verifier status](/reference/services/trust-registry/#check-authoritative-status)
        Args
            issuer_did: Issuer DID
            presentation_type: Presentation type
            governance_framework: Governance framework
        Returns:
            [RegistrationStatus](/reference/proto/#registrationstatus)
        """

        return (
            await self.client.check_verifier_status(
                governance_framework_uri=governance_framework,
                did_uri=issuer_did,
                presentation_type_uri=presentation_type,
            )
        ).status

    async def search_registry(
        self, query: str = "SELECT * FROM c"
    ) -> SearchRegistryResponse:
        """
        [Search the registry](/reference/services/trust-registry/#search)
        Args:
            query: Search query
        Returns:
            [SearchRegistryResponse](/reference/proto/#searchregistryresponse)
        """

        return await self.client.search_registry(
            query=query,
            options=RequestOptions(response_json_format=JsonFormat.Protobuf),
        )

    async def fetch_data(
        self, governance_framework_uri: str = None, query: str = None
    ) -> AsyncIterator[FetchDataResponse]:
        return self.client.fetch_data(
            governance_framework_uri=governance_framework_uri, query=query
        )
