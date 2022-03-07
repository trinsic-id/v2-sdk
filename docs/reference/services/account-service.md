# Account Service

### Construct Instance

=== "Trinsic CLI"
    ```bash

    ```
=== "TypeScript"
    ```typescript
    // TODO - do we have a production config default option?
    const config = new ServerConfig().setEndpoint("prod.trinsic.cloud").setPort(Number(443)).setUseTls(true);
    const accountService = new AccountService({server: config});
    ```
=== "C#"
    ```csharp
    var accountService = new AccountService();
    ```
=== "Python"
    ```python
    account_service = AccountService()
    ```
=== "Go"
    ```golang
    channel, err := CreateChannel(CreateChannelUrlFromConfig(TrinsicTestConfig()), true)
    accountService, err := NewAccountService(nil, TrinsicProductionConfig(), channel)
    ```
=== "Java"
    ```java
    var accountService = new AccountService(null);
    ```
=== "Ruby"
    ```ruby
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_prod_server)
    ```

### Sign In
Sign into a wallet. If a wallet has not been created with the information, a new wallet will be created.

- [Sign In Request](../proto/index.md#signinrequest)
- [Sign In Response](../proto/index.md#signinresponse)


=== "Trinsic CLI"
    ```bash

    ```
=== "TypeScript"
    ```typescript
    const allison = (await accountService.signIn()).getProfile();
    ```
=== "C#"
    ```csharp
    var allison = await accountService.SignInAsync();
    ```
=== "Python"
    ```python
    allison = await account_service.sign_in()
    ```
=== "Go"
    ```golang
    profile, _, err := accountService.SignIn(context.Background(), nil)
    ```
=== "Java"
    ```java
    var allison = accountService.signIn(null).get().getProfile();
    ```
=== "Ruby"
    ```ruby
    allison = account_service.sign_in(nil).profile
    ```


### Get Account Info
Returns the account info associated with the wallet. 

- [Info Response](../proto/index.md#inforesponse)

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    const info = await accountService.info();
    ```
=== "C#"
    ```csharp
    var info = await accountService.GetInfoAsync();
    ```
=== "Python"
    ```python
    info = await account_service.get_info()
    ```
=== "Go"
    ```golang
    infoResponse, err := accountService.GetInfo(context.Background())
    ```
=== "Java"
    ```java
    var info = accountService.getInfo().get();
    ```
=== "Ruby"
    ```ruby
    info = account_service.get_info()
    ```

### Protect Account Profile
Blinds the account profile token using oberon

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    const protectedProfile = (await accountService.protect(accountProfile, "1234"));
    ```
=== "C#"
    ```csharp
    var protectedProfile = accountService.Protect(accountProfile, "1234");
    ```
=== "Python"
    ```python
    protected_profile = account_service.protect(account_profile, "1234".encode('utf-8'))
    ```
=== "Go"
    ```golang
    protectedProfile, err := accountService.Protect(accountProfile, "1234")
    ```
=== "Java"
    ```java
    var protectedProfile = accountService.protect(accountProfile, "1234");
    ```
=== "Ruby"
    ```ruby
    protected_profile = account_service.protect(account_profile, '1234')
    ```

### Unprotect Account Profile
Unblinds the account profile token using oberon

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    const accountProfile = (await accountService.unprotect(protectedProfile, "1234"));
    ```
=== "C#"
    ```csharp
    var accountProfile = accountService.Unprotect(protectedProfile, "1234");
    ```
=== "Python"
    ```python
    account_profile = account_service.protect(protected_profile, "1234".encode('utf-8'))
    ```
=== "Go"
    ```golang
    accountProfile, err := accountService.Unprotect(protectedProfile, "1234")
    ```
=== "Java"
    ```java
    var accountProfile = accountService.unprotect(protectedProfile, "1234");
    ```
=== "Ruby"
    ```ruby
    account_profile = account_service.unprotect(protected_profile, '1234')
    ```

<!-- 
### Revoke Device

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ``` -->

<!-- 
### List Devices

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    ```typescript
    
    ```
=== "C#"
    ```csharp
    
    ```

=== "Python"
    ```python
    
    ```

=== "Go"
    ```golang
    
    ```
=== "Java"
    ```java
    
    ```
=== "Ruby"
    ```ruby
    
    ``` -->