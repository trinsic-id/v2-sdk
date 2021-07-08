# Wallet Service

The wallet service is the main interface for interacting with a cloud wallet. The service endpoints are designed to closely match the recommendations of the [Universal Wallet 2020 :material-open-in-new:](https://w3c-ccg.github.io/universal-wallet-interop-spec/){target=_blank} specficiation by W3C CCG. The service exposes a gRPC interface and a set of data contracts as described in the specification. Our intention with this design is to bring it closer to interoperability as more implementations of this wallet appear in production.

## Create Wallet

Wallets can be created directly by the user or through an invitation by the ecosystem provider. Depending on the ecosystem settings, direct wallet creation may not be enabled for your provider.

### Create wallet directly

To create a wallet directly without invitation, use the following methods. These methods return secure profile data that should be stored in a safe place. The profile is used to authenticate the wallet service with the cloud provider. Read more details and recommendations in the [Security Profiles](/reference/setup/#authorization) page.

=== "Trinsic CLI"
    ```bash
    trinsic wallet create --name <profile_name>
    ```
=== "TypeScript"
    ```typescript
    const profile = await walletService.createWallet();
    ```
=== "C#"
    ```csharp
    var profile = await walletService.Create();
    ```

### Create wallet with provider invitation

If invited by a provider, you can supply the security code found in your invitation (via email, SMS, etc). Read more about [inviting participants](/reference/services/provider-service/#invite-participants) to your ecosystem as provider.

=== "Trinsic CLI"
    ```bash
    trinsic wallet create --name <profile> --security-code <code>
    ```
=== "TypeScript"
    ```typescript
    const profile = await walletService.createWallet("<security code>");
    ```
=== "C#"
    ```csharp
    var profile = await walletService.Create("<security code>");
    ```

## Insert Record

This method allows inserting any JSON data in the wallet.

=== "Trinsic CLI"
    ```bash
    trinsic wallet insert-item --item <INPUT_JSON_FILE>
    ```
=== "TypeScript"
    ```typescript
    let itemId = await walletService.insertItem({
        "foo": "bar"
    });
    ```
=== "C#"
    ```csharp
    var item = new JObject
    {
        { "foo", "bar" }
    };

    var itemId = await walletService.InsertItem(item);
    ```

The output of this method will be a unique `itemId` that can be used as input where required.

## Search / Query

Querying wallet data in our SDK is enabled through the use of familiar SQL syntax. All data is stored in JSON-LD format, so it can be easily searched.
This apporach allows us to give developers full control over how data is retrieved. In addition to customizable sorting, paging and filtering, developers have the ability to construct projections, combine result sets, and even run user-defined functions over their queries.

> This endpoint will support querying using [Verifiable Presentation Request Spec :material-open-in-new:](https://w3c-ccg.github.io/vp-request-spec/){target=_blank}. This feature is still in development.

### Basic Search

The default query used in the commands below returns a full wallet result set. The query is `SELECT * FROM c`.

=== "Trinsic CLI"
    ```bash
    trinsic wallet search
    ```
=== "TypeScript"

    ```typescript
    const items = await walletService.Search();
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
=== "TypeScript"

    ```typescript
    const query = "SELECT * FROM c WHERE c.type = 'VerifiableCredential'";

    const items = await walletService.search(query);
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
Examples and detailed description on working with grouped results [can be found here :material-open-in-new:](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-group-by){target=_blank}

### Additional Resources

You can read the full documentation on working with SQL queries on the [Azure Cosmos DB website :material-open-in-new:](https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-getting-started){target=_blank}.

## Issue Credential

The wallet service supports signing data using [BBS+ Signatures :material-open-in-new:](https://w3c-ccg.github.io/ldp-bbs2020/){target=_blank}. The data is signed with a key unique to the owner's wallet. This key is also used as linked secret, when it comes to proof derivation.

> This endpoint requires that the user provide a valid JSON-LD document.

=== "Trinsic CLI"
    ```bash
    trinsic issuer issue --document <INPUT_JSONLD_FILE> --out <OUTPUT_FILE>
    ```
=== "TypeScript"

    ```typescript
    let unsignedDocument = {
        "@context": "https://w3id.org/security/v2",
        "id": "https://issuer.oidp.uscis.gov/credentials/83627465"
    }

    let signedDocument = await walletService.issue(unsignedDocument);
    ```

=== "C#"

    ```csharp
    var unsignedDocument = new JObject
    {
        { "@context", "https://w3id.org/security/v2" },
        { "id", "https://issuer.oidp.uscis.gov/credentials/83627465" }
    };

    var signedDocument = await walletService.IssueCredential(unsignedDocument);
    ```

The output of this method will be a signed JSON document using BBS+ Signature Suite 2020. This document is not automatically stored in the wallet when issued. You need to call the [insert record](#insert-record) separately if you'd like to store a copy of this document.

## Create Proof

Wallets allow data to be shared between parties in a secure manner, using a technique called [Zero Knowledge Proofs](/faq/#what-are-zero-knowledge-proofs). Trinsic Ecosystems uses the BBS+ Signature Proof scheme to allow data to be selectively disclosed to the requesting party. This allows users to share only the requested subset of data, instead the entire document.

The endpoint to create a proof requires two inputs:

- document in the wallet that is signed with the correct signature
- JSONLD frame that describes the data to be disclosed

=== "Trinsic CLI"
    ```bash
    trinsic issuer create-proof --document-id <STRING> --out <OUTPUT_FILE> --reveal-document <JSONLD_FRAME_FILE>
    ```
=== "TypeScript"

    ```typescript
    let frame = {
        "@context": "https://www.w3.org/2018/credentials/v1",
        "type": [ "VerifiableCredential" ],
        "@explicit": true,
        "issuer": {}
    }
    let itemId = "<item document id>";

    let signedDocument = await walletService.createProof(itemId, frame);
    ```

=== "C#"

    ```csharp
    var frame = new JObject
    {
        { "@context", "https://www.w3.org/2018/credentials/v1" },
        { "@explicit", true }
        { "issuer", new JObject() }
    };
    var itemId = "<item document id>";

    var signedDocument = await walletService.CreateProof(itemId, frame);
    ```

## Verify Proof

This endpoint verifies if the submitted data contains a valid proof. The data to be verified must contain a Linked Data Proof with BBS+ signature scheme.

=== "Trinsic CLI"
    ```bash
    trinsic issuer verify-proof --proof-document <JSONLD_FILE>
    ```
=== "TypeScript"

    ```typescript
    let isValid = await walletService.verifyProof(proofDocument);

    console.log("Verify result: " + isValid);
    ```

=== "C#"

    ```csharp
    var isValid = await walletService.VerifyProof(proofDocument);

    Console.WriteLine($"Verify result: {isValid}");
    ```

## Data Exchange

Exchanging data securely is one of the fundamental functions of digital identity systems. There are many specifications with varying maturity that aim to provide interoperable and secure way of exchanging authentic data. We are commited to providing support for these methods.

- [DIDComm Messaging :material-open-in-new:](https://identity.foundation/didcomm-messaging/spec/){target=_blank}
- [Wallet And Credential Interactions :material-open-in-new:](https://identity.foundation/wallet-and-credential-interactions/){target=_blank}
- [OpenID Connect Credential Provider :material-open-in-new:](https://mattrglobal.github.io/oidc-client-bound-assertions-spec/){target=_blank}

> During this beta period, we are only supporting exchanging data between users by using their email addresses. The messages are routed securely to the destination wallet without leaving the secure network of the ecosystem backend. Our goal is to provide basic ability to share data without affecting the user experience. As interoperable exchange methods become available, we will add this functionality in the SDK.

### Sending documents using Email as identifier

To send a document to another user, they must have created a wallet and [associated their email address](#create-wallet-with-provider-invitation) with that wallet.

=== "Trinsic CLI"
    ```bash
    trinsic wallet send --email <EMAIL_ADDRESS> --item <FILE>
    ```
=== "TypeScript"

    ```typescript
    await walletService.send(document, "admin@example.com");
    ```

=== "C#"

    ```csharp
    await walletService.Send(document, "admin@example.com");
    ```
