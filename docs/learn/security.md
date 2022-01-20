# Trinsic's Security

## Overview

We've implemented a multi-factor authentication protocol to gate access to each identity wallet.

The executive summary is as follows:
> "Oberon allows endpoints to issue multi-factor capable tokens to consumers who can prove their validity without disclosing the tokens themselves and without requiring email, SMS, or authenticator apps. Endpoints only need to store a single public key and not any tokens. An attacker that breaks into the server doesn't have any password/token files to steal and only would see a public key."

Sign in
- Sign in from any device, and confirm your sign in request from another device

Info
- Get account information 

List Devices
- List all the devices that are currently authenticated

Revoke Device
- Revoke a device


## Zero-knowledge Security Architecture

Because the tokens are blinded, Trinsic does not know which identities are accessing which wallets.  

We call this zero knowledge because
- Each API request is blinded
- No private keys are stored on our servers. If a hacker breaks in, they will only find the public key
- Each API call is authenticated, regardless of where it's coming from, leading to a true zero trust architecture.
- verifies device identity and user identity. Logins and connections time out once established, forcing users to continuously re-verify
- Ensures each device is authorized in addition to each user
- Multi factor authentication by default

Trinsic supports networks of complex interactions between different services.

## New Account Registration

```mermaid

sequenceDiagram

    participant U as User
    participant A as API
    participant S as Cloud<br/>Services
    participant E as Email<br/>Provider
    
    U->>A: New Account :Email :Name

    activate A
    A->>S: Create Wallet
    activate S
    note over S: Generate "WalletId" and<br/>initialize storage<br/>provider
    S->>A: :WalletId
    deactivate S
    
    A->>A: Generate :DeviceId
    A->>S: Grant Access<br/>:DeviceId :WalletId

    activate S
    S->>S: Generate :Token
    S->>S: Blind Token :Code
    S->>E: Send :Code to :Email
    S->>A: :BlindedToken
    deactivate S

    A->>U: Response<br/>:BlindedToken :AccessData
    note right of U: :AccessData = { :DeviceId :WalletId }
    deactivate A

    U->>E: Check :Email for :Code
    activate U
    U->>U: Unblind :BlindedToken<br/>using :Code
    note over U: Optionally, blind token<br />using :PIN or<br/>:KeyChainSecret
    U->>U: Store :AccountProfile
    note over U: :AccountProfile = { :Token :AccessData }
    deactivate U

```


## Authenticated Requests

```mermaid

sequenceDiagram

    participant U as User
    participant A as API
    participant S as Cloud<br/>Services
    participant W as Wallet<br/>Provider

    note over U: Initiate request to<br/>wallet data
    activate U
    U->>U: Retrieve :WalletProfile
    U-->>U: Input :PIN
    note over U: Optional :PIN or<br/>:KeyChainSecret
    U->>U: Create API :Request<br/>and :RequestHash
    U->>U: Generate ZKP :Proof
    note over U: Using :WalletProfile and :Nonce
    note over U: :Nonce = { :Timestamp :RequestHash }
    U->>U: Add :Proof to<br/>:Authorization header
    U->>+A: Send Request
    deactivate U

    A->>A: Parse :Authorization header
    A->>A: Check HMAC

    A->>+S: Authenticate :Request
    S->>S: Check :Proof
    alt if invalid proof
        S-->>A: Unauthorized (Invalid Proof)
        A-->>U: Unauthorized
    end
    S->>S: Check access for :DeviceId<br/>to :WalletId
    S->>-A: :AuthenticationResponse

    alt if not authorized
        A-->>U: Unauthorized
    else if authorized
        note over A: Output claims [ :WalletId :DeviceId ]
        A->>+W: Get Data :WalletId :Request
        W->>-A: :WalletData
        A->>-U: :WalletData
    end
```
