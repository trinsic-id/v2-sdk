# The Trinsic CLI

The Trinsic CLI makes it easy to interact with the Trinsic API from your terminal. You can get the CLI on homebrew or build the CLI from source on [Github](https://github.com/trinsic-id/sdk/tree/main/cli). It contains all the commands of Trinsic's SDKs and makes them interactive. 

## Installation

=== "MacOS and Linux"
    We use homebrew to distribute the CLI packages for MacOS and Linux. Install [Homebrew](https://brew.sh/)

    Then run these commands to install the Trinsic CLI
    ```
    brew install trinsic-id/tap/trinsic-cli
    ```

=== "Windows"
    The CLI can be installed using [Winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/)
    ```
    winget install trinsic.okapi
    winget install trinsic.cli
    ```

=== "From source"
    The CLI can also be built from source.

    This requires the [Rustup toolchain <small>:material-open-in-new:</small>](https://www.rust-lang.org/tools/install){target=_blank} installed on your system.

    Once installed, run this command in terminal:

    ```bash
    cargo +nightly install --git https://github.com/trinsic-id/sdk trinsic
    ```

    To verify that the CLI has been installed successfully, try running:

    ```bash
    trinsic --help
    ```

## Next Steps

Once the CLI is installed, you're ready to start building! We recommend going through the walkthrough next. If you're ready to dive into building your ecosystem, check out our API Reference. For more information about the CLI, read the [configuration guide](./config.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button }

