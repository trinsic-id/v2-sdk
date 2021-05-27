# API Reference Guide

This document described the available features in the Trinsic SDK. The SDK is available as package for most languages, as well as a CLI. Both the SDK and CLI have idential functionality, though differ slightly in how they operate with configuration and structured data.

## Using SDK vs CLI

## Wallet Commands

### `create` subcommand

This subcommand creates a new wallet and stores the profile with the given name. If the profile name exists, it will be overwritten.

```bash
okapi wallet create --name alice --description "Alice's Cloud Wallet" --default
```

The flag `--default` is optional. If specified, it will also set the configuration to use this profile as default. The first profile created, will be set as default, regardless of the flag.

To see all available flags and options for this subcommand

=== "CLI"
    ```bash
    okapi wallet create --help
    ```
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```

## Credential Service
//TODO - add each section
=== "CLI"

    ```bash
    trinsic issuer issue --document ./covid-vocab/vaccination-certificate-unsigned.jsonld --out ./covid-vocab/vaccination-certificate-signed.jsonld
    ```
=== "JS"

    ```js
    var string = "hello world";
    ```

=== "C#"

    ```csharp
    int tmp = 2;
    ```

## Provider Service


## Command Reference
- didkey
  - generate
  - resolve

- didcomm
  - pack
  - unpack
  - verify
  - sign

- config

- wallet
  - get_provider_configuration
  - create
  - set_profile
  - search
  - insert_item
  - grant_access
  - revoke_access

- issuer
  - issue
  - create_proof
  - verify_proof

- authentication
  - acquire_token
