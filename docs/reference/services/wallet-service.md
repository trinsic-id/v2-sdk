# Wallet API

The Wallet API is the main interface for interacting with a cloud wallet. It is primarly used when you're providing custom wallet experience and building your own digital wallet integration.
If you'd like to use Trinsic's integrated cloud wallet app, you likely won't need to use this API.

!!! question "Migrating from Account API?"

    Check out our [migration guide](/learn/resources/migrate-account) on how to migrate your code that uses the deprecated Account API.

---

## Create Wallet

Create a new wallet and return the authentication token and wallet information about the newly created wallet.

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        var createWalletRequest = new CreateWalletRequest {
            EcosystemId = ecosystem.Id,
            Description = "user123",
            Identity = new CreateWalletRequest.Types.ExternalIdentity {
                Identity = "testemail@trinsic.id",
                Provider = IdentityProvider.Email
            }
        };

        var createWalletResponse = await trinsic.Wallet.CreateWalletAsync(createWalletRequest);

        // Response: {
        //     "authToken": "dGhpcyBpcyBhbiBleGFtcGxlIGF1dGhlbmNpdGlvbiB0b2tlbgo=",
        //     "tokenId": "0b4f42cb-4d44-4629-89dd-47b814229ffe",
        //     "wallet": {
        //          "walletId": "urn:trinsic:wallets:z7438uW5X4gZ1rZsiZaBdxX",
        //          "publicDid": "did:key:123456"
        //     }
        // }
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.CreateWallet") }}

---

## Authenticate

Authenticate and return an auth token for an    existing wallet using one of the associated external identities.
This endpoint requires that the wallet user has previously added at least one external identity using the above endpoints.

Once a token is obtained, it can be reused for future sessions -- users don't need to authenticate if they already have a valid token.
You can store the auth token in secure enclaves on the users device, browser, etc.

!!! question "When should users authenticate?"

    - If your integration solution doesn't manage the wallet tokens, users may need to re-authenticate on their device to get a new auth token
    - Users want to log in to a different device using their email or phone number
    - Returning users that have lost their previous session and require a new auth token

### AuthenticateInit

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        // Step 1 - initiate authentication challenge
        var authenticateInitRequest = new AuthenticateInitRequest {
            Identity = "test@trinsic.id",
            Provider = IdentityProvider.Email,
            EcosystemId = "test-ecosystem" // short name or full ecosystem ID
        };
        var authenticateInitResponse = await trinsic.Wallet.AuthenticateInitAsync(authenticateInitRequest);
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.AuthenticateInit") }}

### AuthenticateConfirm

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        // Step 2 - confirm authentication response
        var authenticateConfirmRequest = new AuthenticateConfirmRequest {
            Challenge = authenticateInitResponse.Challenge,
            Response = "123456" // OTP code
        };
        var authenticateConfirmResponse = await trinsic.Wallet.AuthenticateConfirmAsync(authenticateConfirmRequest);

        // Response: {
        //     "authToken": "dGhpcyBpcyBhbiBleGFtcGxlIGF1dGhlbmNpdGlvbiB0b2tlbgo="
        // }

        // use the new token to make authenticated calls
        // var options = new TrinsicOptions { AuthToken = AuthenticateConfirmResponse.AuthToken };
        // trinsic = new TrinsicService(options);
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.AuthenticateConfirm") }}

---

## Add External Identity

This service is used to attach external identity, such as email or phone number, to a wallet. The purpose of this process is to allow
the user to authenticate to their existing wallet (using the `Authenticate` endpoint) to get an auth token.
This may be needed if the user is logging in on a different device, have lost access to the initial auth token, etc.

The process for adding external identity is based on confirming an OTP code that will be sent to the user's email address or phone number. To do this, you should call the
services `AddExternalIdentityInit` and `AddExternalIdentityConfirm`.

### AddExternalIdentityInit

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        // the two endpoints below require authenticated user context
        // var options = new TrinsicOptions { AuthToken = "<auth token>" };
        // var trinsic = new TrinsicService(options);

        // Step 1 - initiate identity challenge
        var addExternalIdentityInitRequest = new AddExternalIdentityInitRequest {
            Identity = "test@trinsic.id",
            Provider = IdentityProvider.Email
        };
        var addExternalIdentityInitResponse = await trinsic.Wallet.AddExternalIdentityInitAsync(addExternalIdentityInitRequest);
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.AddExternalIdentityInit") }}

