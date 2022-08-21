using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using MicrosoftOptions = Microsoft.Extensions.Options.Options;

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

    public TrinsicService(ITokenProvider tokenProvider, ServiceOptions options)
        : base(options, tokenProvider) {
    }

    internal TrinsicService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
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
                _account = new AccountService(TokenProvider, MicrosoftOptions.Create(Options));
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
                _credential = new CredentialService(TokenProvider, MicrosoftOptions.Create(Options));
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
                _template = new TemplateService(TokenProvider, MicrosoftOptions.Create(Options));
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
                _provider = new ProviderService(TokenProvider, MicrosoftOptions.Create(Options));
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
                _trustRegistry = new TrustRegistryService(TokenProvider, MicrosoftOptions.Create(Options));
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
                _wallet = new WalletService(TokenProvider, MicrosoftOptions.Create(Options));
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