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

=== "Trinsic CLI"
    ```bash

    # default search query, returns all records
    trinsic wallet search

    # optionally, specify a search query
    trinsic wallet search \
        --query "SELECT * FROM c WHERE c.type = 'VerifiableCredential'"

    ```
=== "JavaScript"

    ```js
    var service = new WalletService();
    var items = await service.Search();

    //optionally, specify a search query
    var items = await service.Search(query: "SELECT * FROM c WHERE c.type = 'VerifiableCredential'");
    ```

=== "C#"

    ```csharp
    var service = new WalletService();
    var items = await service.Search();
    ```

### H3

#### H4

##### H5

###### H6