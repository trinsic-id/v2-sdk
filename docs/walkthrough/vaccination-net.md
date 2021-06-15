# Vaccination Use Case for .NET Core

--8<----
walkthrough/snippets/intro-infrastructure.md
--8<----

## Configure services

```csharp
var walletService = new WalletService("<ECOSYSTEM SERVICE URL>");
```

## Setup wallet profiles

Let's create three different profiles, each connected to a separate wallet. Since we are using a single console app for this demo, we will simply set the active profile before each interaction to designate which actor is currently taking action.
To create a new wallet profile, we use the [Create Wallet](/reference/services/wallet-service/#create-wallet) feature.

```csharp
// SETUP ACTORS
// Create 3 different profiles for each participant in the scenario
var alice = await walletService.CreateWallet();
var clinic = await walletService.CreateWallet();
var venue = await walletService.CreateWallet();
```


??? example "Run example in Replit"
    <iframe frameborder="0" width="100%" height="650px" src="https://replit.com/@trinsic/VaccinationSample-dotnet?lite=true"></iframe>