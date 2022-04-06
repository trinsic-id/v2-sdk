# The Trinsic Python SDK

The Trinsic Python SDK makes it easy to interact with the Trinsic API from any Python application. The most recent version of the library can be found on PyPi. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/python).

## Installation and Configuration
* Make sure you have the okapi native binaries installed on your machine. Default installation instructions are in the [readme.md here](https://github.com/trinsic-id/okapi/)
* If you install to a different location for debugging, use the environment variable `LD_LIBRARY_PATH`, even on Windows.
* Recommended: [Create a virtual environment](https://docs.python.org/3/library/venv.html#creating-virtual-environments)
* Install the trinsic package
```bash
pip install trinsic-sdk
```
* Test installation by running the following python script:
```python
import asyncio
from trinsic.services import AccountService

async def demo():
    account_service = AccountService()
    profile = await account_service.sign_in()
    print(profile)
    account_service.close()
if __name__ == "__main__":
    asyncio.run(demo())
```
* The output should look something like this:
```bash
AccountProfile(profile_type='https://trinsic.id/security/v1/oberon', auth_data=b'\n*urn:trinsic:wallets:JkhchLXS8NDwTjmJjNogkQ\x12$1d58106c-325a-4f45-abe0-6a14aa613a10', auth_token=b'\x83E\x06p\xd60V\xe0D\x12NU\xe7\n6\x06\x19 \x0b\xe0\x8er\xf2\xc1\xb3\x96\xdb\xbd/\xf5#\xa7\xe7F\x10\x97E\xe2\xa9\xc4\x10\xdfJ\xbe\xea\xa3Fz', protection=TokenProtection())
```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Python API Reference](../reference/index.md){ .md-button }
