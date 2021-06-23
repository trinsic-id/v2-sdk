# Configuration

Trinsic SDK contains minimal configuration. This configuration is stored differently, depending on what package is used.

## Configuration with CLI

The CLI stores it's configuration in the user's home directory, typically in `~/.trinsic/`. This directory contains the main configuration file `config.toml` and all the profile data.

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

## Configuration with SDK

When using the SDK in your code, you can pass parameters to the default service constructors and use the provided methods to set different active profiles.

=== "TypeScript"

    ```typescript
    import { WalletService } from '@trinsic/trinsic';

    // Set the server address
    const service = new WalletService("https://example.com");

    // Create new profile or import an existing one
    const myProfile = await service.createWallet();

    // Set the profile to be used with authorization pipeline
    service.setProfile(myProfile);
    ```

=== "C#"

    ```csharp
    using Trinsic;

    // Set the server address
    var service = new WalletService("https://example.com");

    // Create new profile or import an existing one
    var myProfile = await service.CreateWallet();

    // Set the profile to be used with authorization pipeline
    service.SetProfile(myProfile);
    ```