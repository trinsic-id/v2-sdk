"""
Utility functions for the Trinsic services SDK
"""
import urllib.parse
from datetime import datetime
from distutils.util import strtobool
from os import getenv
from typing import Union, Tuple

from grpclib.client import Channel

from trinsic.proto.services.common.v1 import ServerConfig


def trinsic_production_config() -> ServerConfig:
    """
    Default production configuration for the trinsic cloud
    Returns:
        [ServerConfig](/reference/proto/#serverconfig)
    """
    return ServerConfig(endpoint="prod.trinsic.cloud", port=443, use_tls=True)


def trinsic_test_config() -> ServerConfig:
    """
    Test server configuration
    Returns:
        [ServerConfig](/reference/proto/#serverconfig)
    """
    endpoint = getenv('TEST_SERVER_ENDPOINT')
    port = int(getenv('TEST_SERVER_PORT', 443))
    use_tls = bool(strtobool(getenv('TEST_SERVER_USE_TLS', 'true')))
    return ServerConfig(endpoint=endpoint, port=port, use_tls=use_tls)


def create_channel(config: Union[ServerConfig, str, Channel]) -> Channel:
    """
    Create the channel from the provided URL
    Args:
        config: Server configuration
    Returns:
        connected `Channel`
    """
    if isinstance(config, Channel):
        channel = config
    elif isinstance(config, str):
        service_url = urllib.parse.urlsplit(config)
        is_https = service_url.scheme == "https"
        if not service_url.hostname:
            raise ValueError(f'Invalid url="{config}"')
        channel = Channel(host=f"{service_url.hostname}", port=service_url.port, ssl=is_https)
    elif isinstance(config, ServerConfig):
        channel = Channel(host=config.endpoint, port=config.port, ssl=config.use_tls)
    else:
        raise NotImplementedError(f"config type={type(config)} not supported.")
    return channel


def convert_to_epoch_seconds(valid_from: datetime, valid_until: datetime) -> Tuple[float, float]:
    """
    Convert provided datetime objects to seconds since the UNIX epoch - this works around windows strptime() limitations.
    Args:
        valid_from: start time, or 1970-01-01
        valid_until: end time, or 9999-12-31
    Returns:
        valid_from, valid_until as floating point seconds.
    """
    valid_from = valid_from or datetime(1, 1, 1)
    valid_until = valid_until or datetime(9999, 12, 31)
    epoch = datetime(1970, 1, 1)
    valid_from_epoch = (valid_from - epoch).total_seconds()
    valid_until_epoch = (valid_until - epoch).total_seconds()
    return valid_from_epoch, valid_until_epoch