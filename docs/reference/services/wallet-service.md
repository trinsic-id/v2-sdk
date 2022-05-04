# Wallet Service

The wallet service is the main interface for interacting with a cloud wallet. The service endpoints are designed to closely match the recommendations of the [Universal Wallet 2020 <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/universal-wallet-interop-spec/){target=_blank} specification by W3C Community Credentials Group. The service exposes a gRPC interface and a set of data contracts as described in the specification. Our intention with this design is to bring it closer to interoperability as more implementations of this wallet appear in production.

!!! question "Wallets vs Accounts"
    Wallets and accounts are related and often interchangeable -- each account has an associated wallet, and operations on a wallet are performed using an account's access token.

    Every account has exactly one wallet. 


## Create Wallet

Wallets can be created directly by the user or through an invitation by the ecosystem provider. Depending on the ecosystem settings, direct wallet creation may not be enabled for your provider. The wallet is created automatically upon user signin. For more information on that, see the link below:

- [Account Sign In](./account-service.md#sign-in)

## Insert Item

Trinsic supports the ability to insert verifiable credentials into a wallet simply using JSON data.

=== "Trinsic CLI"
    ```bash
    trinsic wallet insert-item --item <INPUT_JSON_FILE>
    ```

When using an SDK to perform this operation, you will need to supply an [Insert Item Request](../proto/#insertitemrequest) object that follows the structure below:

{{ proto_obj('InsertItemRequest') }}

Then you can supply it to the SDKs:

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
    [Insert Item Wallet](../../../python/samples/vaccine_demo.py) inside_block:insertItemWallet
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
    [RegisterIssuer](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:insertItemWallet
    ```
    <!--/codeinclude-->

The output of this method will be a unique `itemId` that can be used as input where required. The response model looks like this:

{{ proto_obj('InsertItemResponse') }}

## Search / Query

Querying wallet data in our SDK is enabled through the use of familiar SQL syntax. All data is stored in JSON-LD format, so it can be easily searched.
This approach allows us to give developers full control over how data is retrieved. In addition to customizable sorting, paging and filtering, developers have the ability to construct projections, combine result sets, and even run user-defined functions over their queries.

> This endpoint will support querying using [Verifiable Presentation Request Spec <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/vp-request-spec/){target=_blank}. This feature is still in development.

### Basic Search

The default query used in the commands below returns the first 100 items in the wallet result set. The query is `SELECT * FROM c LIMIT 100`.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [SearchWallet](../../../web/test/WalletService.test.ts) inside_block:searchWallet
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:searchWallet
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/vaccine_demo.py) inside_block:searchWallet
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:searchWallet
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:searchWallet
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

### SQL Search

To pass custom query to the search function, use the query parameter or the available overload.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search \
        --query "SELECT * FROM c WHERE c.type = 'VerifiableCredential'"
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [VerifyProof](../../../web/test/WalletService.test.ts) inside_block:searchWalletSQL
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:searchWalletSQL
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [Insert Item Wallet](../../../python/samples/vaccine_demo.py) inside_block:searchWalletSQL
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [RegisterIssuer](../../../go/services/services_test.go) inside_block:searchWalletSQL
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [RegisterIssuer](../../../java/src/test/java/trinsic/VaccineDemo.java) inside_block:searchWalletSQL
    ```
    <!--/codeinclude-->

=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

### Common SQL Queries

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

