# Universal Wallet Service

## Inserting Records

=== "Trinsic CLI"
    ```bash

    # default search query, returns all records
    trinsic wallet search

    ```
=== "JavaScript"

    ```js
    var items = await service.Search();

    //optionally, specify a search query
    var items = await service.Search("SELECT * FROM c WHERE c.type = 'VerifiableCredential'");
    ```

=== "C#"

    ```csharp
    var service = new WalletService();
    var items = await service.Search();
    ```

## Searching / Querying

Querying wallet data in our SDK is enabled through the use of familiar SQL syntax. All data is stored in JSON-LD format, so it can be easily searched.
This apporach allows us to give developers full control over how data is retrieved. In addition to customizable sorting, paging and filtering, developers have the ability to construct projections, combine result sets, and even run user-defined functions over their queries.

### Basic Search

The default query used in the commands below returns a full wallet result set. The query is `SELECT * FROM c`.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search
    ```
=== "JavaScript"

    ```js
    var items = await walletService.Search();
    ```

=== "C#"

    ```csharp
    var items = await walletService.Search();
    ```

### SQL Search

To pass custom query to the search function, use the query parameter or the available overload.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search \
        --query "SELECT * FROM c WHERE c.type = 'VerifiableCredential'"
    ```
=== "JavaScript"

    ```js
    var items = await walletService.Search("SELECT * FROM c WHERE c.type = 'VerifiableCredential'");
    ```

=== "C#"

    ```csharp
    var items = await walletService.Search("SELECT * FROM c WHERE c.type = 'VerifiableCredential'");
    ```


### Common SQL Queries

#### Paging

Paging uses the `OFFSET` clause that takes in a value indicating how many records should be skipped in the returned query. To specify the size of the result set (page size) use the `LIMIT` clause.

```sql
SELECT * FROM c OFFSET 10 LIMIT 5
```

#### Sorting

The optional `ORDER BY` clause specifies the sorting order for results returned by the query. To control sorting order, optinally specify `ASC` or `DESC` at the end.

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
Examples and detailed description on working with grouped results [can be found here :material-open-in-new:](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-group-by){target=_blank}

### Complete SQL Reference Documentation
You can read the full documentation on working with [SQL queries :material-open-in-new:](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-getting-started){target=_blank} on the Azure Cosmos DB website.