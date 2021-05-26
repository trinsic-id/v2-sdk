
# Security Profiles / Authorization

Trinsic Ecosystems uses authenticated access for accessing personal data. This is implemented using [Authorization Capabilities for Linked Data :material-open-in-new:](https://w3c-ccg.github.io/zcap-ld/){target=_blank}.

All settings regarding the CLI are stored in `~/.trinsic/okapi.toml` file. You can edit this file directly to change the desired settings, or use the CLI `config` subcommand.

## Profiles in CLI

To print the current configuration file in the terminal use:

```bash
okapi config --show
```

## Set Configurations

#### `config` subcommand

To change the default server the CLI communicates, set the `server-address` attribute

```
okapi config --server-address https://example.com/
```

#### `profile` subcommand

```bash
okapi config --profile-default alice
```
