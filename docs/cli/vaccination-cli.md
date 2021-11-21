# Vaccination Use Case for CLI

It can be challenging to understand how verifiable credentials work until you see some examples. This walkthrough will show how a vaccination card might be issued, held, and proven using verifiable credentials with the Trinsic CLI. It assumes no prior knowledge to decentralized identity.

## Installation

You can also use a [cloud environment](./demo.md) we host on repl.it to get started in one click. You can use this demo environment alongside this walkthrough using two tabs in your browser.

If you'd rather run the CLI on your machine, you can install the CLI using the [installation instructions](./index.md)

Once the CLI is installed, clone our CLI example repository on Github to download the credential data for this walkthrough
```
git clone https://github.com/trinsic-id/cli-example && cd cli-example
```

--8<--
<!-- snippets/intro-infrastructure.md -->
snippets/intro-use-case.md
--8<--

## Meet Allison

Allison's town just received the go ahead to vaccinate everyone.
We'll walk through a scenario where Allison gets her vaccination card and then generates a pass with it to board an airline, all using her devices.


To start, create a directory call walkthrough, and then three directories in that called `allison`, `clinic`, and `airline`. 
```
walkthrough
|- allison
|- clinic
|- airline
```


## Create Wallets

We'll start by creating a wallet for each participant in this credential exchange. Wallets can be created by anyone, for anyone. In this scenario, we have three wallets. Allison will be the credential holder, the Airline will be the verifier, and the vaccination clinic will be the issuer.

These wallets have been created by you, your role is an ecosystem provider. Your role is to help deploy a credential exchange ecosystem.

=== "Trinsic CLI"

    ```bash
    trinsic wallet create --description "Allison's Wallet" --name allison && \
    trinsic wallet create --description "Airline's wallet" --name airline && \
    trinsic wallet create --description "Vaccination Clinic" --name clinic
    ```

!!! note
    Reference: [Create Wallet](../reference/services/wallet-service.md#create-wallet)

---

## Issue a Credential

Each credential is a JSON document that is signed with a special digital signature to makes each piece of data in the credential separately verifiable. This is a called bbs+ signature scheme.
The credential is signed, but not sent. For now, sending the credential should be done through existing communication methods.

=== "Trinsic CLI"

    ```bash
    trinsic  --profile clinic issuer issue --document data/vaccination-certificate-unsigned.json --out vaccination-certificate-signed.json
    ```

!!! info
    Reference: [Issue a Credential](../reference/services/wallet-service.md#issue-credential)

---

## Store Credential in Wallet
Once Allison receives the credential, she can store it within her wallet. She can use any device that she's authorized to use with her wallet.


=== "Trinsic CLI"

    ```bash
    trinsic --profile allison wallet insert-item --item vaccination-certificate-signed.json
    ```

Note down the response `item_id` printed to the console for the next step.

!!! info
    Reference: [Insert Record](../reference/services/wallet-service.md#insert-record)l

---

## Search Wallet for Credential
If you'd like to check the credential in Allison's wallet to see if it arrived, you can search the wallet for the `id` of the credential.

=== "Trinsic CLI"
    ```bash
    trinsic --profile allison wallet search --query "SELECT * FROM c WHERE c.id='<item_id>'"
    ```

!!! info
    Reference: [Search Wallet](../reference/services/wallet-service.md#search-query)
## Create Proof
Now let's create a proof for Allison. She may choose to generate this proof before going to the airport, or might generate it right as she boards.

Replace the `<item_id>` in the generate proof command below with the output from the `insert_item` above.


=== "Trinsic CLI"

    ```bash
    trinsic --profile allison issuer create-proof --document-id "<item-id>" --out vaccination-certificate-partial-proof.json --reveal-document data/vaccination-certificate-frame.json
    ```

Take a look at the proof. Notice how only the attributes included in the `frame` are included with the proof.

Allison sends this proof to the airline for them to verify.

!!! info
    Reference: [Create Proof](../reference/services/wallet-service.md#create-proof)

---

## Verify Proof
Once the airline receives the proof, they can now verify it to ensure its authenticity. Because Allison sent a proof of her vaccination credential and not the credential itself, the airline only receives its required information.

=== "Trinsic CLI"

    ```bash
    trinsic --profile airline issuer verify-proof --proof-document vaccination-certificate-partial-proof.json
    ```
Watch for the output of `true` to know that the credential successfully passed all of the verification processes.
!!! info
    Reference: [Verify Proof](../reference/services/wallet-service.md#verify-proof)
