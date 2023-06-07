---
hide:
  - toc
---

# Trinsic CLI

The Trinsic CLI makes it easy to interact with the Trinsic API from your terminal. It can be used for task automation without needing to setup a project.

## Installation

You can get the CLI on homebrew or build the CLI from source on [Github](https://github.com/trinsic-id/sdk/tree/main/cli). It contains all the commands of Trinsic's SDKs and makes them interactive.

=== "MacOS and Linux"
    We use homebrew to distribute the CLI packages for MacOS and Linux. Install [Homebrew](https://brew.sh/)

    ```
    brew install trinsic-id/tap/trinsic-cli
    ```

=== "Windows"
    Download the latest CLI installer from our [Releases <small>:material-open-in-new:</small>](https://github.com/trinsic-id/sdk/releases){target=_blank}.

    Select the latest `trinsic-cli-X.YY.Z-x86_64.msi` and install it.

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

## Usage

Get a full list of supported subcommands and arguments:

```
trinsic --help
```
