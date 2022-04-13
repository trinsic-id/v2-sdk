# Account Service

When you need to manage trinsic account, you will most definitely interface with the Account Service. Below you will find information on how to work with
the different procedures pertinent to the account service.

### Construct Instance

If you are using one of Trinsic SDK's, you will need to create an instance of the Account Service in order to use its different procedures/calls. Below you 
will find how to instantiate the Account Service with default settings, by simply calling the constructor without passing any parameters.

=== "TypeScript"
    ```typescript
    const accountService = new AccountService();
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
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->
=== "Ruby"
    ```ruby
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_prod_server)
    ```

The constructor also accepts an `options` object as an argument. It follows the same structure of [ServiceOptions](../proto/index.md#serviceoptions), with the following
properties:

{{ include_section('reference/proto/', 'ServiceOptions') }}

The exact structure of such object will depend on the language you are working with. You can always rely on your editor's intellisense when in doubt. 

### Sign In

Create login credentials by signing into an existing account or creating a new one. As part of the this procedure, you must provide a 
[Sign In Request](../proto/index.md#signinrequest) object that contains account details information such as name (alias) of the account, email, 
and an SMS phone number. You may also provide an invitation code and ecosystem ID if you have them. 

The sign in request should look like this:

{{ include_section('reference/proto/', 'SignInRequest') }}

And the [Account Details](../proto/#signinrequest) object should look like this:

{{ include_section('reference/proto/', 'AccountDetails') }}





=== "Trinsic CLI"
    ```bash
    trinsic account login --email <PROFILE_EMAIL> --name <PROFILE_NAME>
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
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:accountServiceSignIn
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:accountServiceSignIn
    ```
    <!--/codeinclude-->
=== "Ruby"
    ```ruby
    allison = account_service.sign_in(nil).profile
    ```

This operation produces a response that has the structure of a [Sign In Response](../proto/#signinresponse), indicating whether or not a confirmation code
was sent to one of the users two-factor methods like email, SMS, etc. (as defined by the Sign In Request).

{{ include_section('reference/proto/', 'SignInResponse') }}

### Get Account Info
This will returns the account info of the current active profile in the SDK or CLI. This can only be called on a profile that has been 
[unprotected](./account-service.md/#unprotect-account-profile) by providing a code that was sent through email or SMS when the account was 
signed in. Its response is a [Info Response](../proto/index.md#inforesponse) object and has the following properties:

{{ include_section('reference/proto/', 'InfoResponse') }}

Calling this procedure, is as trivial as evidenced below. Keep it mind, however, that it assumes you have the correct profile active.

=== "Trinsic CLI"
    ```bash
    trinsic account info
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
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:getInfo
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:getInfo
    ```
    <!--/codeinclude-->
=== "Ruby"
    ```ruby
    info = account_service.get_info()
    ```

### Protect Account Profile
Protects the specified account profile blinding its token using oberon. It is not possible to execute this call using the CLI, and the parameters that you must 
provide are evidenced in the code snippets below:

=== "TypeScript"
    ```typescript
    const protectedProfile = await accountService.protect(accountProfile, "1234");
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
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->
=== "Ruby"
    ```ruby
    protected_profile = account_service.protect(account_profile, '1234')
    ```

### Unprotect Account Profile
Unprotects the specified account profile unblinding its token using oberon. It is not possible to execute this call using the CLI, and the parameters that you must 
provide are evidenced in the code snippets below. Keep in mind, that if this account was signed in using protection, you must provide the code you received in the
email or SMS as the `securityCode` argument.

=== "TypeScript"
    ```typescript
    const accountProfile = await accountService.unprotect(protectedProfile, "1234");
    ```
=== "C#"
    ```csharp
    var accountProfile = accountService.Unprotect(protectedProfile, "1234");
    ```
=== "Python"
    ```python
    account_profile = account_service.unprotect(protected_profile, "1234".encode('utf-8'))
    ```
=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->
=== "Ruby"
    ```ruby
    account_profile = account_service.unprotect(protected_profile, '1234')
    ```
