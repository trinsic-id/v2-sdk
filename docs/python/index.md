# The Trinsic Python SDK

The Trinsic Python SDK makes it easy to interact with the Trinsic API from any Python application. The most recent version of the library can be found on PyPi. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/python).

## Installation
```bash
pip install trinsic-sdk
```

## Configuration

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. 

```python
from trinsic.services import WalletService, create_channel_if_needed, ProviderService

server_address = '<SERVER_ADDRESS>'
wallet_service = WalletService(server_address)
```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-python.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](/reference/index.md)

[Start Walkthrough](./vaccination-python.md){ .md-button .md-button--primary } [Explore API](/reference/index.md){ .md-button }
