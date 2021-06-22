# Vaccination Use Case for .NET Core

--8<----
walkthrough/snippets/intro-infrastructure.md
walkthrough/snippets/intro-use-case.md
--8<----

## Technical requirements

You can run this example on your local machine, or you can use our Gitpod setup to bootstrap a full development environment. If running locally, you only need .NET Core installed. We will use the dotnet CLI and the editor of your choice.

!!! note "Supported runtimes"
    Xamarin targets for iOS and Android are fully supported using the same package dependencies. Support for Blazor in Web Assembly will be available in a future release.

## Create new project

Let's create a new .NET console app that we will use to add our sample code

```bash
dotnet new console -n VaccinationSample && cd VaccinationSample
```

Add the required dependencies

```bash
dotnet add package Trinsic --prerelease
dotnet add package Okapi.Net --prerelease
```

!!! note ""
    The package `Okapi.Net` is already a dependency of `Trinsic` package, but we must add explicitly to bring in static library dependencies.
    This will not be required in future version and only package `Trinsic` can be used.

## Configure services

Create a reference to the wallet service that points to your ecosystem service. You should have received this URL with your ecosystem setup. In your `Program.cs` file add the following line replacing the placeholder with your URL:

```csharp
using Trinsic;

var walletService = new WalletService("<ECOSYSTEM SERVICE URL>");
```

## Setup wallet profiles

Let's create three different profiles, each pointing to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](/reference/services/wallet-service/#create-wallet) feature.

```csharp
// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
var allison = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var airline = await walletService.CreateWallet();
```

If you would like to save the profile for future use, you can simply export the serialized profile to a local storage. Please note that the profiles contain sensitive key data, so they should be stored in a secure enclave.

```csharp
using Google.Protobuf;

// Serialize profile by exporting the binary protobuf form
File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

// Create profile from existing data
var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));
```

Read more about [security profiles](/reference/profiles/) and authentication.

## Certificate issuance

## Store certificate in personal wallet

## Proof of vaccination

## Verification

## Complete sample code


??? example "Run example in Replit"
    <iframe frameborder="0" width="100%" height="650px" src="https://replit.com/@trinsic/VaccinationSample-dotnet?lite=true"></iframe>