# Verifications

Creating [Verifiable Credentials](https://docs.trinsic.id/learn/concepts/credentials/) involves generating **cryptographic** proofs that can be used to verify the authenticity of the VC. Digital signatures are generated using the issuer’s private key and these are used to create the proofs. When a verifier receives a VC, they can use the issuer’s public key to verify the credential’s signature and ensure that it hasn’t been tampered with. This allows information to be shared in a secure and trustworthy way between parties.

Designing the way verifications will be done in your ecosystem is arguably the most important step in creating a successful IDtech product. Verifications are privacy-preserving proofs of data inside a VC. 

A verification is an abstraction provided by Trinsic that makes it easy to utilize W3C-conformant [Verifiable Presentations](https://www.w3.org/TR/vc-data-model/#presentations), [OpenID Connect](https://openid.net/specs/openid-connect-4-verifiable-presentations-1_0-08.html), zero-knowledge proofs, and other identity specifications without having to spend months becoming an expert or writing your own implementation. For more on the standards we use, see our Standards page.

## Zero-knowledge proofs

A zero-knowledge proof (ZKP) allows a user to prove some information is true without revealing the information itself. The classic example is proving you’re over 18 without revealing your birthdate. 

The most important application of zero-knowledge proofs today is the ability to perform selective disclosure on the contents of a verifiable credential. This is important for the obvious privacy reasons related to data minimization, but it’s also important for the less-obvious privacy reasons of obfuscating correlatable identifiers from verifiable presentations. Over time we will add the capability for providers to offer verifiers ZKP capabilities that allow computation on values, such as ‘*is `GPA` > 3.0’* or *‘does `home_address` contain “New York”’.*

Trinsic’s ZKP implementation is based on an extremely performant algorithm called BBS+ which is currently being standardized. To learn more, see here.
<!-- TODO: add link to the bbs+ algorithm -->

## Using verifications in your app

Instantly verifying data to access a product, service, or resource is the bread and butter of an IDtech product. It is the point value is realized. So designing a user-friendly method for verification is critical.

Verification policies

The first step is to understand the requirements for verification, according to your use case—verifying medical information will have much different constraints than verifying a library card. And authenticating medical information online differs from sharing that information in-person.

As a provider, you should design verification templates that enable verifiers to collect the data they need from a holder, but no more. This is an important part of the data minimization principles underpinning Trinsic’s infrastructure.

Most successful providers do significant product work to understand how users and verifiers want to interact to optimize their desired outcomes. Trinsic’s infrastructure is designed to enable this verification flexibility across various use cases.

## Adoption tools

The first adoption tool Trinsic provides for easy verifications is an OpenID Connect (OIDC) service to fit into the legacy systems and mental models that verifiers and consumers are already familiar with. To learn more about setting up your OIDC app, please see the following documentation.
<!-- TODO: add link to the documentation describing OIDC app setup -->