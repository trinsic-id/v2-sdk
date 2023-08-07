# Issuance of Verifiable Credentials

The process of issuing credentials involves the creation of Verifiable Credentials, which are securely stored in the subject's wallet, commonly referred to as the holder.

## Methods of issuance

In our platform, we distinguish between two types of issuances, each fulfilling a distinct purpose:

### Direct issuance

:   This form of credential issuance allows issuing parties to sign a Verifiable Credential without requiring user interaction, consent, or binding commitment. In this case, the issued credential is returned to the issuer in the response and can be sent to the user directly.

    To use direct issuance in your integration, use the [Issue from Template](/reference/services/credential-service/#issue-credential-from-template) method. The returned credential can then be exchanged with the user using one of the methods described in the next section.

    ``` mermaid
    sequenceDiagram
        autonumber
        actor Issuer
        participant API
        actor Holder
        Issuer->>API: Call [Issue from Template]
        API-->>Issuer: [Verifiable Credential]
        Issuer->>API: Call [Send]
        note over API: [Verifiable Credential] is stored in the wallet<br/>owned by the specified email
        API-->>Holder: Email notification
    ```

### Interactive issuance

:   This form of issuance provides few extra options over direct issuance. Namely, it allows the provider to ask the user for consent to issue a credential for them. Additionally, it allows the provider to configure the holder binding properties of the credential such that the issued credential will be bound to the intended holder. This will make the credential non-transferable and only usable by the holder of the credential.

    The related API methods for use with this type of issuance start with [Create Offer](#) method. This method will create an unsigned Verifiable Credential which can be
    presented to the user. This offer can then be presented to the user and allow the user to accept it, by calling the [Accept Offer](#) method. Should the user decide to reject this offer, call the [Reject Offer](#) method.

    ``` mermaid
    sequenceDiagram
        autonumber
        actor Issuer
        participant API
        actor Holder
        Issuer->>API: Call [Create Offer]
        API-->>Issuer: [Credential Offer]
        Issuer->>Holder: Present [Credential Offer]
        Holder->>API: Call [Accept Credential]
        API->>API: Exchange [Credential Offer]
        note over API: Holder's wallet adds binding information<br/>and submits the proof to the Issuer's wallet<br/>for final issuance
        API-->>Holder: [Verifiable Credential]
    ```

## Credential exchange methods

Once the Verifiable Credential (or Credential Offer) is created, it can be shared with the user. There are few different ways to approach this exchange:

### Manually, using the Branded Studio

:   If you want to manually issue a credential to a user using the Branded Studio, this method is the easiest and most useful.
    Simply log in to your studio (the URL can be found on the main Dashboard page) and navigate to the 'Issue' option in the left-hand menu.
    Choose the desired template for issuing the credential and provide the user's details, including their email address.
    Once completed, the credential will be sent to the user, who will receive an email notification.
    !!! note ""

        Use this method to send yourself a credential and get some test data in your wallet.

<!--

### Programmatically, using Credential Handler API (CHAPI)

TODO

### Programmatically, using custom integration and Trinsic API

TODO -->
