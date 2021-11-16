
# Configuration

The CLI stores its configuration in the user's home directory in `~/.trinsic/`. This directory contains the main configuration file `config.toml` and all the profile data.

## Show Configuration

To print the current configuration file in the terminal use:

```bash
trinsic config --show
```

Typical configuration file may look like this:

```toml
[server]
address = "https://prod.trinsic.cloud"

[profile]
default = "my_profile"
```

## Update Configuration Entry

To change the configuration values, use the `config` subcommand with the attribute and its value.

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