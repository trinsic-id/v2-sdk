# Account Service

When you need to manage trinsic account, you will most definitely interface with the Account Service. Below you will find information on how to work with
the different procedures pertinent to the account service.

### Sign In

Create login credentials by signing into an existing account or creating a new one. As part of this procedure, you must provide a 
[Sign In Request](../proto/index.md#signinrequest) object that contains account details information such as name (alias) of the account, email, 
and an SMS phone number. You may also provide an invitation code and ecosystem ID if you have them. 

The sign in request should look like this:

{{ proto_obj('SignInRequest') }}

And the [Account Details](../proto/#signinrequest) object should look like this:

{{ proto_obj('AccountDetails') }}



=== "Trinsic CLI"
    ```bash
    trinsic account login --email <PROFILE_EMAIL> --name <PROFILE_NAME>
    ```

=== "TypeScript"
    ```typescript
    const allison = (await accountService.signIn()).getProfile();
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:accountServiceSignIn
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:accountServiceConstructor
    ```
    <!--/codeinclude-->

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

{{ proto_obj('SignInResponse') }}

### Get Account Info
This will returns the account info of the current active profile in the SDK or CLI. This can only be called on a profile that has been 
[unprotected](./account-service.md/#unprotect-account-profile) by providing a code that was sent through email or SMS when the account was 
signed in. Its response is a [Info Response](../proto/index.md#inforesponse) object and has the following properties:

{{ proto_obj('InfoResponse') }}

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
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:accountServiceGetInfo
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:accountServiceGetInfo
    ```
    <!--/codeinclude-->

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
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

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
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:protectUnprotectProfile
    ```
    <!--/codeinclude-->

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
