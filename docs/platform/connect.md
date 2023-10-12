# Trinsic Connect

## What is Trinsic Connect?

*Overview*

Unleash the power of reusable ID verification. Say goodbye to repeated verification hassles. Verify once, use endlessly.

*Features*

1. One-and-Done Verification: Send users through our thorough document verification process just once.
1. Unlimited Reusability: Once verified, the user's credentials are ready to be reused anywhere, anytime.
1. Seamless Integration: Compatible with both web and mobile apps. Get up and running in minutes.
1. Brand-Friendly: Tailor the look and feel to match your brand's vibe. Keep the experience consistent.

## First-time document verification flow

This diagram describes the sequence of interactions during which the user submits their ID documents for verification and receives a resuable Verifiable Credential in their wallet.

```mermaid

sequenceDiagram
    autonumber
    actor U as User
    participant RP as Relying Party
    participant T as Trinsic
    participant A as Attestation Provider

    note over U: User can access RP's service<br/>via browser, mobile app, etc.
    U->>RP: Access service
    activate RP
    RP->>T: Create IDV session
    T-->>RP: Session Data
    note over RP, T: Session Data contains<br/>Session ID and Client Token
    RP->>U: Client Token
    deactivate RP

    activate U
    U->>T: Start Identity Document Verification
    activate T
    T-->U: Verify Phone Number
    T-->T: Create User Wallet
    T->>A: Redirect to IDV provider
    A-->>U: Request photo of documents
    A-->>U: Request selfie
    A->>A: Process user data
    A->>T: Issue reusable VC
    T->T: Store VC to User Wallet
    T-->U: Process completed.<br/>Ask user consent
    deactivate T
    U->>RP: Notify process completed
    RP->>T: Get results for Session ID
    T-->>RP: Return proof of VC
    deactivate U

```

## Returning user flow

This diagram describes the sequence of interactions when the user already has a reusable VC in their wallet and is asked to share it with the Relying Party.

```mermaid
sequenceDiagram
    autonumber
    actor U as User
    participant RP as Relying Party
    participant T as Trinsic
    participant A as Attestation Provider

    note over U: User can access RP's service<br/>via browser, mobile app, etc.
    U->>RP: Access service
    activate RP
    RP->>T: Create IDV session
    T-->>RP: Session Data
    note over RP, T: Session Data contains<br/>Session ID and Client Token
    RP->>U: Client Token
    deactivate RP
    activate U
    U->>T: Start Identity Document Verification
    activate T
    T-->U: Verify Phone Number
    T-->T: Search User Wallet
    note over T: Returning users already have<br/>reusable VC in their wallet
    T->>U: Ask consent to share reusable VC
    deactivate T
    U->>RP: Consent granted.<br/>Notify process completed
    RP->>T: Get results for Session ID
    T-->>RP: Return proof of VC
    deactivate U

```

## How to integrate?
