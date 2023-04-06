# Wallet API

The Wallet API is the main interface for interacting with a cloud wallet, if you're providing custom wallet experience and building your own digital wallet integration.
If you'd like to use Trinsic's integrated cloud wallet app, you likely won't need to use this API.

!!! info "Wallet Standard"
    This service is designed to follow the recommendations of the [Universal Wallet 2020 <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/universal-wallet-interop-spec/){target=_blank} specification by the W3C Community Credentials Group.

---

## Create Wallet

Create a new wallet and return the authentication token and wallet information about the newly created wallet.

{{ proto_sample_start() }}
    === "C#"
        ```csharp
        using Trinsic;
        using Trinsic.Services.UniversalWallet.V1;

        var trinsic = new TrinsicService();

        var response = await trinsic.Wallet.CreateWalletAsync(new CreateWalletRequest {
            EcosystemId = "acme-corp",
            Description = "user@acme-corp.org"
        });

        // Response:
        // {
        //     "WalletId": "urn:wallets:abc123",
        //     "AuthToken": "dGhpcyBpcyBhbiBleGFtcGxlIGF1dGhlbmNpdGlvbiB0b2tlbgo="
        // }
        ```
{{ proto_method_tabs("services.universalwallet.v1.UniversalWallet.CreateWallet") }}

---

## Insert Item

Stores a credential (or any other JSON object) in a wallet.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [VerifyProof](../../../web/test/WalletService.test.ts) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/samples/wallet_demo.py) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [RegisterIssuer](../../../go/services/wallet_service_test.go) inside_block:insertItemWallet
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [RegisterIssuer](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:insertItemWallet
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

Retrieves an item by its ID.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic wallet search --query "SELECT * FROM _ WHERE _.id = '{id}'"
        ```

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

## Delete Item

Deletes an item.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic wallet delete-item --item-id {id}
        ```

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

Searches a wallet, returning all matching items, and a `continuation_token` to paginate large result sets.

If no `query` is specified, this call by default returns the first 100 items in the wallet.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic wallet search
        ```

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

