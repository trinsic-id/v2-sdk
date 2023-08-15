# Authentication

In the Trinsic platform, authentication is a crucial aspect of providing secure and seamless access to your white label wallet. This guide will cover the different authentication options available and how to configure them. It will walk you through the process of configuring authentication methods such as email, phone number, and external identity providers in your Trinsic ecosystem.

<div style="position: relative; padding-bottom: 55.208333333333336%; height: 0;"><iframe src="https://www.loom.com/embed/45cb1417e14a4297a2682fe663164ca4?sid=76d2d29a-7d01-4278-8266-3c2a579e2a0e" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

## Email Authentication

By default, email authentication is the primary method of accessing your Connect applications. Users can log in using their email and corresponding credentials. To enable email authentication, no additional setup is required.

## Phone Number Authentication

Phone number authentication provides an alternative way for users to access your white label wallet and OIDC verification portal. To enable phone number authentication:

1. Navigate to **Settings > Authentication** in dashboard.
2. Enable **Login with SMS** as the authentication method and save changes. (Now, users will be prompted to provide their phone number during login.)
3. Access **Settings > Authentication > SMS Login** in the dashboard.
3. Provide your Twilio account SID, Twilio account auth token, and Twilio verify service SID.
4. Save the changes.

SMS authentication will now be available as a login option for your users.

### External Identity Provider

For more advanced authentication needs, Trinsic supports external identity providers. This option allows you to integrate third-party authentication services into your white label wallet and OIDC verification portal. While setting up an external identity provider involves more intricate steps, it offers enhanced customization and security.

Please note that setting up an external identity provider may require additional configuration and integration. Refer to our documentation or reach out to our support for detailed guidance on implementing this feature.

## Wallet Creation Policy

The wallet creation policy determines how wallets are created within your Trinsic ecosystem. There are two options:

1. **Unrestricted**: New wallets are created for any provided identity (email or phone number) that is not associated with an existing wallet. This offers a seamless experience for users, but it may lead to unnecessary wallet creation.
2. **Provider API Token Only**: Wallets can only be created using the provider API token, ensuring controlled wallet generation.

Choose the policy that aligns with your security and user experience preferences.

## Conclusion

Congratulations! You've learned how to configure and utilize various authentication options within the Trinsic platform. From email and phone number authentication to advanced options like external identity providers, you now have the tools to provide secure and customizable access to your ecosystem.

If you have any questions or need further assistance, don't hesitate to refer to our documentation or contact our support team.
