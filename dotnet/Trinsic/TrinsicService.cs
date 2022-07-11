using System;
using System.Threading.Tasks;
using Google.Protobuf;
using Microsoft.Extensions.Options;
using Okapi.Security;
using Okapi.Security.V1;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;

namespace Trinsic;

/// <summary>
/// Trinsic Service
/// </summary>
public class TrinsicService : ServiceBase
{
    private AccountService? _account;
    private CredentialService? _credential;
    private TemplateService? _template;
    private ProviderService? _provider;
    private TrustRegistryService? _trustRegistry;
    private WalletService? _wallet;


    public TrinsicService(ServiceOptions options)
        : base(options) {
    }

    public TrinsicService() {
    }

    internal TrinsicService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
    }

    internal TrinsicService(ITokenProvider tokenProvider, ServiceOptions options)
        : base(options, tokenProvider) {
    }

    /// <summary>
    /// Exposes Account Service functionality
    /// </summary>
    public AccountService Account
    {
        get
        {
            if (_account == null)
            {
                _account = new AccountService(Options);
            }
            return _account;
        }
    }

    /// <summary>
    /// Exposes Credential Service functionality
    /// </summary>
    public CredentialService Credential
    {
        get
        {
            if (_credential == null)
            {
                _credential = new CredentialService(Options);
            }
            return _credential;
        }
    }

    /// <summary>
    /// Exposes Template Service functionality
    /// </summary>
    public TemplateService Template
    {
        get
        {
            if (_template == null)
            {
                _template = new TemplateService(Options);
            }
            return _template;
        }
    }

    /// <summary>
    /// Exposes Provider Service functionality
    /// </summary>
    public ProviderService Provider
    {
        get
        {
            if (_provider == null)
            {
                _provider = new ProviderService(Options);
            }
            return _provider;
        }
    }

    /// <summary>
    /// Exposes Trust Registry Service functionality
    /// </summary>
    public TrustRegistryService TrustRegistry
    {
        get
        {
            if (_trustRegistry == null)
            {
                _trustRegistry = new TrustRegistryService(Options);
            }
            return _trustRegistry;
        }
    }

    /// <summary>
    /// Exposes Wallet Service functionality
    /// </summary>
    public WalletService Wallet
    {
        get
        {
            if (_wallet == null)
            {
                _wallet = new WalletService(Options);
            }
            return _wallet;
        }
    }

    /// <summary>
    /// Sets the Auth Token of this instance's ServiceOptions, and returns the instance for chaining.
    /// </summary>
    /// <param name="authToken">The new auth token to use</param>
    /// <returns></returns>
    public TrinsicService SetAuthToken(string authToken) {
        this.Options.AuthToken = authToken;
        return this;
    }
}
