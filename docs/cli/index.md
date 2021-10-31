# The Trinsic CLI

The Trinsic CLI makes it easy to interact with the Trinsic API from your terminal.  You can get the CLI on homebrew or build the CLI from source on [Github](https://github.com/trinsic-id/sdk/cli. It contains all the commands of Trinsic's SDKs and makes them interactive. 

## Installation

The CLI can be installed directly as binary or built from source.
## Using Homebrew for MacOS and Linux

```
brew tap trinsic-id/trinsic
brew install trinsic
```

## From source using the Rust toolchain

This requires the [Rustup toolchain :material-open-in-new:](https://www.rust-lang.org/tools/install){target=_blank} installed on your system.

Once installed, run this command in terminal:

```bash
cargo +nightly install --git https://github.com/trinsic-id/sdk trinsic
```

To verify that the CLI has been installed successfully, try running:

```bash
trinsic --help
```

## Configuration

The CLI stores its configuration in the user's home directory in `~/.trinsic/`. This directory contains the main configuration file `config.toml` and all the profile data.

### Show Configuration

To print the current configuration file in the terminal use:

```bash
trinsic config --show
```

Typical configuration file may look like this:

```toml
[server]
address = "http://localhost:5000/"

[profile]
default = "my_profile"
```

### Update Configuration Entry

To change the configuration values, use the `config` subcommand with the attribute and it's value.

```bash
trinsic config <attribute_name> <attribute_value>
```

The following attributes are currently supported:

`server-address`
:   Updates the default server address the CLI communicates

    ```bash
    trinsic config --server-address https://example.com/
    ```

`profile-default`
:   Updates the default profile used with the CLI

    ```bash
    trinsic config --profile-default alice
    ```

## Next Steps

Once the CLI is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-cli.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](/reference/index.md)

[Start Walkthrough](./vaccination-cli.md){ .md-button .md-button--primary } [Explore API](/reference/index.md){ .md-button }

