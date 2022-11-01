# Wallets

In Trinsic’s platform, identity wallets are secure, partitioned data stores scoped to a single holder, capable of storing and sharing credentials and proofs. Endless configurations of wallets exist (custodial, non-custodial, etc.) each with different trade-offs; Trinsic has designed a hybrid-cloud wallet system intended to strike the ideal balance between security and usability: 

- Cloud-based data store
- Edge-based authentication keys

For a deeper-dive into how hybrid-cloud wallets work, see our security overview. 

### How to use wallets in your app

When a user creates an account in your product, you will create a wallet for them. This wallet is tied to the user’s identity using either their email or phone number (for now)—after the user enters the code to prove control of their identifier and claim their wallet, you’ll be off to the races. 

The user will interact with and control their wallet through your application. From your application’s perspective, wallet storage should be treated in parallel with the database you use to manage user data. When users obtain credentials from inside or outside your ecosystem, those credentials will be inserted in the wallet. When users want to share credentials with verifiers, your product will need to obtain user consent before the data is shared.

All the participants in an ecosystem, not just holders, will technically have wallets behind them. Therefore any participant can issue, verify, and hold credentials to establish trust.