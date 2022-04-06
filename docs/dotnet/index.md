# The Trinsic C# / .NET SDK  
The Trinsic C# / .NET SDK makes it easy to interact with the Trinsic API from your .NET application. The most recent version of the library can be found on NuGet. The Trinsic SDK supports .NET applications written in C#, VB.NET, and F# that utilize any supported version of .NET Core. You can also find the SDKs source on [Github](https://github.com/trinsic-id/sdk/dotnet).


!!! note "Supported runtimes"
    .NET targets for iOS, Android, and Blazor are fully supported using the same package dependencies via .NET 6.

## Installation in a new project
Add the required dependencies from [Nuget.org <small>:material-open-in-new:</small>](https://www.nuget.org/packages/Trinsic)


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

<!--codeinclude-->
```csharp
[SampleAccountService](../../dotnet/Tests/Tests.cs) inside_block:testSignInAndGetInfo
```
<!--/codeinclude-->

## Next Steps

Once the .NET SDK package is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [C# API Reference](../reference/index.md){ .md-button }

