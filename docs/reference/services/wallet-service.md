# Wallet Service

The wallet service is the main interface for interacting with a cloud wallet. 

!!! question "Wallets vs Accounts"
    Wallets and accounts are related and often interchangeable -- each account has an associated wallet, and operations on a wallet are performed using an account's access token.

    Every account has exactly one wallet. 

!!! info "Wallet Standard"
    This service is designed to follow the recommendations of the [Universal Wallet 2020 <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/universal-wallet-interop-spec/){target=_blank} specification by the W3C Community Credentials Group.


## Create Wallet

A wallet is created whenever an account is created.

Therefore, to create a wallet, you'll need to [create a new account](./account-service.md#sign-in).

## Insert Item

Stores a credential (or any other JSON object) in a wallet.

{{ proto_sample_start() }}
    === "Trinsic CLI"
        ```bash
        trinsic wallet insert-item --item <INPUT_JSON_FILE>
        ```

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
        [RegisterIssuer](../../../go/services/services_test.go) inside_block:insertItemWallet
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
    
    Wallets are mainly intended to hold [Verifiable Credentials](/learn/credentials){target=_blank}, but can technically
    store any JSON blob.

    If you store a Verifiable Credential in a Wallet, ensure that its `item_type` is `VerifiableCredential`.

    Otherwise, ensure its `item_type` is _not_ `VerifiableCredential`.


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
        [RegisterIssuer](../../../go/services/services_test.go) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [RegisterIssuer](../../../java/src/test/java/trinsic/WalletsDemo.java) inside_block:searchWalletBasic
        ```
        <!--/codeinclude-->

    === "Ruby"
        <!--codeinclude-->
        ```ruby
        
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

