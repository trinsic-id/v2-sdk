# Welcome to Trinsic's Docs 👋

!!! info "Looking for our Legacy Platform's documentation?"
    You can access it at <a href="https://legacy.docs.trinsic.id/" target="_blank">legacy.docs.trinsic.id</a>

Trinsic is a cloud-native, web5-native infrastructure for building IDtech products across a variety of use
cases, industries, and geographies. Products built on Trinsic inherit features such as user-centricity,
interoperability, and decentralization out of the box. We strive to make these concepts easy to understand
and use.

This documentation is focused on helping you integrate digital identity in your product using Trinsic's
infrastructure.
Our platform exposes all service endpoints required to complete your integration in an easy to use
<a href="/web">SDK</a> that's available for most popular platforms.

## Key steps to your integration

Before we dive further into the details of your integration, let's go over the main aspects of your integration to help you
make the right decisions in setting up your IDtech architecture.

- [Issuance](#issuance-of-digital-credentials)
- [Verification](#verifications-of-digital-credentials-and-exchange-of-authentic-data)
- [Storage](#digital-wallets-and-storing-identity-data)

### Issuance of digital credentials

Our platform allows users to issue digital credentials, which are digital representations of their identity and qualifications.
These credentials can be used to prove the authenticity of a user's identity, educational achievements, professional certifications, and other types of qualifications.

Using our platform, organizations can create and issue digital credentials to their users, who can then share these credentials with others online.
The process is secure and user-friendly, and ensures that users have control over their own data.

### Verifications of digital credentials and exchange of authentic data

Our platform provides a robust verification system that enables users to verify digital credentials quickly and easily.
When a user receives a digital credential, they can use our platform to verify its authenticity, ensuring that the credential is valid and that the issuer is trustworthy.

We use advanced cryptographic techniques to ensure that the verification process is secure and tamper-proof.
This makes it easy for users to share their credentials with others online, while maintaining the privacy and security of their personal data.

### Digital wallets and storing identity data

Our platform is fully integrated with various digital wallets, including popular ones like Apple Wallet and Google Pay. This means that users can securely store their digital credentials in their preferred digital wallet, and access them whenever they need to.

Using our platform, users can easily link their digital wallet to their account, and seamlessly transfer their credentials from one device to another.
This makes it easy for users to manage their digital identities, and to share their credentials with others online.

Overall, our Digital Identity Platform provides a secure and user-friendly way for organizations and individuals to manage digital credentials and identities.
Whether you're an employer looking to verify the qualifications of your employees, or an individual looking to prove your identity online, our platform has everything you need to get started.

<div class="card-container">
    <div class="card">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
            width="1rem" height="1rem">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M15.59 14.37a6 6 0 01-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 006.16-12.12A14.98 14.98 0 009.631 8.41m5.96 5.96a14.926 14.926 0 01-5.841 2.58m-.119-8.54a6 6 0 00-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 00-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 01-2.448-2.448 14.9 14.9 0 01.06-.312m-2.24 2.39a4.493 4.493 0 00-1.757 4.306 4.493 4.493 0 004.306-1.758M16.5 9a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z" />
        </svg>
        <h4>CLI Tutorial</h4>
        <p>Dive into a sandbox CLI environment</p>
        <a href="/walkthroughs/vaccination" rel="noreferrer">
            Get started
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" width="1rem" height="1rem">
                <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
            </svg>
        </a>
    </div>
    <div class="card">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
            width="1rem" height="1rem">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M9 17.25v1.007a3 3 0 01-.879 2.122L7.5 21h9l-.621-.621A3 3 0 0115 18.257V17.25m6-12V15a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 15V5.25m18 0A2.25 2.25 0 0018.75 3H5.25A2.25 2.25 0 003 5.25m18 0V12a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 12V5.25" />
        </svg>
        <h4>Dashboard</h4>
        <p>Create your ecosystem and API key</p>
        <a href="https://dashboard.trinsic.cloud/" rel="noreferrer">
            Sign in
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" width="1rem" height="1rem">
                <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
            </svg>
        </a>
    </div>
    <div class="card">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
            width="1rem" height="1rem">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M12 6.042A8.967 8.967 0 006 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 016 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 016-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0018 18a8.967 8.967 0 00-6 2.292m0-14.25v14.25" />
        </svg>
        <h4>API reference</h4>
        <p>Explore our server- and client-side API libraries</p>
        <a href="/reference/" rel="noreferrer">
            View reference
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" width="1rem" height="1rem">
                <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
            </svg>
        </a>
    </div>
</div>

