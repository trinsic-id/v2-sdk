# Okapi CLI

## Installation

Requires [Rustup](https://www.rust-lang.org/tools/install) toolchain

```bash
cargo install --path .
```

## Running the CLI

```
okapi --help
```

## CLI Configuration

All settings regarding the CLI are stored in `~/.trinsic/okapi.yaml` file. You can edit this file directly to change the desired settings, or use the CLI `config` subcommand.

### Setting Configuration Variables

#### Subcommand `config`

To change the default server the CLI communicates, set the `server-address` attribute

```
okapi config --server-address https://example.com/
```

#### Subcommand `profile`

TODO