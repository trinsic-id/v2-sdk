"""
Base class and helper methods for the Service wrappers
"""
import base64
from abc import ABC, abstractmethod
from datetime import datetime
from typing import Mapping, List

from betterproto import Message
from blake3 import blake3
from grpclib.client import Channel
from okapi.proto.okapi.security.v1 import CreateOberonProofRequest
from okapi.wrapper import Oberon

from trinsic.proto.services.common.v1 import Nonce
from trinsic.proto.services.universalwallet.v1 import WalletProfile


class ServiceBase(ABC):
    """
    Base class for service wrapper classes, provides the metadata functionality in a consistent manner.
    """

    def __init__(self):
        self.profile: WalletProfile = None
        self.channel: Channel = None

    @abstractmethod
    def close(self):
        raise NotImplementedError("Must be overridden in derived class to close GRPC channels")

    def metadata(self, request: Message):
        """
        Create call metadata by setting required authentication headers
        :return: authentication headers with base-64 encoded Oberon
        """
        if not self.profile:
            raise ValueError("Profile not set")

        # compute the hash of the request and capture current timestamp
        request_hash = blake3(bytes(request)).digest(64)
        nonce = Nonce(timestamp=int(datetime.now().timestamp() * 1000), request_hash=request_hash)
        proof = Oberon.create_proof(
            CreateOberonProofRequest(token=self.profile.auth_token, data=self.profile.auth_data, nonce=bytes(nonce)))
        return {"authorization": f"Oberon proof={base64.urlsafe_b64encode(bytes(proof.proof)).decode('utf-8')},"
                                 f"data={base64.urlsafe_b64encode(bytes(self.profile.auth_data)).decode('utf-8')},"
                                 f"nonce={base64.urlsafe_b64encode(bytes(nonce)).decode('utf-8')}"}