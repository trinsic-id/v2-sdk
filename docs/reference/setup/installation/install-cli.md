The CLI can be installed directly as binary or built from source.

## Install using Homebrew for MacOS and Linux

```
brew tap trinsic-id/trinsic
brew install trinsic
```

## Install from source using the Rust toolchain

This requires the [Rustup toolchain :material-open-in-new:](https://www.rust-lang.org/tools/install){target=_blank} installed on your system.

Once installed, run this command in terminal:

```bash
cargo +nightly install --git https://github.com/trinsic-id/sdk trinsic
```

To verify that the CLI has been installed successfully, try running:

```bash
trinsic --help
```
