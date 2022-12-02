using Grpc.Core.Interceptors;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using MicrosoftOptions = Microsoft.Extensions.Options.Options;

namespace Trinsic;

/// <summary>
/// Trinsic Service
/// </summary>
public class TrinsicService : ServiceBase
{
    private AccessManagementService? _accessManagement;
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
    public AccessManagementService AccessManagement => _accessManagement ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Account Service functionality
    /// </summary>
    public AccountService Account => _account ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Credential Service functionality
    /// </summary>
    public CredentialService Credential => _credential ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Template Service functionality
    /// </summary>
    public TemplateService Template => _template ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Provider Service functionality
    /// </summary>
    public ProviderService Provider => _provider ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Trust Registry Service functionality
    /// </summary>
    public TrustRegistryService TrustRegistry => _trustRegistry ??= new(TokenProvider, Invoker);

    /// <summary>
    /// Exposes Wallet Service functionality
    /// </summary>
    public WalletService Wallet => _wallet ??= new(TokenProvider, Invoker);

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