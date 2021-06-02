# Installation

## Trinsic CLI

The CLI can be installed directly using the Cargo tool. This requires the [Rustup toolchain :material-open-in-new:](https://www.rust-lang.org/tools/install){target=_blank} installed on your system.

Once installed, run this command in terminal:

=== "Terminal"
    ```bash
    cargo install --git https://github.com/trinsic-id/sdk.git
    ```

To verify that the CLI has been installed successfully, try running:

=== "Terminal"
    ```bash
    trinsic --help
    ```
## .NET Core

Install the packages directly from [Nuget.org :material-open-in-new:](https://www.nuget.org/packages/Trinsic){target=_blank}

=== "Package Manager"
    ```
    PM> Install-Package Trinsic
    ```
=== ".NET CLI"
    ```
    > dotnet add package Trinsic
    ```
=== "PackageReference"
    ```
    <PackageReference Include="Trinsic" />
    ```

## Node.js and Browser

Install the package for Node or Browser from [npmjs.com :material-open-in-new:](https://www.npmjs.com/package/@trinsic/trinsic){target=_blank}

=== "Install"
    ```bash
    npm i @trinsic/trinsic
    ```