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
* Test installation by running the following shell command:
```bash
# May be "python" or "python3" depending on your install
python -m trinsic
```

* The output should look something like this:
```bash
Package successfully installed. Sample profile below
```

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Python API Reference](../reference/index.md){ .md-button }
