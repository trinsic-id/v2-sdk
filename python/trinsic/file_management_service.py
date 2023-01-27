from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.proto.services.filemanagement.v1 import *
from trinsic.security_providers import ITokenProvider
from trinsic.service_base import ServiceBase


class FileManagementService(ServiceBase):
    """Wrapper for the [File Management Service](/reference/services/File-Management-service/)"""

    def __init__(
        self,
        *,
        server_config: ServiceOptions = None,
        token_provider: ITokenProvider = None
    ):
        """
        Initialize a connection to the server.
        Args:
            server_config: The URL of the server, or a channel which encapsulates the connection already.
        """
        super().__init__(server_config, token_provider)
        self.client = FileManagementStub(super().channel)

# BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
# target: D:\trinsic\sdk\python\trinsic\file_management_service.py
# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
