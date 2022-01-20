# The Trinsic C# / .NET SDK  
The Trinsic C# / .NET SDK makes it easy to interact with the Trinsic API from your .NET application. The most recent version of the library can be found on NuGet. The Trinsic SDK supports .NET applications written in C#, VB.NET, and F# that utilize any supported version of .NET Core. You can also find the SDKs source on [Github](https://github.com/trinsic-id/sdk/dotnet).


!!! note "Supported runtimes"
    .NET targets for iOS, Android, and Blazor are fully supported using the same package dependencies via .NET 6.

## Installation in a new project
Add the required dependencies from [Nuget.org :material-open-in-new:](https://www.nuget.org/packages/Trinsic)


=== "Package Manager"
    ```
    PM> Install-Package Trinsic
    ```
=== ".NET CLI"
    ```bash
    dotnet add package Trinsic --prerelease
    dotnet add package Okapi.Net --prerelease
    ```
=== "PackageReference"
    ```
    <PackageReference Include="Trinsic" />
    <PackageReference Include="Okapi.Net" />
    ```


    This will not be required in future version and only package `Trinsic` can be used.

## Configuration

```csharp
using Trinsic;

// Set the server address
// WalletService requires an account profile
var accountService = new AccountService();
var accountProfile = await accountService.signIn();
var service = new WalletService(accountProfile);

// Create new profile or import an existing one
var myProfile = await service.CreateWallet();

// Set the profile to be used with authorization pipeline
service.SetProfile(myProfile);
```

## Next Steps

Once the CLI is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./vaccination-net.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](./vaccination-net.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [C# API Reference](../reference/dotnet.md){ .md-button }

