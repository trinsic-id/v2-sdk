# What is Trinsic?

Trinsic is a hosting provider for identity wallets and an SDK for developers that want to interact with them.
You can use Trinsic to give your end-users identity wallets and then share, store, and verify data through them.

## Wallets
Identity Wallets are secure, partitioned data stores for information that needs to get verified. This normally is a person, but it can also be an organization or a device. 

You can use Trinsic's platform to invite end-users to create a cloud-hosted identity wallet that can be accessed on any device using multi-factor passwordless authentication. 

Once created, applications and organizations can issue data to the identity wallet. Other applications can request to verify information from the wallet. If the end-user accepts the request, a proof of the requested information will be created and sent to the requester. 

Using identity wallets, you can build powerful products that preserve your end-users' privacy without compromising on convenience.

[Wallet Service](../../reference/services/wallet-service/)
## Credentials & Proofs
Trinsic's wallets are built to represent verifiable data as credentials. This allows any information sent to the identity wallet to be easily verified using interoperable standards. Because we follow a standardized open data model, identity wallets can bridge software platforms, letting individuals use their data wherever they choose. 

To minimize the amount of information that is requested from identity wallets, a credential's attributes can be filtered to generate a proof of the credential with only the data required to fulfill a verifier's request.

[Credential Service](../../reference/services/credential-service/)
## Templates
Credential templates let you publish a credential format for others to follow. There are often more than one issuer of the same type of credential, and this allows issuers to reuse the same credential format and share the same attribute types. 

When data models can be reused, more interoperability can be achieved between different systems. This lets data that previously had to be manually entered via form or sent via custom API integration get automatically exchanged and verified without needing human interaction. 

[Template Service](../../reference/services/template-service/)

## Trust Registries
A trust registry is a way for a wallet to publish a list of other wallets that it trusts to issue and verifier credentials. 

This is useful when building trust without a centralized service or database. If you onboard wallets, it is likely that the wallet holders already have a connection with you. You can publish a list of issuers and verifiers that you've also vetted and onboarded and the wallet holders can reference this list before receiving or sharing their information with another wallet.

When verifying a credential, a verifier can cross-reference the issuer's identifier within the credential with a trust registry to ensure it was actually issued by an organization that they trust.

[Trust Registry Service](../../reference/services/trust-registry-service/)

## Ecosystems
When creating a product that uses identity wallets, it is useful to have the tools to onboard participants that want to either issue, store, or verify credentials. Trinsic Ecosystems is a set of tools built so you can invite participants to an ecosystem and configure their wallets for them. This makes it possible to quickly go live with a proof of concept or pilot without requiring your ecosystem participants to do any setup or integrations themselves.

[Provider Service](../../reference/services/provider-service/)
## Open Standards
Trinsic's technology is all based on open web standards. Our goal is to promote a future of applications where identity and personal data is independent from applications. To meet this end, we use decentralized identifiers that can be generated and resolved without needing a centralized database. We also follow the data model for verifiable credentials so that data sent by one application can be presented at another without requiring a specific vendor. 

[Learn More](../concepts/standards/)
## Security and Privacy
As a hosting provider of identity wallets, we've recognized the need for strong security and privacy since before we started building. 

Our identity wallets are secured using zero knowledge authentication. No private keys are stored or processed on our servers. They are all generated locally by our SDKs. We do this using a lightweight zero-knowledge proof protocol. Even if an adversary were to intercept a payload, they would not be able to reuse the token to gain additional access to our system.

[Learn More](./security.md)

