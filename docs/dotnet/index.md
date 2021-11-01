# The Trinsic C# / .NET SDK  
The Trinsic C# / .NET SDK makes it easy to interact with the Trinsic API from your .NET application. The most recent version of the library can be found on NuGet. The Trinsic SDK  supports .NET applications written in C#, VB.NET, and F# that utilize any supported version of .NET Core. You can also find the SDKs source on [Github](https://github.com/trinsic-id/sdk/dotnet).

## Installation
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

## Configuration

```csharp
using Trinsic;

// Set the server address
var service = new WalletService("https://example.com");

// Create new profile or import an existing one
var myProfile = await service.CreateWallet();

// Set the profile to be used with authorization pipeline
service.SetProfile(myProfile);
```

## Next Steps

Once the CLI is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-net.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](/reference/index.md)

[Start Walkthrough](./vaccination-net.md){ .md-button .md-button--primary } [Explore API](/reference/index.md){ .md-button }

