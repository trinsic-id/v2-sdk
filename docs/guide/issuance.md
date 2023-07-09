# Issuance of Verifiable Credentials

The process of issuing credentials involves the creation of Verifiable Credentials, which are securely stored in the subject's wallet, commonly referred to as the holder.

## Methods of issuance

In our platform, we distinguish between two types of issuances, each fulfilling a distinct purpose:

### Direct issuance

:   This form of credential issuance allows issuing parties to sign a Verifiable Credential without requiring user interaction, consent, or binding commitment. In this case, the issued credential is returned to the issuer in the response and can be sent to the user directly.

    To use direct issuance in your integration, use the [Issue from Template](/reference/services/credential-service/#issue-credential-from-template) method. The returned credential can then be exchanged with the user using one of the methods described below.

    ``` mermaid
    sequenceDiagram
        autonumber
        actor Issuer
        participant API
        actor Holder
        Issuer->>API: Issue from Template
        API-->>Issuer: Verifiable Credential
        Issuer->>API: Send
        note over API: Credential is stored in the wallet<br/>owned by the specified email
        API-->Holder: Email notification
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
        Holder->>API: [Accept Offer]
        API->>API: Exchange credential offer
        note over API: Holder's wallet adds binding information<br/>and submits the proof to the Issuer's wallet<br/>for final issuance
        API-->>Holder: [Verifiable Credential]
    ```

## Credential exchange methods

Once you have created the Verifiable Credential (or Credential Offer), it should be shared with the user. There are few different ways to achieve this:

### Manually, using the Branded Studio

:   This method is the easiest and useful if you'd like to use the Branded Studio to manually issue a credential to the user. To accomplish this, log in to your studio (you can get the URL from the main Dashboard page) and go to Issue using the left-hand menu.
    Then select the template you'd like to use to issue a credential, and fill in the user's details, including the user's email. Once done, the credential will be sent to the user and they will recieve an email notification.
    !!! note ""

        Use this method to send yourself a credential and get some test data in your wallet.


### Programmatically, using Credential Handler API (CHAPI)

TODO

### Programmatically, using custom integration and Trinsic API

TODO
