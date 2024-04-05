from grpclib.client import Channel

from trinsic.proto.sdk.options.v1 import TrinsicOptions
from trinsic.proto.services.connect.v1 import *
from trinsic.service_base import ServiceBase


class ConnectService(ServiceBase):
    """Wrapper for the [Credentials Service](/reference/services/Credentials-service/)"""

    def __init__(
        self,
        *,
        server_config: TrinsicOptions | Channel = None,
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config)
        self.client = ConnectStub(super().channel)

    # BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    # target: /home/runner/work/sdk/sdk/python/trinsic/connect_service.py

    async def create_session(
        self, *, request: CreateSessionRequest
    ) -> CreateSessionResponse:
        """Create an IDVSession"""

        return await self.client.create_session(
            request, metadata=self.build_metadata(request)
        )

    async def cancel_session(
        self, *, request: CancelSessionRequest
    ) -> CancelSessionResponse:
        """Cancel an IDVSession"""

        return await self.client.cancel_session(
            request, metadata=self.build_metadata(request)
        )

    async def get_session(self, *, request: GetSessionRequest) -> GetSessionResponse:
        """Get an IDVSession"""

        return await self.client.get_session(
            request, metadata=self.build_metadata(request)
        )

    async def list_sessions(
        self, *, request: ListSessionsRequest
    ) -> ListSessionsResponse:
        """List IDVSessions created by the calling wallet"""

        return await self.client.list_sessions(
            request, metadata=self.build_metadata(request)
        )

    async def has_valid_credential(
        self, *, request: HasValidCredentialRequest
    ) -> HasValidCredentialResponse:
        """Checks if the identity provided in the request has a wallet containing a valid reusable credential"""

        return await self.client.has_valid_credential(
            request, metadata=self.build_metadata(request)
        )


# END Code generated by protoc-gen-trinsic. DO NOT EDIT.