### AddExternalIdentityConfirm

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        // Step 2 - confirm challenge response
        var addExternalIdentityConfirmRequest = new AddExternalIdentityConfirmRequest {
            Challenge = addExternalIdentityInitResponse.Challenge,
            Response = "123456" // OTP code
        };
        var addExternalIdentityConfirmResponse = await trinsic.Wallet.AddExternalIdentityConfirmAsync(addExternalIdentityConfirmRequest);
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.AddExternalIdentityConfirm") }}

---

## Remove External Identity

Removes an external identity from the associated identities of the authenticated wallet.

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        // this endpoint require authenticated user context
        // var options = new TrinsicOptions { AuthToken = "<auth token>" };
        // var trinsic = new TrinsicService(options);

        var removeExternalIdentityRequest = new RemoveExternalIdentityRequest {
            Identity = "test@trinsic.id",
        };
        var removeExternalIdentityResponse = await trinsic.Wallet.RemoveExternalIdentityAsync(removeExternalIdentityRequest);
        ```

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.RemoveExternalIdentity") }}

---

## Insert Item

Stores a credential (or any other JSON object) in a wallet.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [insertItemWallet](../../../web/test/WalletService.test.ts) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [insertItemWallet](../../../dotnet/Tests/Tests.cs) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [insertItemWallet](../../../python/samples/wallet_demo.py) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [insertItemWallet](../../../go/services/wallet_service_test.go) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [insertItemWallet](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.InsertItem") }}

!!! question "What can be stored in a wallet?"

    Wallets are mainly intended to hold [Verifiable Credentials](/learn/concepts/credentials){target=_blank}, but can technically
    store any JSON blob.

    If you store a Verifiable Credential in a Wallet, ensure that its `item_type` is `VerifiableCredential`.

    Otherwise, ensure its `item_type` is _not_ `VerifiableCredential`.

---

## Get Item

Retrieves an item of the wallet by its ID.

{{ proto_sample_start() }}

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetItem](../../../web/test/WalletService.test.ts) inside_block:getItem
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetItem](../../../dotnet/Tests/Tests.cs) inside_block:getItem
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetItem](../../../python/samples/wallet_demo.py) inside_block:getItem
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetItem](../../../go/services/wallet_service_test.go) inside_block:getItem
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetItem](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:getItem
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.GetItem") }}

---

## Get Wallet

Retrieves information about wallets in the ecosystem. These endpoints can only be called by a Provider, so make sure you authenticate as it before calling them.

### GetWalletInfo

Retrieves information about a wallet by its ID.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [getWalletInfo](../../../web/test/WalletService.test.ts) inside_block:getWalletInfo
        ```
        <!--/codeinclude-->

    === "C#"
        ```csharp
        [getWalletInfo](../../../dotnet/Tests/Tests.cs) inside_block:getWalletInfo
        ```

    === "Python"
        <!--codeinclude-->
        ```python
        [getWalletInfo](../../../python/samples/wallet_demo.py) inside_block:getWalletInfo
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [getWalletInfo](../../../go/services/wallet_service_test.go) inside_block:getWalletInfo
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [getWalletInfo](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:getWalletInfo
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.GetWalletInfo") }}

### GetWalletFromExternalIdentity

Retrieves information about a wallet by its External Identity (email or phone number).

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [getWalletFromExternalIdentity](../../../web/test/WalletService.test.ts) inside_block:getWalletFromExternalIdentity
        ```
        <!--/codeinclude-->

    === "C#"
        ```csharp
        var getWalletFromExternalIdentityRequest = new GetWalletFromExternalIdentityRequest {
            Identity = new WalletExternalIdentity() {
                Id = "test@trinsic.id",
                Provider = IdentityProvider.Email
            }
        };

        var getWalletFromExternalIdentityResponse = await trinsic.Wallet.GetWalletFromExternalIdentityAsync(getWalletFromExternalIdentityRequest);
        ```

    === "Python"
        <!--codeinclude-->
        ```python
        [getWalletFromExternalIdentity](../../../python/samples/wallet_demo.py) inside_block:getWalletFromExternalIdentity
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [getWalletFromExternalIdentity](../../../go/services/wallet_service_test.go) inside_block:getWalletFromExternalIdentity
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [getWalletFromExternalIdentity](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:getWalletFromExternalIdentity
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.GetWalletFromExternalIdentity") }}

---

## Delete Item

Deletes an item of the wallet by its ID.

{{ proto_sample_start() }}

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [DeleteItem](../../../web/test/WalletService.test.ts) inside_block:deleteItem
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [DeleteItem](../../../dotnet/Tests/Tests.cs) inside_block:deleteItem
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [DeleteItem](../../../python/samples/wallet_demo.py) inside_block:deleteItem
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [DeleteItem](../../../go/services/wallet_service_test.go) inside_block:deleteItem
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [DeleteItem](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:deleteItem
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.DeleteItem") }}

---

## Delete Wallet

Deletes a wallet, and all its credentials, permanently.

Any wallet may delete itself by passing its own ID to this call. Only Provider wallets may delete wallets other than themselves.

Wallet deletion is **permanent** and cannot be undone.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [DeleteWallet](../../../web/test/WalletService.test.ts) inside_block:deleteWallet
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [DeleteWallet](../../../dotnet/Tests/Tests.cs) inside_block:deleteWallet
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [DeleteWallet](../../../python/samples/wallet_demo.py) inside_block:deleteWallet
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [DeleteWallet](../../../go/services/wallet_service_test.go) inside_block:deleteWallet
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [DeleteWallet](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:deleteWallet
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.DeleteWallet") }}

---

## Search Wallet

Searches a wallet, returning all matching items, and a {{ field_ref("SearchResponse", "continuation_token") }} to paginate large result sets.

If no {{ field_ref("SearchRequest", "query") }} is specified, this call by default returns the first 100 items in the wallet.

{{ proto_sample_start() }}

    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [SearchWallet](../../../web/test/WalletService.test.ts) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/samples/wallet_demo.py) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [RegisterIssuer](../../../go/services/wallet_service_test.go) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [RegisterIssuer](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.Search") }}


!!! info "Verifiable Presentation Request Spec"
    In the future, this endpoint will support the [Verifiable Presentation Request Spec <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/vp-request-spec/){target=_blank}.

### Advanced Search

The Search endpoint supports SQL queries through the `query` parameter.

This allows for arbitrary query predicates, as well as more advanced functionality -- such as modifying the output format.

#### Schema

Any table name may be used in your query (we use `c` here) -- it doesn't matter what it is.


| Name | Type   | Description                                                               |
| ---- | ------ | ------------------------------------------------------------------------- |
| id   | string | Corresponds to the `item_id` returned when item was inserted into wallet  |
| type | string | Specified via `item_type` when item was inserted into wallet              |
| data | object | The JSON object passed via `item_json` when item was inserted into wallet |


Note that `data` is an object, not a string; thus, any of its sub-fields may be queried against.

For example, `SELECT * FROM c WHERE c.data.someField = 'Hello, World!'` would match against the following JSON object inserted via [InsertItem](#insert-item):

```json
{
    "someField": "Hello, World!"
}
```

#### Common SQL Queries

#### Paging

Paging uses the `OFFSET` clause that takes in a value indicating how many records should be skipped in the returned query. To specify the size of the result set (page size) use the `LIMIT` clause.

```sql
SELECT * FROM c OFFSET 10 LIMIT 5
```

#### Sorting

The optional `ORDER BY` clause specifies the sorting order for results returned by the query. To control sorting order, specify `ASC` or `DESC` at the end; if not specified ascending order is used by default.

```sql
SELECT * FROM c ORDER BY c.credential.issued DESC
```

#### Filtering

The optional WHERE clause (`WHERE <filter_condition>`) specifies condition(s) that the source JSON items must satisfy for the query to include them in results. A JSON item must evaluate the specified conditions to true to be considered for the result. The index layer uses the `WHERE` clause to determine the smallest subset of source items that can be part of the result.

```sql
SELECT * FROM c WHERE c.name = 'Trinsic' AND c.dateCreated >= "2020-09-30T23:14:25.7251173Z"
```

#### Grouping

The `GROUP BY` clause divides the query's results according to the values of one or more specified properties.
Examples and detailed description on working with grouped results [can be found here <small>:material-open-in-new:</small>](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-group-by){target=_blank}

### Additional Resources

You can read the full documentation on working with SQL queries on the [Azure Cosmos DB website <small>:material-open-in-new:</small>](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-getting-started){target=_blank}.

